#>siege:game/respawn


##Tagを外す
    tag @s remove Death


##リスポーン地点へTP
    execute if entity @a[team=Red] run function siege:game/tp with storage siege: Setting.SelectMap.RedPos
    execute if entity @a[team=Blue] run function siege:game/tp with storage siege: Setting.SelectMap.BluePos
    execute if entity @a[team=Green] run function siege:game/tp with storage siege: Setting.SelectMap.GreenPos
    execute if entity @a[team=Yellow] run function siege:game/tp with storage siege: Setting.SelectMap.YellowPos


##Scoreboards
    scoreboard players reset @s Znsi.Respawn
    scoreboard players reset @s Znsi.Tick


##矢を渡す
    $give @s arrow $(Arrows)