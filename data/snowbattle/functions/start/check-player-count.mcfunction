# プレイヤー数を確認する（2人以上）

# SnowBattleSettingsの__PLAYER_COUNT__に待機室にいるプレイヤー数を入れる
scoreboard players set __PLAYER_COUNT__ SnowBattleSettings 0
execute store result score __PLAYER_COUNT__ SnowBattleSettings run execute if entity @a[x=576,y=68,z=71,dx=6,dy=5,dz=6]

# 人数が足りない
execute unless score __PLAYER_COUNT__ SnowBattleSettings matches 2.. run title @a[x=576,y=68,z=71,dx=6,dy=5,dz=6] reset
execute unless score __PLAYER_COUNT__ SnowBattleSettings matches 2.. run title @a[x=576,y=68,z=71,dx=6,dy=5,dz=6] subtitle {"text":"開始には最低2人が必要です。"}
execute unless score __PLAYER_COUNT__ SnowBattleSettings matches 2.. run title @a[x=576,y=68,z=71,dx=6,dy=5,dz=6] title {"text":"ゲームを開始できません。","color":"red"}

# 人数が足りてる
execute if score __PLAYER_COUNT__ SnowBattleSettings matches 2.. run function snowbattle:start/check-other-pvp-running
