#>siege/ticks/waiting


##GUI
    execute as @a[tag=op] at @s if items entity @s player.cursor red_stained_glass_pane if score @s Znsi.Page matches 100 run function siege:gui/page1/plus
    execute as @a[tag=op] at @s if items entity @s player.cursor blue_stained_glass_pane if score @s Znsi.Page matches 100 run function siege:gui/page1/minus