scoreboard objectives add wolfram_rule trigger
scoreboard objectives add rule_to_tags dummy
scoreboard objectives add rule_valid dummy
scoreboard objectives add rule_modulo dummy

scoreboard players set @a wolfram_rule -1
scoreboard players set Constants rule_modulo 2

forceload add 0 0
setblock 0 0 0 minecraft:yellow_shulker_box

scoreboard players enable @a wolfram_rule