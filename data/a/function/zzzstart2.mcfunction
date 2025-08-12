execute at @r run spreadplayers ~ ~ 0 7 true @a
execute at @r run worldborder center ~ ~
execute at @a run fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:glass
execute at @a run setblock ~ ~ ~ air
execute at @a run setblock ~ ~2 ~ minecraft:glass
execute at @a run setblock ~ ~-1 ~ grass_block
execute at @a run setblock ~ ~-2 ~ grass_block
kill @e[tag=start]
execute as @e[tag=score,scores={rdm=1}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[18,0]}
execute as @e[tag=score,scores={rdm=2}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[36,0]}
execute as @e[tag=score,scores={rdm=3}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[72,0]}
execute as @e[tag=score,scores={rdm=4}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[108,0]}
execute as @e[tag=score,scores={rdm=5}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[128,0]}
execute as @e[tag=score,scores={rdm=6}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[158,0]}
execute as @e[tag=score,scores={rdm=7}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[10,0]}
execute as @e[tag=score,scores={rdm=8}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[49,0]}
execute as @e[tag=score,scores={rdm=9}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[168,0]}
execute as @e[tag=score,scores={rdm=10}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[81,0]}
execute as @e[tag=score,scores={rdm=11}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[-18,0]}
execute as @e[tag=score,scores={rdm=12}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[-36,0]}
execute as @e[tag=score,scores={rdm=13}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[-72,0]}
execute as @e[tag=score,scores={rdm=14}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[-108,0]}
execute as @e[tag=score,scores={rdm=15}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[-128,0]}
execute as @e[tag=score,scores={rdm=16}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[-158,0]}
execute as @e[tag=score,scores={rdm=17}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[-10,0]}
execute as @e[tag=score,scores={rdm=18}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[-49,0]}
execute as @e[tag=score,scores={rdm=19}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[-168,0]}
execute as @e[tag=score,scores={rdm=20}] run execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],Rotation:[-81,0]}
gamemode spectator @a[scores={health=..0}]
tellraw @a[scores={health=..0}] {"color":"dark_gray","text":"You are a spectator?"}
execute as @a run trigger spec add 0
execute as @a run trigger notspec add 0
worldborder set 100
worldborder set 99 599999999