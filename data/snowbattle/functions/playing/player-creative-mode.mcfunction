# 参加者がクリエイティブモードに変更した

execute if entity @a[team=SnowBattle,gamemode=creative,name=!"mine_book000"] as @a[team=SnowBattle,gamemode=creative,name=!"mine_book000"] run tellraw mine_book000 ["",{"text":"[SnowBattle-DEBUG] ","color":"gold"},{"text":"ゲーム中クリエ変更: "},{"selector":"@s"}]
execute if entity @a[team=SnowBattle,gamemode=creative,name=!"mine_book000"] as @a[team=SnowBattle,gamemode=creative,name=!"mine_book000"] run tellraw @s ["",{"text":"[SnowBattle] ","color":"red"},{"text":"ゲーム中にクリエイティブモードに変更することはできません！","bold":true,"color":"green"}]
execute if entity @a[team=SnowBattle,gamemode=creative,name=!"mine_book000"] as @a[team=SnowBattle,gamemode=creative,name=!"mine_book000"] run gamemode adventure @s
