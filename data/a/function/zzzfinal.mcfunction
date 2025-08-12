gamemode spectator @a
scoreboard players reset @e reroll
scoreboard players reset @e score
scoreboard players reset @e round
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~

tellraw @a [{"color":"light_purple","text":"You have completed 45 unique death messages in "},{"score":{"name":"@e[tag=score,limit=1]","objective":"hour"}},{"text":" hour(s), "},{"score":{"name":"@e[tag=score,limit=1]","objective":"min"}},{"text":" minute(s), and "},{"score":{"name":"@e[tag=score,limit=1]","objective":"sec"}},{"text":" second(s)! Congratulations!"}]
tellraw @a {"color":"light_purple","text":"The number of unique deaths each player got is shown to the right!"}
tellraw @a {"text":""}
tellraw @a {"color":"light_purple","text":"To start another game, first run /reload and run /function a:start again!"}
scoreboard objectives setdisplay sidebar score