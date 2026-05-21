#objectives
scoreboard objectives add gd dummy

#loaders
scoreboard objectives add dialogue dummy
scoreboard objectives add cutscene dummy
scoreboard objectives add debug dummy
scoreboard objectives modify debug displayname {"text": "Debug","bold":true,"color":"gold"}

#dialogue variables
scoreboard players set timer dialogue 0
scoreboard players set scene dialogue 0
scoreboard players set pause dialogue 0
scoreboard players set segment dialogue 1

#cutscene variables
scoreboard players set timer cutscene 0
scoreboard players set fp_timer cutscene 0
scoreboard players set segment cutscene 0
scoreboard players set #pathloadertime cutscene 0
scoreboard players set #-6 cutscene -6
scoreboard players set #50 cutscene 50
scoreboard players set #100 cutscene 100
scoreboard players set #150 cutscene 150

#scene variables
scoreboard players set start_scene gd 0
scoreboard players set start_cutscene gd 0

#reset
execute unless score debug gd = debug gd run scoreboard players set debug gd 0
function gd:cutscene/reset