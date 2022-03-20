# 毎tickで行われる処理

execute store result score __PLAYER_COUNT__ SnowBattleSettings run execute if entity @a[team=SnowBattle]

execute if score __PLAYING__ SnowBattleSettings matches 1.. if score __PLAYER_COUNT__ SnowBattleSettings matches 2.. run function snowbattle:playing/non-player-in-area
execute if score __PLAYING__ SnowBattleSettings matches 1.. if score __PLAYER_COUNT__ SnowBattleSettings matches 2.. run function snowbattle:playing/player-out-of-area
execute if score __PLAYING__ SnowBattleSettings matches 1.. if score __PLAYER_COUNT__ SnowBattleSettings matches 2.. run function snowbattle:playing/player-creative-mode
execute if score __PLAYING__ SnowBattleSettings matches 1.. if score __PLAYER_COUNT__ SnowBattleSettings matches 2.. run function snowbattle:playing/player-survival-mode

execute if score __PLAYING__ SnowBattleSettings matches 1.. if entity @a[x=590,y=63,z=61,dx=43,dy=2,dz=43,team=SnowBattle] run function snowbattle:playing/player-fell-down

execute if score __PLAYING__ SnowBattleSettings matches 1.. if score __PLAYER_COUNT__ SnowBattleSettings matches ..1 run function snowbattle:end-game