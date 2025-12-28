#>siege:game/core/break/yellow


##コアを破壊する
    execute as @a at @s run playsound minecraft:entity.generic.explode record @s
    tellraw @a [{"color":"green","text":"[Announce]"},{"color":"red","text":" 黄チームのコアが破壊されました"}]
    kill @e[tag=yellowcore]
    gamemode spectator @a[team=Yellow]


##Info
    scoreboard players reset 黄のコア： Znsi.Info


##Flag
    data modify storage siege: Flag append value Yellow
    scoreboard players add $FLAG Znsi.Temp 1


##PLAYER
    tag @a[team=Yellow] remove Death
    tag @a[team=Yellow] remove Reloading
    scoreboard players reset @a[team=Yellow] Znsi.Reload
    scoreboard players reset @a[team=Yellow] Znsi.Respawn


##WIN
    execute if score $FLAG Znsi.Temp >= *** Znsi.TeamMode run function siege:game/win/