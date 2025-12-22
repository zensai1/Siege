#>siege:gui/page1/two_teams

say 2teams
##2チームにわける
    team join Red @r[team=]
    team join Blue @r[team=]
    execute if entity @a[team=] run function siege:gui/page1/two_teams