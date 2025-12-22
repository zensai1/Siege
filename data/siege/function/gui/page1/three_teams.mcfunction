#>siege:gui/page1/three_teams


##3チームにわける
    team join Red @r[team=]
    team join Blue @r[team=]
    team join Green @r[team=]
    execute if entity @a[team=] run function siege:gui/page1/three_teams


##分岐を消す
    #execute if data storage siege: Branch run data remove storage siege: Branch