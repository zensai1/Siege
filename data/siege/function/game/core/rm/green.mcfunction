#>siege:game/core/rm/green


##体力を減らす
    scoreboard players remove #Green Znsi.Health 1
    execute store result storage siege: Game.GreenHealth int 1 run scoreboard players get #Green Znsi.Health
    execute as @a at @s run playsound minecraft:entity.iron_golem.hurt record @s ~ ~ ~ 1 1.5
    kill @e[type=arrow,distance=..1.5,tag=!Greenarrow]


##体力を反映させる
    function siege:game/core/rm/ with storage siege: Game


##体力が0だったら破壊する
    execute if score #Green Znsi.Health matches ..0 run function siege:game/core/break/green