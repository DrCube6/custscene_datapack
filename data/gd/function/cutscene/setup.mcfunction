#count
execute store result score #cam_entities cutscene run execute if entity @e[tag=cam]

#kill other camera entities
execute unless score #cam_entities cutscene matches 4 run kill @e[tag=cam]

#camera entities
execute unless score #cam_entities cutscene matches 4 run summon armor_stand ^ ^1 ^-1 {Tags:["camera","cam"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b}
execute unless score #cam_entities cutscene matches 4 run summon marker ~ ~ ~ {Tags:["camera_destination","cam"],NoGravity:1b}
execute unless score #cam_entities cutscene matches 4 run summon marker ^ ^1 ^3 {Tags:["focal_point","cam"],NoGravity:1b}
execute unless score #cam_entities cutscene matches 4 run summon marker ^ ^1 ^3 {Tags:["focal_point_destination","cam"],NoGravity:1b}