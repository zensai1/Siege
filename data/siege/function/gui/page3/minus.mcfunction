#>siege:gui/page3/minus


##前処理する
    item replace entity @s player.cursor with air


##赤
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:27b}]}] if score #Red Znsi.Health matches 2.. run scoreboard players remove #Red Znsi.Health 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:27b}]}] store result storage siege: Setting.RedHealth int 1 run scoreboard players get #Red Znsi.Health


##青
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:28b}]}] if score #Blue Znsi.Health matches 2.. run scoreboard players remove #Blue Znsi.Health 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:28b}]}] store result storage siege: Setting.BlueHealth int 1 run scoreboard players get #Blue Znsi.Health


##緑
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:29b}]}] if score #Green Znsi.Health matches 2.. run scoreboard players remove #Green Znsi.Health 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:29b}]}] store result storage siege: Setting.GreenHealth int 1 run scoreboard players get #Green Znsi.Health


##黄
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:30b}]}] if score #Yellow Znsi.Health matches 2.. run scoreboard players remove #Yellow Znsi.Health 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:30b}]}] store result storage siege: Setting.YellowHealth int 1 run scoreboard players get #Yellow Znsi.Health


##元に戻す  
    function siege:gui/page3/
    execute at @s run playsound minecraft:block.dispenser.dispense record @s ~ ~ ~ 1 1.5