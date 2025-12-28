#>siege:game/reset


##Storage
    data modify storage siege: State set value waiting
    data remove storage siege: Game.CorePos
    data remove storage siege: Flag


##Scoreboards
    $scoreboard players set *** Znsi.Time $(Time)
    $scoreboard players set #Red Znsi.Health $(RedHealth)
    $scoreboard players set #Blue Znsi.Health $(BlueHealth)
    $scoreboard players set #Green Znsi.Health $(GreenHealth)
    $scoreboard players set #Yellow Znsi.Health $(YellowHealth)
    $scoreboard players set *** Znsi.Time $(Time)
    scoreboard players reset $FLAG Znsi.Temp


##Teams
    team empty Red
    team empty Blue
    team empty Green
    team empty Yellow


##Entity
    kill @e[type=marker]
    kill @e[tag=core,type=item_display]


##PLAYER
    tag @a remove Leader
    clear @a


##Schedule
    schedule clear siege:timer/remove
    

##GUi
    execute as @a[tag=op] at @s run function siege:gui/page1/


##TEAMS
    $team modify Redcore suffix {"color":"red","text":"$(RedHealth)"}
    $team modify Bluecore suffix {"color":"blue","text":"$(BlueHealth)"}
    $team modify Greencore suffix {"color":"green","text":"$(GreenHealth)"}
    $team modify Yellowcore suffix {"color":"yellow","text":"$(YellowHealth)"}


##Effect
    effect give @a saturation infinite 255 true
    effect give @a weakness infinite 255 true
    effect give @a instant_health 1 250 true


##INFO
    scoreboard objectives setdisplay sidebar
    scoreboard players set 準備時間： Znsi.Info 1
    scoreboard players reset 残り時間： Znsi.Info
    scoreboard players set 赤のコア： Znsi.Info 0
    scoreboard players set 青のコア： Znsi.Info -1
    scoreboard players set 緑のコア： Znsi.Info -2
    scoreboard players set 黄のコア： Znsi.Info -3
