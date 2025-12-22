#>siege:gui/page2/bluepos


##青チーム
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] store result storage siege: Setting.Map1.BluePos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] store result storage siege: Setting.Map1.BluePos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] store result storage siege: Setting.Map1.BluePos.z int 1 run data get entity @s Pos[2] 1

    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage siege: Setting.Map2.BluePos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage siege: Setting.Map2.BluePos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage siege: Setting.Map2.BluePos.z int 1 run data get entity @s Pos[2] 1