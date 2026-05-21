#get cutscene info
execute if score timer cutscene matches 0 if score scene dialogue matches 1 run function gd:scenes/test_scene/camera_info

#move cutscene
function gd:cutscene/increment
execute if score fp_timer cutscene matches 0.. run scoreboard players remove fp_timer cutscene 1

#teleport player
execute if score start_cutscene gd matches 1 as @e[tag=camera] at @s facing entity @e[tag=focal_point] feet run tp @s ~ ~ ~ ~ ~
execute if score #pathloadertime cutscene matches 5.. as @a[tag=!admin] run spectate @e[tag=camera,limit=1] @s
execute if score start_cutscene gd matches 0 as @a run function gd:cutscene/reset

#countdown
execute if score timer cutscene matches 0.. run scoreboard players remove timer cutscene 1

#increment cutscene_path index and repeat
execute if score timer cutscene matches 0 run scoreboard players add segment cutscene 1

#pathloader time
scoreboard players add #pathloadertime cutscene 1