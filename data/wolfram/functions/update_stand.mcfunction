execute if entity @s[tag=wolfram_lll] if block ~1 ~-1 ~1 minecraft:black_concrete if block ~ ~-1 ~1 minecraft:black_concrete if block ~-1 ~-1 ~1 minecraft:black_concrete run setblock ~ ~-1 ~ minecraft:black_concrete
execute if entity @s[tag=wolfram_lld] if block ~1 ~-1 ~1 minecraft:black_concrete if block ~ ~-1 ~1 minecraft:black_concrete unless block ~-1 ~-1 ~1 minecraft:black_concrete run setblock ~ ~-1 ~ minecraft:black_concrete
execute if entity @s[tag=wolfram_ldl] if block ~1 ~-1 ~1 minecraft:black_concrete unless block ~ ~-1 ~1 minecraft:black_concrete if block ~-1 ~-1 ~1 minecraft:black_concrete run setblock ~ ~-1 ~ minecraft:black_concrete
execute if entity @s[tag=wolfram_ldd] if block ~1 ~-1 ~1 minecraft:black_concrete unless block ~ ~-1 ~1 minecraft:black_concrete unless block ~-1 ~-1 ~1 minecraft:black_concrete run setblock ~ ~-1 ~ minecraft:black_concrete
execute if entity @s[tag=wolfram_dll] unless block ~1 ~-1 ~1 minecraft:black_concrete if block ~ ~-1 ~1 minecraft:black_concrete if block ~-1 ~-1 ~1 minecraft:black_concrete run setblock ~ ~-1 ~ minecraft:black_concrete
execute if entity @s[tag=wolfram_dld] unless block ~1 ~-1 ~1 minecraft:black_concrete if block ~ ~-1 ~1 minecraft:black_concrete unless block ~-1 ~-1 ~1 minecraft:black_concrete run setblock ~ ~-1 ~ minecraft:black_concrete
execute if entity @s[tag=wolfram_ddl] unless block ~1 ~-1 ~1 minecraft:black_concrete unless block ~ ~-1 ~1 minecraft:black_concrete if block ~-1 ~-1 ~1 minecraft:black_concrete run setblock ~ ~-1 ~ minecraft:black_concrete
execute if entity @s[tag=wolfram_ddd] unless block ~1 ~-1 ~1 minecraft:black_concrete unless block ~ ~-1 ~1 minecraft:black_concrete unless block ~-1 ~-1 ~1 minecraft:black_concrete run setblock ~ ~-1 ~ minecraft:black_concrete

execute if entity @s[tag=wolfram_l] positioned ~-1 ~ ~-1 unless entity @e[tag=wolfram_new,distance=0..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["wolfram_l","wolfram_new","wolfram_new_new"]}
execute if entity @s[tag=wolfram_l] positioned ~00 ~ ~-1 unless entity @e[tag=wolfram_new,distance=0..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["wolfram_d","wolfram_new","wolfram_new_new"]}
execute if entity @s[tag=wolfram_d] positioned ~00 ~ ~-1 unless entity @e[tag=wolfram_new,distance=0..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["wolfram_d","wolfram_new","wolfram_new_new"]}
execute if entity @s[tag=wolfram_r] positioned ~00 ~ ~-1 unless entity @e[tag=wolfram_new,distance=0..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["wolfram_d","wolfram_new","wolfram_new_new"]}
execute if entity @s[tag=wolfram_r] positioned ~01 ~ ~-1 unless entity @e[tag=wolfram_new,distance=0..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["wolfram_r","wolfram_new","wolfram_new_new"]}

function wolfram:copy_tags
kill @s