#>siege:game/core/break/green


##コアを破壊する
    execute as @a at @s run playsound minecraft:entity.generic.explode record @s
    tellraw @a [{"color":"green","text":"[Announce]"},{"color":"red","text":" 緑チームのコアが破壊されました"}]
    kill @e[tag=greencore]
    gamemode spectator @a[team=Green]


##Info
    scoreboard players reset 緑のコア： Znsi.Info


##Flag
    data modify storage siege: Flag append value Green
    scoreboard players add $FLAG Znsi.Temp 1


##PLAYER
    tag @a[team=Green] remove Death
    tag @a[team=Green] remove Reloading
    scoreboard players reset @a[team=Green] Znsi.Reload
    scoreboard players reset @a[team=Green] Znsi.Respawn


##WIN
    execute if score $FLAG Znsi.Temp >= *** Znsi.TeamMode run function siege:game/win/