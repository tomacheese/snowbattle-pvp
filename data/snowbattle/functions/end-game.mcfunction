# ゲームの終了

tellraw @a ["",{"text":"[SnowBattle] ","color":"aqua"},"ゲーム終了！"]
tellraw @a ["",{"text":"[SnowBattle] ","color":"aqua"},"勝者は ",{"selector":"@a[team=SnowBattle]"}," です。"]

# invload @a[team=SnowBattle] SnowBattle
tp @a[team=SnowBattle] 611 80 82
scoreboard players add @a[team=SnowBattle] SnowBattleWinner 1
gamemode creative @a[team=SnowBattle]

scoreboard players set __PLAYING__ SnowBattleSettings 0
scoreboard players set __PLAYER_COUNT__ SnowBattleSettings 0
team empty SnowBattle

scoreboard objectives remove SnowBattle
scoreboard objectives add SnowBattle dummy

tellraw @a ["",{"text":"[SnowBattle] ","color":"aqua"},{"text":"SnowBattleで墓穴を掘りまくって相手を落としてやろう！w "},{"text":"[参加する]","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/tp 579 68 74"}}]