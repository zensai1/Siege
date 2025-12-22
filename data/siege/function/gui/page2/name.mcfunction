#>siege:gui/page2/name


##名前をstorageに入れる
    execute if items entity @s weapon.mainhand written_book[custom_model_data={strings:["Map1"]}] run data modify storage siege: Setting.Map1.Name set from entity @s SelectedItem.components.minecraft:written_book_content.title.raw
    execute if items entity @s weapon.mainhand written_book[custom_model_data={strings:["Map2"]}] run data modify storage siege: Setting.Map2.Name set from entity @s SelectedItem.components.minecraft:written_book_content.title.raw


##内部処理
    item replace entity @s weapon.mainhand with air
    execute if score @s Znsi.Page matches 200 run function siege:gui/page2/