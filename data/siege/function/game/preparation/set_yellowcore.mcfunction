#>siege:game/preparation/set_yellowcore


##リスポーンに近すぎないかチェック
    execute as @e[tag=YellowRespawn] at @s positioned ~-10 ~-25 ~-10 as @a[dx=19,dy=49,dz=19,scores={Znsi.Use.Yellowcore=1..}] run tag @s add Near
    execute if entity @s[tag=Near] run tellraw @s [{text:"["},{text:"Error",color:"red"},{text:"]",color:"white"},{text:"リスポーン地点に近すぎます",color:"red"}]
    execute if entity @s[tag=Near] run loot give @s loot siege:yellowcore


##座標取得
    execute if entity @s[tag=!Near] store result storage siege: Game.CorePos.yx int 1 run data get entity @s Pos[0] 1
    execute if entity @s[tag=!Near] store result score @s Znsi.Temp run data get entity @s Pos[1]
    execute if entity @s[tag=!Near] run scoreboard players add @s Znsi.Temp 1
    execute if entity @s[tag=!Near] store result storage siege: Game.CorePos.yy int 1 run scoreboard players get @s Znsi.Temp
    execute if entity @s[tag=!Near] store result storage siege: Game.CorePos.yz int 1 run data get entity @s Pos[2] 1


##内部処理
    execute if entity @s[tag=!Near] run playsound minecraft:block.anvil.use record @s ~ ~ ~ 1 0.5
    scoreboard players reset @s Znsi.Use.Yellowcore
    tag @s remove Near