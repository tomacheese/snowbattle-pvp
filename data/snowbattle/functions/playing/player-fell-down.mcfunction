# プレイヤーが落ちた (ゲームオーバー)

execute if entity @a[x=590,y=64,z=61,dx=43,dy=2,dz=43,team=SnowBattle] run team join SnowBattleFell

execute if entity @a[team=SnowBattleFell] run tellraw @a ["",{"text":"[SnowBattle] ","color":"aqua"},{"selector":"@s"}," が落ちました。"]
execute if entity @a[team=SnowBattleFell] run tp @s 611 75 82
execute if entity @a[team=SnowBattleFell] run invload @s SnowBattle
execute if entity @a[team=SnowBattleFell] run gamemode creative @s
execute if entity @a[team=SnowBattleFell] run team leave @s