title @a times 10 0 10
scoreboard players set @a death 17
spreadplayers 0 0 0 100000 true @a
scoreboard players set @e[type=armor_stand,tag=score] score -80
scoreboard players set @e[type=armor_stand,tag=score] round 1
scoreboard players set @e[type=armor_stand,tag=score] reroll 0
scoreboard players set @a glass 0
schedule function a:zzzstart2 60t
execute as @a run trigger spec add 0
execute as @a run trigger notspec add 0
execute at @r run worldborder center ~ ~


tellraw @a {"text":"Your goal is to complete 43 of the 50 death messages (that you can see if you run /trigger reminder)! Good luck and have fun!","color":"gold"}
tellraw @a {"text":"(The worldborder death messages are not included!)","color":"gray"}