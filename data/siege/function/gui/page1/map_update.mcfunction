#>siege:gui/page1/map_update


##MAP表記を更新する
    execute if score *** Znsi.SelectMap matches 1 run data modify storage siege: Setting.SelectMap set from storage siege: Setting.Map1
    execute if score *** Znsi.SelectMap matches 2 run data modify storage siege: Setting.SelectMap set from storage siege: Setting.Map2


##GUI更新
    loot replace entity @s inventory.13 loot siege:gui/page1/maps