# new person
execute as @a run execute unless score @s health matches -69421.. run scoreboard players set @s death 17
execute as @a run execute unless score @s health matches -69421.. run gamemode survival @s
execute as @a run execute unless score @s health matches -69421.. run team join a @s
execute as @a run execute unless score @s health matches -69421.. run execute at @e[tag=start,limit=1] run spreadplayers ~ ~ 0 1 false @s
execute as @a run execute unless score @s health matches -69421.. run scoreboard players set @s health 500

execute as @r unless entity @a[distance=2..] run gamemode survival @a