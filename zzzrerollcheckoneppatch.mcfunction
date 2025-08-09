execute as @e[tag=score,scores={reroll=1..,rcounta=1}] run execute if score @s rcountb >= @s rcounta run tellraw @a {"color":"green","text":"Reroll vote successful! Finding a new place for the border..."}
execute as @e[tag=score,scores={reroll=1..,rcounta=1}] run execute if score @s rcountb >= @s rcounta run execute as @a at @s run playsound minecraft:block.beacon.power_select master @a
execute as @e[tag=score,scores={reroll=1..,rcounta=1}] run execute if score @s rcountb >= @s rcounta run schedule function a:zzzreroll 1s
execute as @e[tag=score,scores={reroll=1..,rcounta=1}] run execute if score @s rcountb >= @s rcounta run tag @s remove r
execute as @e[tag=score,scores={reroll=1..,rcounta=1}] run execute if score @s rcountb >= @s rcounta run scoreboard players set @s reroll 0
execute as @e[tag=score,scores={reroll=1..,rcounta=1}] run execute if score @s rcountb >= @s rcounta run scoreboard players set @s rcountb 0