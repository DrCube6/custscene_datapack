#getting camera coordinates
execute store result score #init_camera_x cutscene run data get entity @e[tag=camera,limit=1] Pos[0] 100
execute store result score #init_camera_y cutscene run data get entity @e[tag=camera,limit=1] Pos[1] 100
execute store result score #init_camera_z cutscene run data get entity @e[tag=camera,limit=1] Pos[2] 100

execute store result score #final_camera_x cutscene run data get entity @e[tag=camera_destination,limit=1] Pos[0] 100
execute store result score #final_camera_y cutscene run data get entity @e[tag=camera_destination,limit=1] Pos[1] 100
execute store result score #final_camera_z cutscene run data get entity @e[tag=camera_destination,limit=1] Pos[2] 100

execute store result score #init_fp_x cutscene run data get entity @e[tag=focal_point,limit=1] Pos[0] 100
execute store result score #init_fp_y cutscene run data get entity @e[tag=focal_point,limit=1] Pos[1] 100
execute store result score #init_fp_z cutscene run data get entity @e[tag=focal_point,limit=1] Pos[2] 100

execute store result score #final_fp_x cutscene run data get entity @e[tag=focal_point_destination,limit=1] Pos[0] 100
execute store result score #final_fp_y cutscene run data get entity @e[tag=focal_point_destination,limit=1] Pos[1] 100
execute store result score #final_fp_z cutscene run data get entity @e[tag=focal_point_destination,limit=1] Pos[2] 100


#calculate multiplication increments
scoreboard players operation camera_comp_x cutscene = #final_camera_x cutscene
scoreboard players operation camera_comp_y cutscene = #final_camera_y cutscene
scoreboard players operation camera_comp_z cutscene = #final_camera_z cutscene
scoreboard players operation camera_comp_x cutscene -= #init_camera_x cutscene
scoreboard players operation camera_comp_y cutscene -= #init_camera_y cutscene
scoreboard players operation camera_comp_z cutscene -= #init_camera_z cutscene

scoreboard players operation fp_comp_x cutscene = #final_fp_x cutscene
scoreboard players operation fp_comp_y cutscene = #final_fp_y cutscene
scoreboard players operation fp_comp_z cutscene = #final_fp_z cutscene
scoreboard players operation fp_comp_x cutscene -= #init_fp_x cutscene
scoreboard players operation fp_comp_y cutscene -= #init_fp_y cutscene
scoreboard players operation fp_comp_z cutscene -= #init_fp_z cutscene

#calculate smoothing function
scoreboard players operation #mapped_time_value cutscene = fp_timer cutscene
scoreboard players operation #mapped_time_value cutscene *= #100 cutscene
scoreboard players operation #mapped_time_value cutscene /= #fp_tot_time cutscene

#((x-50)^2)/100
scoreboard players operation #mapped_time_value cutscene -= #50 cutscene
scoreboard players operation #mapped_time_value cutscene *= #mapped_time_value cutscene
scoreboard players operation #mapped_time_value cutscene /= #100 cutscene
#-6(x)+150
scoreboard players operation #mapped_time_value cutscene *= #-6 cutscene
scoreboard players operation #mapped_time_value cutscene += #150 cutscene

#div by time value
scoreboard players operation camera_comp_x cutscene /= timer cutscene
scoreboard players operation camera_comp_y cutscene /= timer cutscene
scoreboard players operation camera_comp_z cutscene /= timer cutscene

scoreboard players operation fp_comp_x cutscene /= fp_timer cutscene
scoreboard players operation fp_comp_y cutscene /= fp_timer cutscene
scoreboard players operation fp_comp_z cutscene /= fp_timer cutscene

#multiple smoothing value to fp_comp
scoreboard players operation fp_comp_x cutscene *= #mapped_time_value cutscene
scoreboard players operation fp_comp_y cutscene *= #mapped_time_value cutscene
scoreboard players operation fp_comp_z cutscene *= #mapped_time_value cutscene
scoreboard players operation fp_comp_x cutscene /= #100 cutscene
scoreboard players operation fp_comp_y cutscene /= #100 cutscene
scoreboard players operation fp_comp_z cutscene /= #100 cutscene

#add to init coords
scoreboard players operation #init_camera_x cutscene += camera_comp_x cutscene
scoreboard players operation #init_camera_y cutscene += camera_comp_y cutscene
scoreboard players operation #init_camera_z cutscene += camera_comp_z cutscene

scoreboard players operation #init_fp_x cutscene += fp_comp_x cutscene
scoreboard players operation #init_fp_y cutscene += fp_comp_y cutscene
scoreboard players operation #init_fp_z cutscene += fp_comp_z cutscene

#store back into init point
execute store result entity @e[tag=camera,limit=1] Pos[0] double 0.01 run scoreboard players get #init_camera_x cutscene
execute store result entity @e[tag=camera,limit=1] Pos[1] double 0.01 run scoreboard players get #init_camera_y cutscene
execute store result entity @e[tag=camera,limit=1] Pos[2] double 0.01 run scoreboard players get #init_camera_z cutscene

execute store result entity @e[tag=focal_point,limit=1] Pos[0] double 0.01 run scoreboard players get #init_fp_x cutscene
execute store result entity @e[tag=focal_point,limit=1] Pos[1] double 0.01 run scoreboard players get #init_fp_y cutscene
execute store result entity @e[tag=focal_point,limit=1] Pos[2] double 0.01 run scoreboard players get #init_fp_z cutscene