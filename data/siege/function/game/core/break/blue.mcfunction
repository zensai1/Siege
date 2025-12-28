#>siege:game/core/break/blue


##コアを破壊する
    execute as @a at @s run playsound minecraft:entity.generic.explode record @s
    tellraw @a [{"color":"green","text":"[Announce]"},{"color":"red","text":" 青チームのコアが破壊されました"}]
    kill @e[tag=bluecore]
    gamemode spectator @a[team=Blue]


##Info
    scoreboard players reset 青のコア： Znsi.Info


##Flag
    data modify storage siege: Flag append value Blue
    scoreboard players add $FLAG Znsi.Temp 1


##PLAYER
    tag @a[team=Blue] remove Death
    tag @a[team=Blue] remove Reloading
    scoreboard players reset @a[team=Blue] Znsi.Reload
    scoreboard players reset @a[team=Blue] Znsi.Respawn
    

##WIN
    execute if score $FLAG Znsi.Temp >= *** Znsi.TeamMode run function siege:game/win/