#get audio info
execute if score timer dialogue matches 0 if score scene dialogue matches 1 run function gd:scenes/test_scene/audio_info

#countdown
execute unless score pause dialogue matches 1 if score timer dialogue matches 1.. run scoreboard players remove timer dialogue 1

#increment audio index and repeat
execute if score timer dialogue matches 0 run scoreboard players add segment dialogue 1