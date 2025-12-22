#>siege:gui/page1/team_update


##チーム振り分けを更新
    execute if score *** Znsi.TeamMode matches 1 run item modify entity @s inventory.14 siege:page1/two_teams
    execute if score *** Znsi.TeamMode matches 2 run item modify entity @s inventory.14 siege:page1/three_teams
    execute if score *** Znsi.TeamMode matches 3 run item modify entity @s inventory.14 siege:page1/four_teams