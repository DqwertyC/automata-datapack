setblock ~ ~-1 ~ minecraft:black_concrete

execute positioned ~-1 ~ ~-1 unless entity @e[tag=conway_new,distance=0..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["wolfram_l","wolfram_new","wolfram_new_new"]}
execute positioned ~00 ~ ~-1 unless entity @e[tag=conway_new,distance=0..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["wolfram_d","wolfram_new","wolfram_new_new"]}
execute positioned ~01 ~ ~-1 unless entity @e[tag=conway_new,distance=0..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["wolfram_r","wolfram_new","wolfram_new_new"]}

function wolfram:copy_tags
kill @s