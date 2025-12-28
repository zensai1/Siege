#>siege:game/compass/red


##give
    $execute if entity @s[team=Red] run loot give @s loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:compass",functions:[{function:"minecraft:set_name",entity:"this",target:"custom_name",name:{text:"コアコンパス",color:"light_purple",italic:0b}},{function:"minecraft:set_lore",entity:"this",lore:[{text:"自分のチームのコアを指し示す",color:"gray",italic:0b}],mode:"replace_all"},{function:"minecraft:set_components",components:{"minecraft:enchantment_glint_override":0b,"minecraft:lodestone_tracker":{target:{pos:[$(rx),$(ry),$(rz)],dimension:"minecraft:overworld"},tracked:0b}}}]}]}]}