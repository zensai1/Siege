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
    execute if entity @a[team=Blue] as @r[team=Blue,tag=Leader] run function siege:game/tp with storage siege: Setting.SelectMap.BluePos
    execute if entity @a[team=Green] as @r[team=Green,tag=Leader] run function siege:game/tp with storage siege: Setting.SelectMap.GreenPos
    execute if entity @a[team=Yellow] as @r[team=Yellow,tag=Leader] run function siege:game/tp with storage siege: Setting.SelectMap.YellowPos
    execute as @r[tag=Leader,team=Red] run loot give @s loot siege:redcore
    execute as @r[tag=Leader,team=Blue] run loot give @s loot siege:bluecore
    execute as @r[tag=Leader,team=Green] run loot give @s loot siege:greencore
    execute as @r[tag=Leader,team=Yellow] run loot give @s loot siege:yellowcore
    effect give @a[tag=Leader] invisibility infinite 0 true


##残りはいったんロビーへ
    $tp @a[tag=!Leader] $(x) $(y) $(z)


##INFO
    scoreboard players reset 赤のコア： Znsi.Info
    scoreboard players reset 青のコア： Znsi.Info
    scoreboard players reset 緑のコア： Znsi.Info
    scoreboard players reset 黄のコア： Znsi.Info
    scoreboard players set *** Znsi.Time 60
    schedule function siege:timer/remove 1s
    scoreboard objectives setdisplay sidebar Znsi.Info


##Effect
    effect give @a saturation infinite 255 true
    effect give @a weakness infinite 255 true
    effect give @a instant_health 1 250 true