#Put a limit here to limit the number of new entities appearing at once
tag @e[tag=init_new,sort=nearest,limit=128] add init_active
tag @e[tag=init_active] remove init_new

execute as @e[tag=init_active] at @s unless block ~ ~-1 ~ #conway:init run kill @s

execute as @e[tag=init_active,tag=init_nn] at @s run summon minecraft:armor_stand ~00 ~ ~-1 {Small:1b,Invisible:1b,Marker:1b,Tags:["init_new","init_nn"]}
execute as @e[tag=init_active,tag=init_ne] at @s run summon minecraft:armor_stand ~01 ~ ~-1 {Small:1b,Invisible:1b,Marker:1b,Tags:["init_new","init_nn","init_ne","init_ee"]}
execute as @e[tag=init_active,tag=init_ee] at @s run summon minecraft:armor_stand ~01 ~ ~00 {Small:1b,Invisible:1b,Marker:1b,Tags:["init_new","init_ee"]}
execute as @e[tag=init_active,tag=init_se] at @s run summon minecraft:armor_stand ~01 ~ ~01 {Small:1b,Invisible:1b,Marker:1b,Tags:["init_new","init_ss","init_se","init_ee"]}

execute as @e[tag=init_active,tag=init_ss] at @s run summon minecraft:armor_stand ~00 ~ ~01 {Small:1b,Invisible:1b,Marker:1b,Tags:["init_new","init_ss"]}
execute as @e[tag=init_active,tag=init_sw] at @s run summon minecraft:armor_stand ~-1 ~ ~01 {Small:1b,Invisible:1b,Marker:1b,Tags:["init_new","init_ss","init_sw","init_ww"]}
execute as @e[tag=init_active,tag=init_ww] at @s run summon minecraft:armor_stand ~-1 ~ ~00 {Small:1b,Invisible:1b,Marker:1b,Tags:["init_new","init_ww"]}
execute as @e[tag=init_active,tag=init_nw] at @s run summon minecraft:armor_stand ~-1 ~ ~-1 {Small:1b,Invisible:1b,Marker:1b,Tags:["init_new","init_nn","init_nw","init_ww"]}

tag @e[tag=init_active] add conway_counter
tag @e[tag=init_active] add conway_updated

tag @e[tag=conway_counter] remove init_nn
tag @e[tag=conway_counter] remove init_ne
tag @e[tag=conway_counter] remove init_ee
tag @e[tag=conway_counter] remove init_se
tag @e[tag=conway_counter] remove init_ss
tag @e[tag=conway_counter] remove init_sw
tag @e[tag=conway_counter] remove init_ww
tag @e[tag=conway_counter] remove init_nw

tag @e remove init_active