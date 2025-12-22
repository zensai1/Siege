#>siege:gui/page2/set


##MAP名を決める
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] if data storage siege: Setting.Map1.YellowPos.z unless data storage siege: Setting.Map1.Name run loot give @s loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:writable_book",functions:[{function:"minecraft:set_lore",entity:"this",lore:[{text:"署名し本のタイトルを入力することで",color:"gray",italic:false},{text:"MAP名を変更できます。",color:"gray",italic:false}],mode:"replace_all"},{function:"minecraft:set_custom_data",tag:{Maps:1b}},{function:"minecraft:set_custom_model_data",strings:{values:["Map1"],mode:"replace_all"}}]}]}],functions:[]}
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] if data storage siege: Setting.Map2.YellowPos.z unless data storage siege: Setting.Map2.Name run loot give @s loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:writable_book",functions:[{function:"minecraft:set_lore",entity:"this",lore:[{text:"署名し本のタイトルを入力することで",color:"gray",italic:false},{text:"MAP名を変更できます。",color:"gray",italic:false}],mode:"replace_all"},{function:"minecraft:set_custom_data",tag:{Maps:1b}},{function:"minecraft:set_custom_model_data",strings:{values:["Map2"],mode:"replace_all"}}]}]}],functions:[]}


##黄チーム座標
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] if data storage siege: Setting.Map1.GreenPos.z unless data storage siege: Setting.Map1.YellowPos.z run function siege:gui/page2/yellowpos
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] if data storage siege: Setting.Map2.GreenPos.z unless data storage siege: Setting.Map2.YellowPos.z run function siege:gui/page2/yellowpos


##緑チーム座標
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] if data storage siege: Setting.Map1.BluePos.z unless data storage siege: Setting.Map1.GreenPos.z run function siege:gui/page2/greenpos
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] if data storage siege: Setting.Map2.BluePos.z unless data storage siege: Setting.Map2.GreenPos.z run function siege:gui/page2/greenpos


##青チーム座標
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] if data storage siege: Setting.Map1.RedPos.z unless data storage siege: Setting.Map1.BluePos.z run function siege:gui/page2/bluepos
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] if data storage siege: Setting.Map2.RedPos.z unless data storage siege: Setting.Map2.BluePos.z run function siege:gui/page2/bluepos


##赤チーム座標
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] unless data storage siege: Setting.Map1.RedPos.z run function siege:gui/page2/redpos
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] unless data storage siege: Setting.Map2.RedPos.z run function siege:gui/page2/redpos


##初期化
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:9b}]}] if data storage siege: Setting.Map1.Name run data remove storage siege: Setting.Map1
    execute if entity @s[nbt=!{Inventory:[{id:"minecraft:map",Slot:10b}]}] if data storage siege: Setting.Map2.Name run data remove storage siege: Setting.Map2


##元に戻す
    function siege:gui/page2/