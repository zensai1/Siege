#>siege:game/start


    execute as @a at @s run playsound minecraft:entity.player.levelup record @s ~ ~ ~ 1 0.
    

##準備フラグを消す
    data remove storage siege: Game.State
    execute as @a[tag=Leader] at @s run tag @s remove Leader


##テレポート
    execute as @a[team=Red] run function siege:game/tp with storage siege: Setting.SelectMap.RedPos
    execute as @a[team=Blue] run function siege:game/tp with storage siege: Setting.SelectMap.BluePos
    execute as @a[team=Green] run function siege:game/tp with storage siege: Setting.SelectMap.GreenPos
    execute as @a[team=Yellow] run function siege:game/tp with storage siege: Setting.SelectMap.YellowPos
    effect clear @a invisibility


##アイテムを渡す
    clear @a
    loot give @a loot siege:bow
    execute as @a[team=Red] run function siege:game/compass/red with storage siege: Game.CorePos
    execute as @a[team=Blue] run function siege:game/compass/blue with storage siege: Game.CorePos
    execute as @a[team=Green] run function siege:game/compass/green with storage siege: Game.CorePos
    execute as @a[team=Yellow] run function siege:game/compass/yellow with storage siege: Game.CorePos


##設定を反映させる
    function siege:game/settings_reflected with storage siege: Setting


##コア呼び出し
    execute if entity @a[team=Red] run function siege:game/core/summon_red with storage siege: Game.CorePos
    execute if entity @a[team=Blue] run function siege:game/core/summon_blue with storage siege: Game.CorePos
    execute if entity @a[team=Green] run function siege:game/core/summon_green with storage siege: Game.CorePos
    execute if entity @a[team=Yellow] run function siege:game/core/summon_yellow with storage siege: Game.CorePos


##Storage
    execute store result storage siege: Game.RedHealth int 1 run scoreboard players get #Red Znsi.Health
    execute store result storage siege: Game.BlueHealth int 1 run scoreboard players get #Blue Znsi.Health
    execute store result storage siege: Game.GreenHealth int 1 run scoreboard players get #Green Znsi.Health
    execute store result storage siege: Game.YellowHealth int 1 run scoreboard players get #Yellow Znsi.Health


##INFO
    scoreboard players set 赤のコア： Znsi.Info 0
    scoreboard players set 青のコア： Znsi.Info -1
    scoreboard players set 緑のコア： Znsi.Info -2
    scoreboard players set 黄のコア： Znsi.Info -3
    scoreboard players reset 準備時間： Znsi.Info
    scoreboard players set 残り時間： Znsi.Info 1
    schedule function siege:timer/remove 1s
    execute store result score *** Znsi.Temp if entity @e[type=item_display,tag=redcore]
    execute if score *** Znsi.Temp matches 0 run scoreboard players reset 赤のコア： Znsi.Info
    execute if score *** Znsi.Temp matches 0 run gamemode spectator @a[team=Red]
    execute if score *** Znsi.Temp matches 0 run data modify storage siege: Flag append value Red
    execute if score *** Znsi.Temp matches 0 run scoreboard players add $FLAG Znsi.Temp 1

    execute store result score *** Znsi.Temp if entity @e[type=item_display,tag=bluecore]
    execute if score *** Znsi.Temp matches 0 run scoreboard players reset 青のコア： Znsi.Info
    execute if score *** Znsi.Temp matches 0 run gamemode spectator @a[team=Blue]
    execute if score *** Znsi.Temp matches 0 run data modify storage siege: Flag append value Blue
    execute if score *** Znsi.Temp matches 0 if score *** Znsi.TeamMode matches 1.. run scoreboard players add $FLAG Znsi.Temp 1

    execute store result score *** Znsi.Temp if entity @e[type=item_display,tag=greencore]
    execute if score *** Znsi.Temp matches 0 run scoreboard players reset 緑のコア： Znsi.Info
    execute if score *** Znsi.Temp matches 0 run gamemode spectator @a[team=Green]
    execute if score *** Znsi.Temp matches 0 run data modify storage siege: Flag append value Green
    execute if score *** Znsi.Temp matches 0 if score *** Znsi.TeamMode matches 2.. run scoreboard players add $FLAG Znsi.Temp 1

    execute store result score *** Znsi.Temp if entity @e[type=item_display,tag=yellowcore]
    execute if score *** Znsi.Temp matches 0 run scoreboard players reset 黄のコア： Znsi.Info
    execute if score *** Znsi.Temp matches 0 run gamemode spectator @a[team=Yellow]
    execute if score *** Znsi.Temp matches 0 run data modify storage siege: Flag append value Yellow
    execute if score *** Znsi.Temp matches 0 if score *** Znsi.TeamMode matches 3 run scoreboard players add $FLAG Znsi.Temp 1