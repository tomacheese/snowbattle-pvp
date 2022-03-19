# 開始前処理

team empty SnowBattle
scoreboard objectives setdisplay sidebar SnowBattle

team join SnowBattle @a[x=576,y=68,z=71,dx=6,dy=5,dz=6]

title @a[team=SnowBattle] times 0 99999 0
title @a[team=SnowBattle] title {"text":"ゲームを開始します...","color":"yellow"}
schedule function snowbattle:start/countdown/remaining-3s 20t
