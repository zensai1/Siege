#>siege:gui/page1/four_teams


##4チームにわける
    team join Red @r[team=]
    team join Blue @r[team=]
    team join Green @r[team=]
    team join Yellow @r[team=]
    execute if entity @a[team=] run function siege:gui/page1/four_teams


##分岐を消す
    #execute if data storage siege: Branch run data remove storage siege: Branch