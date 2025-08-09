scoreboard players operation @e[type=minecraft:armor_stand,limit=1,tag=score] rcountb = @e[type=minecraft:armor_stand,limit=1,tag=score] rcounta
scoreboard players operation @e[type=minecraft:armor_stand,limit=1,tag=score] rcountb /= @e[type=minecraft:armor_stand,limit=1,tag=score] three
scoreboard players operation @e[type=minecraft:armor_stand,limit=1,tag=score] rcountb *= @e[type=minecraft:armor_stand,limit=1,tag=score] two
scoreboard players operation @e[type=minecraft:armor_stand,limit=1,tag=score] rcounta %= @e[type=minecraft:armor_stand,limit=1,tag=score] three
execute unless score @e[type=minecraft:armor_stand,limit=1,tag=score] rcounta matches 0 run scoreboard players add @e[type=minecraft:armor_stand,limit=1,tag=score] rcountb 1
tellraw @a {"score":{"name":"@e[type=minecraft:armor_stand,limit=1,tag=score]","objective":"rcountb"}}