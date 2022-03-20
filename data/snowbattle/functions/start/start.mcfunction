# 開始処理

title @a[team=SnowBattle] reset
title @a[team=SnowBattle] title {"text":"Start!!","color":"gold"}

# chat SnowBattle ゲーム開始！ color:aqua

fill 590 65 61 632 73 103 air
fill 590 67 61 632 67 103 snow_block

gamemode adventure @a[team=SnowBattle]
# invsave @a[team=SnowBattle] SnowBattle

clear @a[team=SnowBattle]
give @a[team=SnowBattle] diamond_shovel{display: {Name: '{"text":"SnowBattle"}'}, CanDestroy: ["minecraft:snow_block"], ench: [{id: 32, lvl: 5}, {id: 34, lvl: 3}]} 1
give @a[team=SnowBattle] snow_block{CanPlaceOn: ["minecraft:snow_block"]} 30
give @a[team=SnowBattle] powder_snow_bucket{CanPlaceOn: ["minecraft:snow_block"]} 1

give @a[team=SnowBattle] fishing_rod
give @a[team=SnowBattle] cooked_beef 5
give @a[team=SnowBattle] powder_snow_bucket{CanPlaceOn: ["minecraft:snow_block"]} 4

spreadplayers 611 82 10 21 false @a[team=SnowBattle]
scoreboard players set @a[team=SnowBattle] SnowBattle 1
execute as @a[team=SnowBattle] at @s run tp @s ~ 68 ~

scoreboard players set __PLAYING__ SnowBattleSettings 1

effect clear @a[team=SnowBattle]
effect give @a[team=SnowBattle] minecraft:regeneration 1 255
effect give @a[team=SnowBattle] minecraft:resistance 255 255 true
