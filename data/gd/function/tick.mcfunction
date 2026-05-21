#loader control
execute if score start_scene gd matches 1 run function gd:loaders/dialogue
execute if score start_cutscene gd matches 1 run function gd:loaders/cutscene

#debug
execute if score debug gd matches 0 run scoreboard objectives setdisplay sidebar
execute if score debug gd matches 1 run scoreboard objectives setdisplay sidebar debug
scoreboard players operation dialogue_timer debug = timer dialogue
scoreboard players operation cutscene_timer debug = timer cutscene
execute if score debug gd matches 1 at @e[tag=camera_destination] run particle dust{color:[1, 0, 0],scale:2.0} ~ ~ ~ 0.1 0.1 0.1 0.1 1
execute if score debug gd matches 1 at @e[tag=focal_point] run particle dust{color:[0, 1, 1],scale:2.0} ~ ~ ~ 0.1 0.1 0.1 0.1 1
execute if score debug gd matches 1 at @e[tag=focal_point_destination] run particle dust{color:[1, 0, 1],scale:2.0} ~ ~ ~ 0.1 0.1 0.1 0.1 1