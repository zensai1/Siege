#>siege:gui/close


##前処理
    item replace entity @s player.cursor with air
    playsound minecraft:block.barrel.close record @s
    function siege:gui/clear


##GUIセット
    function siege:gui/page1/