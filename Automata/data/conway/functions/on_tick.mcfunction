# Handle the potions that toggle the simulation
execute if entity @e[type=potion,nbt={Item:{tag:{ConwayStep:1b}}}] unless data storage minecraft:state {update_started:1b,update_finished:0b} run function conway:start_update
execute if entity @e[type=potion,nbt={Item:{tag:{ConwayStart:1b}}}] run data merge storage minecraft:state {simulation_running:1b}
execute if entity @e[type=potion,nbt={Item:{tag:{ConwayStop:1b}}}] run data merge storage minecraft:state {simulation_running:0b}
execute if entity @e[type=potion,nbt={Item:{tag:{ConwayStop:1b}}}] run scoreboard players set Counter tick_counter 0

execute if entity @e[type=potion,nbt={Item:{tag:{ConwayFast:1b}}}] run scoreboard players operation Counter timer_current /= Counter timer_scale
execute if entity @e[type=potion,nbt={Item:{tag:{ConwaySlow:1b}}}] run scoreboard players operation Counter timer_current *= Counter timer_scale

execute if score Counter timer_current > Counter timer_max run scoreboard players operation Counter timer_current = Counter timer_max
execute if score Counter timer_current < Counter timer_min run scoreboard players operation Counter timer_current = Counter timer_min

kill @e[type=potion,nbt={Item:{tag:{ConwayStep:1b}}}]
kill @e[type=potion,nbt={Item:{tag:{ConwayStart:1b}}}]
kill @e[type=potion,nbt={Item:{tag:{ConwayStop:1b}}}]
kill @e[type=potion,nbt={Item:{tag:{ConwayFast:1b}}}]
kill @e[type=potion,nbt={Item:{tag:{ConwaySlow:1b}}}]

# Handle toggling blocks on and off
execute as @e[tag=conway_toggle] at @s run function conway:toggle

# Get the state for any armor stands that haven't been checked since last tick
# Can be limited safely in the target selector
execute as @e[tag=conway_counter,tag=!conway_counted,limit=4096] at @s run function conway:get_state
execute unless data storage minecraft:state {update_started:1b,update_finished:0b} as @e[tag=conway_counted,tag=conway_dead] at @s run clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-1 ~

# Dispose of useless armor stands
kill @e[tag=conway_counted,tag=conway_dead,scores={neighbors=0}]

# Update the blocks around armor stands as needed
execute if data storage minecraft:state {update_started:1b,update_finished:0b} unless entity @e[tag=conway_counter,tag=!conway_counted] as @e[tag=conway_counted,tag=!conway_updated,limit=4096] at @s run function conway:update_state
execute if data storage minecraft:state {update_started:1b,update_finished:0b} unless entity @e[tag=conway_counted,tag=!conway_updated] run function conway:finish_update

# Increment the tick counter to see if we need to run a simulation step
execute if data storage minecraft:state {simulation_running:1b} run scoreboard players add Counter tick_counter 1
execute if data storage minecraft:state {update_finished:1b,simulation_running:1b} if score Counter tick_counter >= Counter timer_current run function conway:start_update 