execute positioned ~-1 ~ ~-1 unless block ~ ~-1 ~ minecraft:black_concrete unless entity @e[type=armor_stand,tag=conway_counter,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["conway_counter","conway_counted","conway_updated"]}
execute positioned ~-1 ~ ~00 unless block ~ ~-1 ~ minecraft:black_concrete unless entity @e[type=armor_stand,tag=conway_counter,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["conway_counter","conway_counted","conway_updated"]} 
execute positioned ~-1 ~ ~01 unless block ~ ~-1 ~ minecraft:black_concrete unless entity @e[type=armor_stand,tag=conway_counter,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["conway_counter","conway_counted","conway_updated"]} 
execute positioned ~00 ~ ~-1 unless block ~ ~-1 ~ minecraft:black_concrete unless entity @e[type=armor_stand,tag=conway_counter,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["conway_counter","conway_counted","conway_updated"]} 
execute positioned ~00 ~ ~01 unless block ~ ~-1 ~ minecraft:black_concrete unless entity @e[type=armor_stand,tag=conway_counter,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["conway_counter","conway_counted","conway_updated"]} 
execute positioned ~01 ~ ~-1 unless block ~ ~-1 ~ minecraft:black_concrete unless entity @e[type=armor_stand,tag=conway_counter,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["conway_counter","conway_counted","conway_updated"]} 
execute positioned ~01 ~ ~00 unless block ~ ~-1 ~ minecraft:black_concrete unless entity @e[type=armor_stand,tag=conway_counter,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["conway_counter","conway_counted","conway_updated"]} 
execute positioned ~01 ~ ~01 unless block ~ ~-1 ~ minecraft:black_concrete unless entity @e[type=armor_stand,tag=conway_counter,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["conway_counter","conway_counted","conway_updated"]} 

execute positioned ~-1 ~ ~-1 unless block ~ ~-1 ~ minecraft:black_concrete run clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-1 ~
execute positioned ~-1 ~ ~00 unless block ~ ~-1 ~ minecraft:black_concrete run clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-1 ~
execute positioned ~-1 ~ ~01 unless block ~ ~-1 ~ minecraft:black_concrete run clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-1 ~
execute positioned ~00 ~ ~-1 unless block ~ ~-1 ~ minecraft:black_concrete run clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-1 ~
execute positioned ~00 ~ ~01 unless block ~ ~-1 ~ minecraft:black_concrete run clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-1 ~
execute positioned ~01 ~ ~-1 unless block ~ ~-1 ~ minecraft:black_concrete run clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-1 ~
execute positioned ~01 ~ ~00 unless block ~ ~-1 ~ minecraft:black_concrete run clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-1 ~
execute positioned ~01 ~ ~01 unless block ~ ~-1 ~ minecraft:black_concrete run clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-1 ~

setblock ~ ~-1 ~ minecraft:black_concrete