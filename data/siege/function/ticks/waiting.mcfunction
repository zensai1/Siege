#>siege/ticks/waiting


##GUI
    ##PAGE1
        execute as @a[tag=op] at @s if items entity @s player.cursor red_stained_glass_pane if score @s Znsi.Page matches 100 run function siege:gui/page1/plus
        execute as @a[tag=op] at @s if items entity @s player.cursor blue_stained_glass_pane if score @s Znsi.Page matches 100 run function siege:gui/page1/minus
        execute as @a[tag=op] at @s if items entity @s player.cursor compass if score @s Znsi.Page matches 100 run function siege:gui/page2/
        execute as @a[tag=op] at @s if items entity @s player.cursor white_wool if score @s Znsi.Page matches 100 run function siege:gui/page3/
        execute as @a[tag=op] at @s if items entity @s player.cursor redstone if score @s Znsi.Page matches 100 run function siege:gui/page1/teams
        execute as @a[tag=op] at @s if items entity @s player.cursor lantern if score @s Znsi.Page matches 100 run function siege:gui/page1/start


    ##PAGE2
        execute as @a[tag=op] at @s if score @s Znsi.Page matches 200 if items entity @s player.cursor map run function siege:gui/page2/set
        execute as @a[tag=op] at @s if items entity @s weapon.mainhand written_book[custom_data={Maps:1b}] run function siege:gui/page2/name

    ##PAGE3
        execute as @a[tag=op] at @s if items entity @s player.cursor red_stained_glass_pane if score @s Znsi.Page matches 300 run function siege:gui/page3/plus
        execute as @a[tag=op] at @s if items entity @s player.cursor blue_stained_glass_pane if score @s Znsi.Page matches 300 run function siege:gui/page3/minus


    execute as @a[tag=op] at @s if score @s Znsi.Page matches 200.. if items entity @s player.cursor barrier run function siege:gui/close