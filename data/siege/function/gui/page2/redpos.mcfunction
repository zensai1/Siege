#>siege:gui/page2/redpos


##赤チーム
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] store result storage siege: Setting.Map1.RedPos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] store result storage siege: Setting.Map1.RedPos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] store result storage siege: Setting.Map1.RedPos.z int 1 run data get entity @s Pos[2] 1

    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage siege: Setting.Map2.RedPos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage siege: Setting.Map2.RedPos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage siege: Setting.Map2.RedPos.z int 1 run data get entity @s Pos[2] 1