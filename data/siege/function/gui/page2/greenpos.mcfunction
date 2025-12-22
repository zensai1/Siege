#>siege:gui/page2/greenpos


##緑チーム
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] store result storage siege: Setting.Map1.GreenPos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] store result storage siege: Setting.Map1.GreenPos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] store result storage siege: Setting.Map1.GreenPos.z int 1 run data get entity @s Pos[2] 1

    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage siege: Setting.Map2.GreenPos.x int 1 run data get entity @s Pos[0] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage siege: Setting.Map2.GreenPos.y int 1 run data get entity @s Pos[1] 1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] store result storage siege: Setting.Map2.GreenPos.z int 1 run data get entity @s Pos[2] 1