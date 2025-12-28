#>siege:game/core/break/red


##コアを破壊する
    execute as @a at @s run playsound minecraft:entity.generic.explode record @s
    tellraw @a [{"color":"green","text":"[Announce]"},{"color":"red","text":" 赤チームのコアが破壊されました"}]
    kill @e[tag=redcore]
    gamemode spectator @a[team=Red]


##Info
    scoreboard players reset 赤のコア： Znsi.Info


##Flag
    data modify storage siege: Flag append value Red
    scoreboard players add $FLAG Znsi.Temp 1


##PLAYER
    tag @a[team=Red] remove Death
    tag @a[team=Red] remove Reloading
    scoreboard players reset @a[team=Red] Znsi.Reload
    scoreboard players reset @a[team=Red] Znsi.Respawn


##WIN
    execute if score $FLAG Znsi.Temp >= *** Znsi.TeamMode run function siege:game/win/