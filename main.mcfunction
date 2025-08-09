function a:murder
scoreboard players reset *
gamerule doImmediateRespawn true
time set 0
team add a
team modify a collisionRule pushOwnTeam
team modify a friendlyFire false
team modify a color reset
difficulty easy
gamerule keepInventory false
gamerule showDeathMessages true
function a:zzzlocbar
scoreboard objectives add score dummy
scoreboard objectives add tick dummy
scoreboard objectives add sec dummy
scoreboard objectives add min dummy
scoreboard objectives add hour dummy
scoreboard objectives add death deathCount
scoreboard objectives add reminder trigger
scoreboard objectives add reroll trigger
scoreboard objectives add rcounta dummy
scoreboard objectives add rcountb dummy
scoreboard objectives add calc dummy
scoreboard objectives add health dummy
scoreboard objectives add remain dummy
scoreboard objectives add limit dummy
scoreboard objectives add round dummy
scoreboard objectives add multi dummy
scoreboard objectives add left dummy
scoreboard objectives add right dummy
scoreboard objectives add gone dummy
scoreboard objectives add one dummy
scoreboard objectives add two dummy
scoreboard objectives add three dummy
scoreboard objectives add five dummy
scoreboard objectives add first dummy
scoreboard objectives add overkill dummy
scoreboard objectives add temp dummy
scoreboard objectives add pcount dummy
scoreboard objectives add tpcount dummy
scoreboard objectives add glass minecraft.mined:minecraft.glass
scoreboard objectives setdisplay sidebar
scoreboard players set @a death 1785
tellraw @a [{"bold":true,"color":"red","underline":true,"text":"Random Death Challenge "},{"text":"has been loaded! Use /function a:start to begin the game!","color":"green"}]



# create spawn platform
schedule function a:zzzspawn 5t
schedule function a:zzzcheck 6t
schedule function a:zzzcheck1 10t
execute in the_nether run forceload add -13 -14 25 24
forceload add -1 -1 0 0
place template a:lobbyoverworld1 -12 295 -14
setworldspawn 0 302 0
spawnpoint @a 0 302 0
tp @a 0 302 0
gamemode survival @a
gamerule spawnRadius 2

# TEXT DISPLAYS
kill @e[type=text_display]
summon text_display -9.00 302 0.50 {Glowing:1b,line_width:600,Rotation:[-90F,0F],text:[{"bold":true,"text":"Unique Death Speedrun Instructions:","underlined":true},{"bold":true,"text":"\nObjective:","underlined":false},{"bold":false,"text":" Players will all be put in the same box in a random location in a Minecraft world. The goal is to die in a ","underlined":false},{"text":"different way","bold":false},{"text":" each round.\n Additionally, there is a 2-minute time limit (2500 ticks, specifically) to prevent rounds from going on forever. \n If you fail to die in a unique way within the time limit, you will be given a score equivalent to completing the objective in 4000 ticks.\n","bold":false,"underlined":false},{"bold":true,"text":"Scoring: ","underlined":false},{"bold":false,"text":"The time taken in ticks to die is the player's score, which will be printed in chat.\n","underlined":false},{"bold":true,"text":"Health and damage: ","underlined":false},{"bold":false,"italic":false,"strikethrough":false,"text":"Each player starts off with 500 health. The first player to finish takes no damage, and each subsequent player takes damage equivalent to the % difference between their time and the first player's time. However, damage is capped at 150.\n","underlined":false},{"bold":false,"text":"For example, if I took 1000 ticks and someone else took 1500 ticks, they would take 50 damage. Another person who took 3000 ticks would have taken 200 damage, but the 150 damage cap will make it 150.\n","underlined":false},{"bold":false,"text":"If your health reaches 0, you are eliminated. The last player standing wins!","underlined":false}]}
summon text_display 0.50 303 9.50 {Glowing:1b,line_width:600,Rotation:[180F,0F],text:[{"bold":true,"text":"Allowed client modifications:","underlined":true},{"bold":false,"text":"\n No hacked clients are allowed.\n","underlined":false},{"bold":false,"text":"Any mod that gathers information about the seed, such as minimap mods, mapping mods, entity trackers, etc. are not allowed. ","underlined":false},{"bold":false,"text":"\nHowever, you are allowed to use gamma utils or fullbright to increase your vision during nighttime/in caves provided that you do not toggle between multiple gamma values.","underlined":false}]}
summon text_display 0.50 302 -9.50 {Glowing:1b,line_width:600,text:[{"bold":true,"text":"Unique-specific descriptions:","underlined":true},{"bold":false,"text":"\n Death messages are turned off, so you cannot see what you (or others) have done.\nIf you die in a non-unique way, you will respawn back at the same starting location and can still find a unique death.\n","underlined":false},{"bold":true,"text":"Please do NOT try to sabotage or block spawn.\n","underlined":false},{"bold":false,"text":"\nYou have two triggers you can run at anytime which may be helpful:","underlined":false},{"text":"\n/trigger repeat: ","underlined":false},{"bold":false,"text":"Shows you the death messages you have already used\n","underlined":false},{"text":"/trigger unique: ","underlined":false},{"bold":false,"text":"Shows you all death messages you can still use (however, many are impossible in the time limit, and it is VERY spammy)\n","underlined":false},{"bold":false,"text":"Additionally, each death message has a description of what it is and how to get it available if you hover over it in chat!","underlined":false}]}

execute unless entity @e[type=minecraft:armor_stand,limit=1,tag=score] run summon minecraft:armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score"]}
scoreboard players set @e[type=armor_stand,tag=score] round 0

schedule function a:zzzfiveschecker 5s

# spectator stuff
scoreboard objectives add spec trigger
scoreboard objectives add notspec trigger
scoreboard players enable @a spec
scoreboard players enable @a notspec

# worldborder
worldborder set 5999999
worldborder center 0 0



# death stuff 
scoreboard objectives remove aa
scoreboard objectives remove ab
scoreboard objectives remove ac
scoreboard objectives remove ad
scoreboard objectives remove ae
scoreboard objectives remove af
scoreboard objectives remove ag
scoreboard objectives remove ah
scoreboard objectives remove ai
scoreboard objectives remove aj
scoreboard objectives remove ak
scoreboard objectives remove al
scoreboard objectives remove am
scoreboard objectives remove an
scoreboard objectives remove ao
scoreboard objectives remove ap
scoreboard objectives remove aq
scoreboard objectives remove ar
scoreboard objectives remove as
scoreboard objectives remove at
scoreboard objectives remove au
scoreboard objectives remove av
scoreboard objectives remove aw
scoreboard objectives remove ax
scoreboard objectives remove ay
scoreboard objectives remove az
scoreboard objectives remove ba
scoreboard objectives remove bb
scoreboard objectives remove bc
scoreboard objectives remove bd
scoreboard objectives remove be
scoreboard objectives remove bf
scoreboard objectives remove bg
scoreboard objectives remove bh
scoreboard objectives remove bi
scoreboard objectives remove bj
scoreboard objectives remove bk
scoreboard objectives remove bl
scoreboard objectives remove bm
scoreboard objectives remove bn
scoreboard objectives remove bo
scoreboard objectives remove bp
scoreboard objectives remove bq
scoreboard objectives remove br
scoreboard objectives remove bs
scoreboard objectives remove bt
scoreboard objectives remove bu
scoreboard objectives remove bv
scoreboard objectives remove bw
scoreboard objectives remove bx
scoreboard objectives remove by



# bossbar
bossbar add bossbar Progress
bossbar set minecraft:bossbar color red
bossbar set minecraft:bossbar name {"text":"Progress","color":"red","bold":true}
bossbar set bossbar value 0
bossbar set bossbar visible true
bossbar set bossbar players @a