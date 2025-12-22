#>siege:gui/page3/plus


##前処理する
    item replace entity @s player.cursor with air


##赤
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:9b}]}] run scoreboard players add #Red Znsi.Health 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:9b}]}] store result storage siege: Setting.RedHealth int 1 run scoreboard players get #Red Znsi.Health


##青
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:10b}]}] run scoreboard players add #Blue Znsi.Health 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:10b}]}] store result storage siege: Setting.BlueHealth int 1 run scoreboard players get #Blue Znsi.Health


##緑
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:11b}]}] run scoreboard players add #Green Znsi.Health 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:11b}]}] store result storage siege: Setting.GreenHealth int 1 run scoreboard players get #Green Znsi.Health


##黄
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:12b}]}] run scoreboard players add #Yellow Znsi.Health 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:12b}]}] store result storage siege: Setting.YellowHealth int 1 run scoreboard players get #Yellow Znsi.Health


##元に戻す
    function siege:gui/page3/