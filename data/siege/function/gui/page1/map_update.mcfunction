#>siege:gui/page1/map_update


##MAP表記を更新する
    execute if score *** Znsi.SelectMap matches 1 run data modify storage siege: Setting.SelectMap set from storage siege: Setting.Map1
    execute if score *** Znsi.SelectMap matches 2 run data modify storage siege: Setting.SelectMap set from storage siege: Setting.Map2
    execute if score *** Znsi.SelectMap matches 3 run data modify storage siege: Setting.SelectMap set from storage siege: Setting.Map3
    execute if score *** Znsi.SelectMap matches 4 run data modify storage siege: Setting.SelectMap set from storage siege: Setting.Map4
    execute if score *** Znsi.SelectMap matches 5 run data modify storage siege: Setting.SelectMap set from storage siege: Setting.Map5
    execute if score *** Znsi.SelectMap matches 6 run data modify storage siege: Setting.SelectMap set from storage siege: Setting.Map6