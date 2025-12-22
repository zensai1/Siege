#>siege:gui/page1/plus


##前処理する
    item replace entity @s player.cursor with air


##体力
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:9b}]}] run scoreboard players add *** Znsi.Health 2
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:9b}]}] store result storage siege: Setting.Health int 1 run scoreboard players get *** Znsi.Health


##矢の数
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:10b}]}] run scoreboard players add *** Znsi.Arrows 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:10b}]}] store result storage siege: Setting.Arrows int 1 run scoreboard players get *** Znsi.Arrows


##リスポーン時間
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:11b}]}] run scoreboard players add *** Znsi.Respawn 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:11b}]}] store result storage siege: Setting.Respawn int 1 run scoreboard players get *** Znsi.Respawn


##残り時間
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:12b}]}] run scoreboard players add *** Znsi.Time 30
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:12b}]}] store result storage siege: Setting.Time int 1 run scoreboard players get *** Znsi.Time


##MAP
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:13b}]}] run scoreboard players add *** Znsi.SelectMap 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:13b}]}] if score *** Znsi.SelectMap matches 3.. run scoreboard players set *** Znsi.SelectMap 1


##TEAM
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:14b}]}] run scoreboard players add *** Znsi.TeamMode 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:14b}]}] if score *** Znsi.TeamMode matches 4.. run scoreboard players set *** Znsi.TeamMode 1


##内部処理
    execute at @s run playsound minecraft:block.dispenser.dispense record @s ~ ~ ~ 1 1.5
    function siege:gui/page1/
    function siege:gui/page1/team_update
    function siege:gui/page1/map_update