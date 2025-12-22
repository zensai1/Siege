#>siege:gui/page3/


##前処理する
    item replace entity @s player.cursor with air


##GUIをセットする
    scoreboard players set @s Znsi.Page 300
    function siege:gui/clear

    loot replace entity @s inventory.0 loot siege:gui/plus_1
    loot replace entity @s inventory.1 loot siege:gui/plus_1
    loot replace entity @s inventory.2 loot siege:gui/plus_1
    loot replace entity @s inventory.3 loot siege:gui/plus_1

    loot replace entity @s inventory.9 loot siege:gui/page3/redcore
    loot replace entity @s inventory.10 loot siege:gui/page3/bluecore
    loot replace entity @s inventory.11 loot siege:gui/page3/greencore
    loot replace entity @s inventory.12 loot siege:gui/page3/yellowcore

    loot replace entity @s inventory.18 loot siege:gui/minus_1
    loot replace entity @s inventory.19 loot siege:gui/minus_1
    loot replace entity @s inventory.20 loot siege:gui/minus_1
    loot replace entity @s inventory.21 loot siege:gui/minus_1

    loot replace entity @s inventory.26 loot siege:gui/close