# triggers
execute as @a[scores={reminder=1..}] run function a:zzzreminder
#execute as @a[scores={unique=1..}] run function a:zzzunique
execute as @a[scores={reroll=1..}] run function a:zzzrerollcheck
scoreboard players reset @a reminder
#scoreboard players reset @a unique
scoreboard players enable @a reminder
#scoreboard players enable @a unique
scoreboard players enable @a reroll


# reroll
scoreboard players remove @e[tag=score,scores={reroll=1..}] reroll 1
execute as @e[tag=score,scores={reroll=0,rcountb=1..},tag=r] run tellraw @a {"color":"dark_red","text":"The reroll vote has failed."}
execute as @e[tag=score,scores={reroll=0,rcountb=1..},tag=r] run execute as @a at @s run playsound minecraft:block.beacon.deactivate master @a
execute as @e[tag=score,scores={reroll=0,rcountb=1..},tag=r] run tag @s remove r
execute as @e[tag=score,scores={reroll=0,rcountb=1..},tag=r] run scoreboard players set @s rcountb 0


execute as @a[scores={spec=1..}] run tellraw @a [{"color":"gray","selector":"@s"},{"text":" has become a spectator."}]
execute as @a[scores={spec=1..}] run gamemode spectator @s
execute as @a[scores={spec=1..}] run scoreboard players set @s spec -1785

execute as @a[scores={notspec=1..}] run tellraw @a [{"color":"green","selector":"@s"},{"text":" has stopped being a spectator."}]
execute as @a[scores={notspec=1..}] run scoreboard players reset @s spec
execute as @a[scores={notspec=1..}] run tp @s 0 302 0
execute as @a[scores={notspec=1..}] run gamemode survival @s
execute as @a[scores={notspec=1..}] run scoreboard players reset @s notspec

execute unless entity @e[limit=1,tag=score,scores={round=1}] positioned 12.79 308.35 0.70 run scoreboard players enable @a[distance=..30] spec
execute unless entity @e[limit=1,tag=score,scores={round=1}] positioned 12.79 308.35 0.70 run scoreboard players enable @a[distance=..30] notspec
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run scoreboard players enable @a[distance=..60] notspec
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run scoreboard players enable @a[distance=..60] spec

effect give @a[scores={death=18..}] resistance 1 255 true
effect give @a[scores={death=18..}] mining_fatigue 1 254 true
execute positioned 12.79 308.35 0.70 run effect give @a[distance=..30] mining_fatigue 1 254 true
execute positioned 12.79 308.35 0.70 run effect give @a[distance=..30] resistance 1 254 true
execute positioned 22.41 309.99 0.39 run effect give @a[distance=..10] saturation 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] resistance 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] mining_fatigue 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] saturation 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run tp @e[type=enderman,distance=..60,tag=!end] ~ 0 ~
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run tag @e[type=enderman,distance=..60,tag=!end] add end
scoreboard players add @e[type=armor_stand,tag=score,scores={round=1..}] score 1
execute as @e[tag=score,type=armor_stand,scores={score=0..10}] at @a run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace glass
execute as @e[tag=score,type=armor_stand,scores={score=-10..0}] run scoreboard players set @a death 17

# moving stuff
execute as @e[tag=start] at @s run tp ^ ^ ^0.027
execute as @e[tag=start] at @s run worldborder center ~ ~
execute as @e[tag=start] at @s run spawnpoint @a ~ -64 ~
execute as @e[tag=start] at @s run setworldspawn ~ ~ ~

# timer
scoreboard players add @e[tag=score,scores={score=1..}] tick 1
scoreboard players add @e[tag=score,scores={tick=20}] sec 1
scoreboard players set @e[tag=score,scores={tick=20}] tick 0
scoreboard players add @e[tag=score,scores={sec=60}] min 1
scoreboard players set @e[tag=score,scores={sec=60}] sec 0
scoreboard players add @e[tag=score,scores={min=60}] hour 1
scoreboard players set @e[tag=score,scores={min=60}] min 0

execute as @e[tag=score,scores={score=1..27000}] run title @a actionbar [{"color":"aqua","text":"Current time taken: "},{"score":{"name":"@e[tag=score,limit=1]","objective":"hour"}},{"text":"h "},{"score":{"name":"@e[tag=score,limit=1]","objective":"min"}},{"text":"m "},{"score":{"name":"@e[tag=score,limit=1]","objective":"sec"}},{"text":"s "}]
execute as @e[tag=score,scores={score=27001..54000}] run title @a actionbar [{"color":"green","text":"Current time taken: "},{"score":{"name":"@e[tag=score,limit=1]","objective":"hour"}},{"text":"h "},{"score":{"name":"@e[tag=score,limit=1]","objective":"min"}},{"text":"m "},{"score":{"name":"@e[tag=score,limit=1]","objective":"sec"}},{"text":"s "}]
execute as @e[tag=score,scores={score=54000..81000}] run title @a actionbar [{"color":"yellow","text":"Current time taken: "},{"score":{"name":"@e[tag=score,limit=1]","objective":"hour"}},{"text":"h "},{"score":{"name":"@e[tag=score,limit=1]","objective":"min"}},{"text":"m "},{"score":{"name":"@e[tag=score,limit=1]","objective":"sec"}},{"text":"s "}]
execute as @e[tag=score,scores={score=81001..108000}] run title @a actionbar [{"color":"gold","text":"Current time taken: "},{"score":{"name":"@e[tag=score,limit=1]","objective":"hour"}},{"text":"h "},{"score":{"name":"@e[tag=score,limit=1]","objective":"min"}},{"text":"m "},{"score":{"name":"@e[tag=score,limit=1]","objective":"sec"}},{"text":"s "}]
execute as @e[tag=score,scores={score=108001..135000}] run title @a actionbar [{"color":"red","text":"Current time taken: "},{"score":{"name":"@e[tag=score,limit=1]","objective":"hour"}},{"text":"h "},{"score":{"name":"@e[tag=score,limit=1]","objective":"min"}},{"text":"m "},{"score":{"name":"@e[tag=score,limit=1]","objective":"sec"}},{"text":"s "}]
execute as @e[tag=score,scores={score=135001..162000}] run title @a actionbar [{"color":"dark_red","text":"Current time taken: "},{"score":{"name":"@e[tag=score,limit=1]","objective":"hour"}},{"text":"h "},{"score":{"name":"@e[tag=score,limit=1]","objective":"min"}},{"text":"m "},{"score":{"name":"@e[tag=score,limit=1]","objective":"sec"}},{"text":"s "}]
execute as @e[tag=score,scores={score=162001..189000}] run title @a actionbar [{"color":"gray","text":"Current time taken: "},{"score":{"name":"@e[tag=score,limit=1]","objective":"hour"}},{"text":"h "},{"score":{"name":"@e[tag=score,limit=1]","objective":"min"}},{"text":"m "},{"score":{"name":"@e[tag=score,limit=1]","objective":"sec"}},{"text":"s "}]
execute as @e[tag=score,scores={score=189001..216000}] run title @a actionbar [{"color":"dark_gray","text":"Current time taken: "},{"score":{"name":"@e[tag=score,limit=1]","objective":"hour"}},{"text":"h "},{"score":{"name":"@e[tag=score,limit=1]","objective":"min"}},{"text":"m "},{"score":{"name":"@e[tag=score,limit=1]","objective":"sec"}},{"text":"s "}]
execute as @e[tag=score,scores={score=216001..}] run title @a actionbar [{"color":"black","text":"Current time taken: "},{"score":{"name":"@e[tag=score,limit=1]","objective":"hour"}},{"text":"h "},{"score":{"name":"@e[tag=score,limit=1]","objective":"min"}},{"text":"m "},{"score":{"name":"@e[tag=score,limit=1]","objective":"sec"}},{"text":"s "}]


execute as @a[team=a,scores={death=18,health=1..500},tag=!a] if entity @e[tag=score,scores={score=0..}] run function a:victory
tag @a[tag=!new] add new
team join a @a[tag=!new]
execute as @e[tag=newcheck] run execute as @a run execute unless score @s health matches -69421.. run schedule function a:zzzjoin 1t


execute as @e[tag=score,scores={score=-200}] run title @a title {"text":"10","color":"green"}
execute as @e[tag=score,scores={score=-180}] run title @a title {"text":"9","color":"green"}
execute as @e[tag=score,scores={score=-160}] run title @a title {"text":"8","color":"green"}
execute as @e[tag=score,scores={score=-140}] run title @a title {"text":"7","color":"green"}
execute as @e[tag=score,scores={score=-120}] run title @a title {"text":"6","color":"green"}
execute as @e[tag=score,scores={score=-100}] run title @a title {"text":"5","color":"yellow"}
execute as @e[tag=score,scores={score=-80}] run title @a title {"text":"4","color":"yellow"}
execute as @e[tag=score,scores={score=-60}] run title @a title {"text":"3","color":"gold"}
execute as @e[tag=score,scores={score=-40}] run title @a title {"text":"2","color":"red"}
execute as @e[tag=score,scores={score=-20}] run title @a title {"text":"1","color":"red"}
execute as @e[tag=score,scores={score=0}] run title @a title {"text":"GO!","color":"dark_red"}


execute as @e[tag=score,scores={score=-200}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-180}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-160}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-140}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-120}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-100}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-80}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-60}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-40}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-20}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=0}] at @a run playsound minecraft:entity.ender_dragon.growl player @a


