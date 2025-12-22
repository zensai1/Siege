#>siege:gui/page1/


##GUIをセットする
    scoreboard players set @s Znsi.Page 100
    function siege:gui/clear
    
    loot replace entity @s inventory.0 loot siege:gui/plus_1
    loot replace entity @s inventory.1 loot siege:gui/plus_1
    loot replace entity @s inventory.2 loot siege:gui/plus_1
    loot replace entity @s inventory.3 loot siege:gui/plus_30
    loot replace entity @s inventory.4 loot siege:gui/up
    loot replace entity @s inventory.5 loot siege:gui/up

    #loot replace entity @s inventory.8 loot bow_pvp:gui/job_details

    loot replace entity @s inventory.9 loot siege:gui/page1/health
    loot replace entity @s inventory.10 loot siege:gui/page1/arrows
    loot replace entity @s inventory.11 loot siege:gui/page1/respawn
    loot replace entity @s inventory.12 loot siege:gui/page1/time
    loot replace entity @s inventory.13 loot siege:gui/page1/maps
    loot replace entity @s inventory.14 loot siege:gui/page1/set_team
    loot replace entity @s inventory.15 loot siege:gui/page1/cores


    loot replace entity @s inventory.18 loot siege:gui/minus_1
    loot replace entity @s inventory.19 loot siege:gui/minus_1
    loot replace entity @s inventory.20 loot siege:gui/minus_1
    loot replace entity @s inventory.21 loot siege:gui/minus_30
    loot replace entity @s inventory.22 loot siege:gui/down
    loot replace entity @s inventory.23 loot siege:gui/down


    loot replace entity @s inventory.26 loot siege:gui/page1/start


##
    function siege:gui/page1/team_update
    function siege:gui/page1/map_update