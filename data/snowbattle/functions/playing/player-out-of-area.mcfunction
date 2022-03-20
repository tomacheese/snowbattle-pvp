# 参加者がエリア場外にいるか

execute if entity @a[x=611,y=67,z=82,distance=45..,team=SnowBattle,name=!"mine_book000"] as @a[x=611,y=67,z=82,distance=45..,team=!SnowBattle,name=!"mine_book000"] run tellraw @s ["",{"text":"[SnowBattle] ","color":"red"},{"text":"ゲーム中に場外に出たため、ゲーム参加者から除外します。","bold":true,"color":"green"}]
execute if entity @a[x=611,y=67,z=82,distance=45..,team=SnowBattle,name=!"mine_book000"] as @a[x=611,y=67,z=82,distance=45..,team=!SnowBattle,name=!"mine_book000"] run tellraw mine_book000 ["",{"text":"[SnowBattle-DEBUG] ","color":"gold"},{"text":"ゲーム中場外エラー: "},{"selector":"@s"}]
execute if entity @a[x=611,y=67,z=82,distance=45..,team=SnowBattle,name=!"mine_book000"] as @a[x=611,y=67,z=82,distance=45..,team=!SnowBattle,name=!"mine_book000"] run team leave @s
