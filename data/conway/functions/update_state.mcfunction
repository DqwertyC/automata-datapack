execute if entity @s[tag=conway_dead,scores={neighbors=3}] run function conway:place_new
execute if entity @s[tag=conway_live,scores={neighbors=..1}] run clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-1 ~
execute if entity @s[tag=conway_live,scores={neighbors=4..}] run clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-1 ~
tag @s remove conway_dead
tag @s remove conway_live
tag @s add conway_updated