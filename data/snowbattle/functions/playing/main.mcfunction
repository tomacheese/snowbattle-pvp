# 毎tickで行われる処理

execute if score __PLAYING__ SnowBattleSettings matches 2.. run function snowbattle:playing/non-player-in-area
execute if score __PLAYING__ SnowBattleSettings matches 2.. run function snowbattle:playing/player-out-of-area
execute if score __PLAYING__ SnowBattleSettings matches 2.. run function snowbattle:playing/player-creative-mode
execute if score __PLAYING__ SnowBattleSettings matches 2.. run function snowbattle:playing/player-survival-mode

execute if score __PLAYING__ SnowBattleSettings matches 2.. run function snowbattle:playing/player-fell-down

execute if score __PLAYING__ SnowBattleSettings matches ..1 run function snowbattle:end-game