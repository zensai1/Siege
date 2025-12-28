#>siege:game/core/rm/blue


##体力を減らす
    scoreboard players remove #Blue Znsi.Health 1
    execute store result storage siege: Game.BlueHealth int 1 run scoreboard players get #Blue Znsi.Health
    execute as @a at @s run playsound minecraft:entity.iron_golem.hurt record @s ~ ~ ~ 1 1.5
    kill @e[type=arrow,distance=..1.5,tag=!Bluearrow]


##体力を反映させる
    function siege:game/core/rm/ with storage siege: Game


##体力が0だったら破壊する
    execute if score #Blue Znsi.Health matches ..0 run function siege:game/core/break/blue