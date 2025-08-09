gamerule doImmediateRespawn true
scoreboard players set @a death 1785
time set 0
clear @a
team join a @a
effect clear @a
kill @a
execute as @a at @s run playsound minecraft:block.trial_spawner.ominous_activate
title @a title {"text":"game starting!","color":"green"}
kill @e[type=armor_stand,tag=score]
summon armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score"]}
scoreboard players set @e[type=armor_stand,tag=score] round 0
scoreboard players set @e[type=armor_stand,tag=score] tick 0
scoreboard players set @e[type=armor_stand,tag=score] min 0
scoreboard players set @e[type=armor_stand,tag=score] sec 0
scoreboard players set @e[type=armor_stand,tag=score] hour 0
scoreboard players set @e[type=armor_stand,tag=score] multi 100
scoreboard players set @e[type=armor_stand,tag=score] rcountb 0
scoreboard players set @e[type=armor_stand,tag=score] one 1
scoreboard players set @e[type=armor_stand,tag=score] two 2
scoreboard players set @e[type=armor_stand,tag=score] three 3
scoreboard players set @e[type=armor_stand,tag=score] five 5
scoreboard players set @e[type=armor_stand,tag=score] remain 43
tag @e[type=armor_stand,tag=score] add newcheck
tag @a remove a
schedule function a:zzzstart1 20t
gamemode survival @a
scoreboard players set @a health 500
scoreboard players set @a[scores={spec=-1785}] health -1785
scoreboard players set @a temp 500
scoreboard players set @a[scores={spec=-1785}] temp -1785



# death 
scoreboard players set @a aa 17
scoreboard players set @a ab 17
scoreboard players set @a ac 17
scoreboard players set @a ad 17
scoreboard players set @a ae 17
scoreboard players set @a af 17
scoreboard players set @a ag 17
scoreboard players set @a ah 17
scoreboard players set @a ai 17
scoreboard players set @a aj 17
scoreboard players set @a ak 17
scoreboard players set @a al 17
scoreboard players set @a am 17
scoreboard players set @a an 17
scoreboard players set @a ao 17
scoreboard players set @a ap 17
scoreboard players set @a aq 17
scoreboard players set @a ar 17
scoreboard players set @a as 17
scoreboard players set @a at 17
scoreboard players set @a au 17
scoreboard players set @a av 17
scoreboard players set @a aw 17
scoreboard players set @a ax 17
scoreboard players set @a ay 17
scoreboard players set @a az 17
scoreboard players set @a ba 17
scoreboard players set @a bb 17
scoreboard players set @a bc 17
scoreboard players set @a bd 17
scoreboard players set @a be 17
scoreboard players set @a bf 17
scoreboard players set @a bg 17
scoreboard players set @a bh 17
scoreboard players set @a bi 17
scoreboard players set @a bj 17
scoreboard players set @a bk 17
scoreboard players set @a bl 17
scoreboard players set @a bm 17
scoreboard players set @a bn 17
scoreboard players set @a bo 17
scoreboard players set @a bp 17
scoreboard players set @a bq 17
scoreboard players set @a br 17
scoreboard players set @a bs 17
scoreboard players set @a bt 17
scoreboard players set @a bu 17
scoreboard players set @a bv 17
scoreboard players set @a bw 17
scoreboard players set @a bx 17

scoreboard players set @e[type=armor_stand,tag=score] aa 17
scoreboard players set @e[type=armor_stand,tag=score] ab 17
scoreboard players set @e[type=armor_stand,tag=score] ac 17
scoreboard players set @e[type=armor_stand,tag=score] ad 17
scoreboard players set @e[type=armor_stand,tag=score] ae 17
scoreboard players set @e[type=armor_stand,tag=score] af 17
scoreboard players set @e[type=armor_stand,tag=score] ag 17
scoreboard players set @e[type=armor_stand,tag=score] ah 17
scoreboard players set @e[type=armor_stand,tag=score] ai 17
scoreboard players set @e[type=armor_stand,tag=score] aj 17
scoreboard players set @e[type=armor_stand,tag=score] ak 17
scoreboard players set @e[type=armor_stand,tag=score] al 17
scoreboard players set @e[type=armor_stand,tag=score] am 17
scoreboard players set @e[type=armor_stand,tag=score] an 17
scoreboard players set @e[type=armor_stand,tag=score] ao 69
scoreboard players set @e[type=armor_stand,tag=score] ap 17
scoreboard players set @e[type=armor_stand,tag=score] aq 17
scoreboard players set @e[type=armor_stand,tag=score] ar 17
scoreboard players set @e[type=armor_stand,tag=score] as 17
scoreboard players set @e[type=armor_stand,tag=score] at 17
scoreboard players set @e[type=armor_stand,tag=score] au 17
scoreboard players set @e[type=armor_stand,tag=score] av 17
scoreboard players set @e[type=armor_stand,tag=score] aw 17
scoreboard players set @e[type=armor_stand,tag=score] ax 17
scoreboard players set @e[type=armor_stand,tag=score] ay 17
scoreboard players set @e[type=armor_stand,tag=score] az 17
scoreboard players set @e[type=armor_stand,tag=score] ba 17
scoreboard players set @e[type=armor_stand,tag=score] bb 17
scoreboard players set @e[type=armor_stand,tag=score] bc 17
scoreboard players set @e[type=armor_stand,tag=score] bd 17
scoreboard players set @e[type=armor_stand,tag=score] be 69
scoreboard players set @e[type=armor_stand,tag=score] bf 17
scoreboard players set @e[type=armor_stand,tag=score] bg 17
scoreboard players set @e[type=armor_stand,tag=score] bh 17
scoreboard players set @e[type=armor_stand,tag=score] bi 17
scoreboard players set @e[type=armor_stand,tag=score] bj 17
scoreboard players set @e[type=armor_stand,tag=score] bk 69
scoreboard players set @e[type=armor_stand,tag=score] bl 17
scoreboard players set @e[type=armor_stand,tag=score] bm 69
scoreboard players set @e[type=armor_stand,tag=score] bn 69
scoreboard players set @e[type=armor_stand,tag=score] bo 17
scoreboard players set @e[type=armor_stand,tag=score] bp 17
scoreboard players set @e[type=armor_stand,tag=score] bq 17
scoreboard players set @e[type=armor_stand,tag=score] br 17
scoreboard players set @e[type=armor_stand,tag=score] bs 69
scoreboard players set @e[type=armor_stand,tag=score] bt 17
scoreboard players set @e[type=armor_stand,tag=score] bu 69
scoreboard players set @e[type=armor_stand,tag=score] bv 17
scoreboard players set @e[type=armor_stand,tag=score] bw 17
scoreboard players set @e[type=armor_stand,tag=score] bx 17