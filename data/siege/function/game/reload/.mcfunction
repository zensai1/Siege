#>siege:game/reload


##弓を戻す
    loot give @s loot siege:bow
    scoreboard players reset @s Znsi.Drop.Bow


##矢の数が0だったら進ませる
    execute store result score @s Znsi.Arrows if items entity @s container.* arrow
    execute if score @s Znsi.Arrows matches 1.. run return 0
    execute if entity @s[tag=Reloading] run return 0
    execute if entity @s[tag=Death] run return 0


##ReloadTagを付ける
    tag @s add Reloading
    xp set @s 3 levels