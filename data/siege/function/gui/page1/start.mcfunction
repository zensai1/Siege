#>siege:gui/page1/start


##全部持ってるものを消す
    clear @a

    
##ゲームの進行状況を変更
    data modify storage siege: State set value gaming
    data modify storage siege: Game.State set value preparation


##チームの代表をテレポート
    tag @r[team=Red] add Leader
    tag @r[team=Blue] add Leader
    tag @r[team=Green] add Leader
    tag @r[team=Yellow] add Leader
    execute as @r[team=Red,tag=Leader] run function siege:game/tp with storage siege: Setting.SelectMap.RedPos
    execute as @r[team=Blue,tag=Leader] run function siege:game/tp with storage siege: Setting.SelectMap.BluePos
    execute as @r[team=Green,tag=Leader] run function siege:game/tp with storage siege: Setting.SelectMap.GreenPos
    execute as @r[team=Yellow,tag=Leader] run function siege:game/tp with storage siege: Setting.SelectMap.YellowPos


##INFO
    scoreboard players set *** Znsi.Time 60
    schedule function siege:timer/remove 1s