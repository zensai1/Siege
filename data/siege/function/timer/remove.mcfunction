#>siege:timer/remove


##減少
    execute if score *** Znsi.Time matches 1.. run scoreboard players remove *** Znsi.Time 1


##反映させる
    execute store result storage siege: Game.Time int 1 run scoreboard players get *** Znsi.Time
    function siege:timer/ with storage siege: Game


##1秒以上だったら再帰
    execute if score *** Znsi.Time matches 1.. run schedule function siege:timer/remove 1s


##0秒
    execute if data storage siege: {Game:{State:preparation}} if score *** Znsi.Time matches 0 run schedule function siege:game/start 1s
    execute unless data storage siege: {Game:{State:preparation}} if score *** Znsi.Time matches 0 run schedule function siege:game/finish 1s
