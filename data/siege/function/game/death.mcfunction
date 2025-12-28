#>siege:game/death


##ロビーに一回テレポート
    $tp @s $(x) $(y) $(z)


##Tag
    tag @s add Death
    tag @s remove Reloading
    scoreboard players reset @s Znsi.Reload
    xp set @s 0 levels
    scoreboard players reset @s Znsi.Death
    scoreboard players operation @s Znsi.Respawn = *** Znsi.Respawn