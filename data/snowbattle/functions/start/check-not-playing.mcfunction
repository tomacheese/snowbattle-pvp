# ゲームが既に始まっていないことを確認

# IS PLAYING
execute if score __PLAYING__ SnowBattleSettings matches 1 run title @a[x=576,y=68,z=71,dx=6,dy=5,dz=6] reset
execute if score __PLAYING__ SnowBattleSettings matches 1 run title @a[x=576,y=68,z=71,dx=6,dy=5,dz=6] title {"text":"現在ゲーム中です。","color":"red"}

# IS NOT PLAYING
execute if score __PLAYING__ SnowBattleSettings matches 0 run function snowbattle:start/check-player-count
