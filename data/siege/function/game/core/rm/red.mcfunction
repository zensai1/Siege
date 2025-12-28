#>siege:game/core/rm/red


##体力を減らす
    scoreboard players remove #Red Znsi.Health 1
    execute store result storage siege: Game.RedHealth int 1 run scoreboard players get #Red Znsi.Health
    execute as @a at @s run playsound minecraft:entity.iron_golem.hurt record @s ~ ~ ~ 1 1.5
    kill @e[type=arrow,distance=..1.5,tag=!Redarrow]


##体力を反映させる
    function siege:game/core/rm/ with storage siege: Game


##体力が0だったら破壊する
    execute if score #Red Znsi.Health matches ..0 run function siege:game/core/break/red