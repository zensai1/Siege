#>siege:gui/page2/yellowpos


##黄チーム
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] store result storage siege: Setting.Map1.YellowPos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] store result storage siege: Setting.Map1.YellowPos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] store result storage siege: Setting.Map1.YellowPos.z int 1 run data get entity @s Pos[2] 1

    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage siege: Setting.Map2.YellowPos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage siege: Setting.Map2.YellowPos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage siege: Setting.Map2.YellowPos.z int 1 run data get entity @s Pos[2] 1