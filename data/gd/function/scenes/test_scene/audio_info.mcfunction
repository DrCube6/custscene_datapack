#load audio based on which index is selected

#fade in
#execute if score segment dialogue matches 1 run title @a times 1s 2s 1s
#execute if score segment dialogue matches 1 run title @a title {"text":"\uE000"}

#play audio
#execute if score segment dialogue matches 1 at @a run playsound scenes.test.1 voice @a ~ ~ ~ 1
#execute if score segment dialogue matches 1 if score enable subtitle matches 1 run tellraw @a [{"text":"DURUM: ","color": "blue"},{"text":"Hello", "color": "white"}]

#timer
#execute if score segment dialogue matches 1 run scoreboard players set timer dialogue 40

#stop audio
#execute if score segment dialogue matches 1 run scoreboard players set pause dialogue 1

#inhibit transition
#execute if score segment dialogue matches 1 run scoreboard players set inhibit_transition dialogue 1

#change music
#execute if score segment dialogue matches 1 run scoreboard players set track music 1
#execute if score segment dialogue matches 1 run scoreboard players set segment music 0

#after every instance
#execute if score segment dialogue matches 1 run return 0

#start test scene
execute if score segment dialogue matches 1 run say running cam test
execute if score segment dialogue matches 1 run scoreboard players set timer dialogue 200
execute if score segment dialogue matches 1 run return 0

#end
scoreboard players set start_scene gd 0