# 参加者以外がエリア場内にいるか

execute if entity @a[x=590,y=64,z=61,dx=43,dy=10,dz=43,gamemode=!spectator,team=!SnowBattle,name=!"mine_book000"] run tellraw @s ["",{"text":"[SnowBattle] ","color":"red"},{"text":"現在ゲーム中です！ゲームが終わるまでちょっと待ってね。","bold":true,"color":"green"}]
execute if entity @a[x=590,y=64,z=61,dx=43,dy=10,dz=43,gamemode=!spectator,team=!SnowBattle,name=!"mine_book000"] run tellraw mine_book000 ["",{"text":"[SnowBattle-DEBUG] ","color":"gold"},{"text":"ゲーム中途中参加エラー: "},{"selector":"@s"}]
execute if entity @a[x=590,y=64,z=61,dx=43,dy=10,dz=43,gamemode=!spectator,team=!SnowBattle,name=!"mine_book000"] run tp @s 611 75 82
