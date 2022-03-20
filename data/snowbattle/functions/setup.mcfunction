# 初期セットアップ（データパック読み込まれ時に実行）

tellraw @a ["",{"text":"[SnowBattle] ","color":"aqua"},"Loading StickBattle datapack..."]

scoreboard objectives remove SnowBattle
scoreboard objectives remove SnowBattleWinner
scoreboard objectives remove SnowBattleSettings

scoreboard objectives add SnowBattle dummy
scoreboard objectives add SnowBattleWinner dummy
scoreboard objectives add SnowBattleSettings dummy

team add SnowBattle
team empty SnowBattle
team modify SnowBattle color aqua
team modify SnowBattle friendlyFire true

team add SnowBattleFell
team empty SnowBattleFell
team modify SnowBattleFell color red
team modify SnowBattleFell friendlyFire false

scoreboard players set __PLAYING__ SnowBattleSettings 0

tellraw @a ["",{"text":"[SnowBattle] ","color":"aqua"},"Successfully loaded SnowBattle datapack."]
