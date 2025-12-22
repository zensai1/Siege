#>siege:gui/page2/


##前処理する
    item replace entity @s player.cursor with air


##GUIをセットする
    scoreboard players set @s Znsi.Page 200
    function siege:gui/clear

    loot replace entity @s inventory.0 loot siege:gui/page2/map1
    loot replace entity @s inventory.1 loot siege:gui/page2/map2

    loot replace entity @s inventory.26 loot siege:gui/close


##内部処理
    playsound entity.arrow.hit_player record @s