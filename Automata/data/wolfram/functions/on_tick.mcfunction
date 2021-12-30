execute if entity @e[type=potion,nbt={Item:{tag:{WolframStep:1b}}}] unless entity @e[tag=wolfram_active] run function wolfram:update 
execute if entity @e[type=potion,nbt={Item:{tag:{WolframStart:1b}}}] run data modify storage wolfram:state Running set value 1b
execute if entity @e[type=potion,nbt={Item:{tag:{WolframStop:1b}}}] run data modify storage wolfram:state Running set value 0b

kill @e[type=potion,nbt={Item:{tag:{WolframStep:1b}}}]
kill @e[type=potion,nbt={Item:{tag:{WolframStart:1b}}}]
kill @e[type=potion,nbt={Item:{tag:{WolframStop:1b}}}]

# Check for anyone who has requested a new marker
execute as @a[scores={wolfram_rule=0..255}] run scoreboard players operation @s rule_valid = @s wolfram_rule
execute as @a[scores={wolfram_rule=0..255}] run scoreboard players operation @s rule_valid %= Constants rule_modulo
tell @a[scores={wolfram_rule=0..255,rule_valid=1}] Only even numbered rules enabled!
execute as @a[scores={wolfram_rule=0..255,rule_valid=0}] run function wolfram:give_markers
scoreboard players set @a wolfram_rule -1
scoreboard players enable @a wolfram_rule

# Set any new "starters" to be active
execute as @e[tag=wolfram_starter] at @s run function wolfram:place_starter

# Updates
execute as @e[tag=wolfram_active,limit=128] at @s run function wolfram:update_stand
execute if data storage wolfram:state {Running:1b} unless entity @e[tag=wolfram_active] run function wolfram:update
