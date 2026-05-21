## SCENE ##
scoreboard players set scene dialogue 1
scoreboard players set pause dialogue 0
scoreboard players set timer dialogue 0
scoreboard players set segment dialogue 1

## CAMERA ##
gamemode spectator @a
scoreboard players set timer cutscene 0
scoreboard players set segment cutscene 1

#start scene
execute at @p run function gd:cutscene/setup
scoreboard players set start_scene gd 1
scoreboard players set start_cutscene gd 1