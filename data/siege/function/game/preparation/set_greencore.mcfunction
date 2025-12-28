#>siege:game/preparation/set_greencore


##リスポーンに近すぎないかチェック
    execute as @e[tag=GreenRespawn] at @s positioned ~-10 ~-25 ~-10 as @a[dx=19,dy=49,dz=19,scores={Znsi.Use.Greencore=1..}] run tag @s add Near
    execute if entity @s[tag=Near] run tellraw @s [{text:"["},{text:"Error",color:"red"},{text:"]",color:"white"},{text:"リスポーン地点に近すぎます",color:"red"}]
    execute if entity @s[tag=Near] run loot give @s loot siege:greencore


##座標取得
    execute if entity @s[tag=!Near] store result storage siege: Game.CorePos.gx int 1 run data get entity @s Pos[0] 1
    execute if entity @s[tag=!Near] store result score @s Znsi.Temp run data get entity @s Pos[1]
    execute if entity @s[tag=!Near] run scoreboard players add @s Znsi.Temp 1
    execute if entity @s[tag=!Near] store result storage siege: Game.CorePos.gy int 1 run scoreboard players get @s Znsi.Temp
    execute if entity @s[tag=!Near] store result storage siege: Game.CorePos.gz int 1 run data get entity @s Pos[2] 1


##内部処理
    execute if entity @s[tag=!Near] run playsound minecraft:block.anvil.use record @s ~ ~ ~ 1 0.5
    scoreboard players reset @s Znsi.Use.Greencore
    tag @s remove Near