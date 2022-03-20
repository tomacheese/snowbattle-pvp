# プレイヤーが落ちた (ゲームオーバー)

team join SnowBattleFell @a[x=590,y=64,z=61,dx=43,dy=2,dz=43,team=SnowBattle]
tellraw @a ["",{"text":"[SnowBattle] ","color":"aqua"},{"selector":"@a[team=SnowBattleFell]"}," が落ちました。"]
tp @a[team=SnowBattleFell] 611 80 82
gamemode creative @a[team=SnowBattleFell]
clear @a[team=SnowBattleFell]
team leave @a[team=SnowBattleFell]

# execute if entity @a[team=SnowBattleFell] run invload @s SnowBattle
