#create camera information to drive cutscene loader

## CAMERA POS
execute if score segment cutscene matches 1 run tp @e[tag=camera] -3 56 -1
execute if score segment cutscene matches 1 run tp @e[tag=camera_destination] -3 56 5
execute if score segment cutscene matches 1 run tp @e[tag=focal_point] -3 56 14
execute if score segment cutscene matches 1 run tp @e[tag=focal_point_destination] -3 56 14
## TIME SETTINGS
execute if score segment cutscene matches 1 run scoreboard players set timer cutscene 40
execute if score segment cutscene matches 1 run scoreboard players set fp_timer cutscene 20
## SETUP
execute if score segment cutscene matches 1 run scoreboard players operation #fp_tot_time cutscene = fp_timer cutscene
execute if score segment cutscene matches 1 run return 0

#cam pos 2
execute if score segment cutscene matches 2 run tp @e[tag=camera] -3 56 5
execute if score segment cutscene matches 2 run tp @e[tag=camera_destination] -3 56 11
execute if score segment cutscene matches 2 run tp @e[tag=focal_point] -3 56 14
execute if score segment cutscene matches 2 run tp @e[tag=focal_point_destination] 2 56 14
execute if score segment cutscene matches 2 run scoreboard players set timer cutscene 40
execute if score segment cutscene matches 2 run scoreboard players set fp_timer cutscene 20
execute if score segment cutscene matches 2 run scoreboard players operation #fp_tot_time cutscene = fp_timer cutscene
execute if score segment cutscene matches 2 run return 0

#cam pos 3
execute if score segment cutscene matches 3 run tp @e[tag=camera] -3 56 11
execute if score segment cutscene matches 3 run tp @e[tag=camera_destination] -3 56 17
execute if score segment cutscene matches 3 run tp @e[tag=focal_point] 2 56 14
execute if score segment cutscene matches 3 run tp @e[tag=focal_point_destination] -8 56 26
execute if score segment cutscene matches 3 run scoreboard players set timer cutscene 40
execute if score segment cutscene matches 3 run scoreboard players set fp_timer cutscene 40
execute if score segment cutscene matches 3 run scoreboard players operation #fp_tot_time cutscene = fp_timer cutscene
execute if score segment cutscene matches 3 run return 0

#cam pos 4
execute if score segment cutscene matches 4 run tp @e[tag=camera] -3 56 17
execute if score segment cutscene matches 4 run tp @e[tag=camera_destination] -3 56 23
execute if score segment cutscene matches 4 run tp @e[tag=focal_point] -8 56 26
execute if score segment cutscene matches 4 run tp @e[tag=focal_point_destination] -8 56 26
execute if score segment cutscene matches 4 run scoreboard players set timer cutscene 40
execute if score segment cutscene matches 4 run scoreboard players set fp_timer cutscene 20
execute if score segment cutscene matches 4 run scoreboard players operation #fp_tot_time cutscene = fp_timer cutscene
execute if score segment cutscene matches 4 run return 0

#cam pos 5
execute if score segment cutscene matches 5 run tp @e[tag=camera] -3 56 23
execute if score segment cutscene matches 5 run tp @e[tag=camera_destination] -3 56 29
execute if score segment cutscene matches 5 run tp @e[tag=focal_point] -8 56 26
execute if score segment cutscene matches 5 run tp @e[tag=focal_point_destination] -3 56 33
execute if score segment cutscene matches 5 run scoreboard players set timer cutscene 40
execute if score segment cutscene matches 5 run scoreboard players set fp_timer cutscene 20
execute if score segment cutscene matches 5 run scoreboard players operation #fp_tot_time cutscene = fp_timer cutscene
execute if score segment cutscene matches 5 run return 0


#end
scoreboard players set #pathloadertime cutscene 0
scoreboard players set start_cutscene gd 0