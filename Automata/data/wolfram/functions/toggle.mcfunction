execute if block ~ ~-1 ~ minecraft:black_concrete run tag @s add conway_toggle_off
execute unless entity @s[tag=conway_toggle_off] at @s run function conway:place_new
execute if entity @s[tag=conway_toggle_off] run clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-1 ~
tag @e[tag=conway_counter,distance=..2] remove conway_counted

execute if entity @e[tag=conway_counter,tag=!conway_toggle,distance=..0.1] run kill @s
tag @s remove conway_toggle_off
tag @s remove conway_toggle