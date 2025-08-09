execute as @e[tag=score,scores={reroll=1..}] run execute as @a[scores={reroll=1..},tag=!r] run scoreboard players add @e[tag=score,scores={reroll=1..}] rcountb 1
execute as @e[tag=score,scores={reroll=1..}] run execute as @a[scores={reroll=1..},tag=!r] run execute as @a at @s run playsound minecraft:block.note_block.bit master @a
execute as @e[tag=score,scores={reroll=1..}] run execute as @a[scores={reroll=1..},tag=!r] run tellraw @a [{"color":"yellow","bold":true,"selector":"@a[scores={reroll=1..},limit=1]"},{"bold":false,"text":" has agreed to the reroll ("},{"bold":false,"score":{"name":"@e[limit=1,tag=score]","objective":"rcountb"}},{"text":"/","bold":false},{"bold":false,"score":{"name":"@e[limit=1,tag=score]","objective":"rcounta"}},{"bold":false,"text":")."}]
execute as @e[tag=score,scores={reroll=1..}] run tellraw @a[scores={reroll=1..},tag=r] {"text":"You have already voted for the reroll!","color":"dark_red"}

execute as @a[scores={reroll=1..},tag=!r] run execute as @e[tag=score,scores={reroll=1..}] run execute if score @s rcountb >= @s rcounta run tellraw @a {"color":"green","text":"Reroll vote successful! Finding a new place for the border..."}
execute as @a[scores={reroll=1..},tag=!r] run execute as @e[tag=score,scores={reroll=1..}] run execute if score @s rcountb >= @s rcounta run execute as @a at @s run playsound minecraft:block.beacon.power_select master @a
execute as @a[scores={reroll=1..},tag=!r] run execute as @e[tag=score,scores={reroll=1..}] run execute if score @s rcountb >= @s rcounta run schedule function a:zzzreroll 1s
execute as @a[scores={reroll=1..},tag=!r] run execute as @e[tag=score,scores={reroll=1..}] run execute if score @s rcountb >= @s rcounta run tag @s remove r
execute as @a[scores={reroll=1..},tag=!r] run execute as @e[tag=score,scores={reroll=1..}] run execute if score @s rcountb >= @s rcounta run scoreboard players set @s reroll 0
execute as @a[scores={reroll=1..},tag=!r] run execute as @e[tag=score,scores={reroll=1..}] run execute if score @s rcountb >= @s rcounta run scoreboard players set @s rcountb 0

execute as @e[tag=score,scores={reroll=1..}] run execute as @a[scores={reroll=1..},tag=!r] run tag @a[scores={reroll=1..},tag=!r] add r
scoreboard players reset @a reroll