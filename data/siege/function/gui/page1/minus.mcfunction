#>siege:gui/page1/minus


##前処理する
    item replace entity @s player.cursor with air


##体力
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:27b}]}] if score *** Znsi.Health matches 2.. run scoreboard players remove *** Znsi.Health 2
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:27b}]}] store result storage siege: Setting.Health int 1 run scoreboard players get *** Znsi.Health


##矢の数
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:28b}]}] if score *** Znsi.Arrows matches 1.. run scoreboard players remove *** Znsi.Arrows 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:28b}]}] store result storage siege: Setting.Arrows int 1 run scoreboard players get *** Znsi.Arrows


##リスポーン時間
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:29b}]}] if score *** Znsi.Respawn matches 1.. run scoreboard players remove *** Znsi.Respawn 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:29b}]}] store result storage siege: Setting.Respawn int 1 run scoreboard players get *** Znsi.Respawn


##残り時間
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:30b}]}] if score *** Znsi.Time matches 30.. run scoreboard players remove *** Znsi.Time 30
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:30b}]}] store result storage siege: Setting.Time int 1 run scoreboard players get *** Znsi.Time


##MAP
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:31b}]}] run scoreboard players remove *** Znsi.SelectMap 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:31b}]}] if score *** Znsi.SelectMap matches ..0 run scoreboard players set *** Znsi.SelectMap 2


##TEAM
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:32b}]}] run scoreboard players remove *** Znsi.TeamMode 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:32b}]}] if score *** Znsi.TeamMode matches ..0 run scoreboard players set *** Znsi.TeamMode 3


##内部処理
    execute at @s run playsound minecraft:block.dispenser.dispense record @s ~ ~ ~ 1 1.5
    function siege:gui/page1/
    function siege:gui/page1/team_update
    function siege:gui/page1/map_update