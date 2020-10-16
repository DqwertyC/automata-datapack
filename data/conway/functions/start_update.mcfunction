execute as @e[tag=conway_counted,tag=conway_dead] at @s run clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-1 ~
data merge storage minecraft:state {update_started:1b,update_finished:0b}
scoreboard players set Counter tick_counter 0
tag @e remove conway_updated
