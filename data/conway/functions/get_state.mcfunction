scoreboard players set @s neighbors 0
tag @s remove conway_live
tag @s remove conway_dead

execute if block ~-1 ~-1 ~-1 minecraft:black_concrete run scoreboard players add @s neighbors 1
execute if block ~-1 ~-1 ~00 minecraft:black_concrete run scoreboard players add @s neighbors 1
execute if block ~-1 ~-1 ~01 minecraft:black_concrete run scoreboard players add @s neighbors 1
execute if block ~00 ~-1 ~-1 minecraft:black_concrete run scoreboard players add @s neighbors 1
execute if block ~00 ~-1 ~01 minecraft:black_concrete run scoreboard players add @s neighbors 1
execute if block ~01 ~-1 ~-1 minecraft:black_concrete run scoreboard players add @s neighbors 1
execute if block ~01 ~-1 ~00 minecraft:black_concrete run scoreboard players add @s neighbors 1
execute if block ~01 ~-1 ~01 minecraft:black_concrete run scoreboard players add @s neighbors 1

execute unless block ~0 ~-1 ~0 minecraft:black_concrete run tag @s add conway_dead
execute if block ~0 ~-1 ~0 minecraft:black_concrete run tag @s add conway_live

tag @s add conway_counted