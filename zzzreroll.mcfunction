effect give @a resistance 1 255 true
clear @a
spreadplayers 0 0 0 100000 true @a
execute at @a run tp @e[tag=start] ~ 100 ~
tag @e remove r
tellraw @a {"color":"gold","text":"Reroll complete! Hope it was a good one!"}