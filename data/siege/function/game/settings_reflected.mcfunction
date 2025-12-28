#>siege:game/settings_reflected


##セッティングを反映させる
    $execute as @a run attribute @s max_health base set $(Health).0

    $scoreboard players set *** Znsi.Time $(Time)
    $scoreboard players set #Red Znsi.Health $(RedHealth)
    $scoreboard players set #Blue Znsi.Health $(BlueHealth)
    $scoreboard players set #Green Znsi.Health $(GreenHealth)
    $scoreboard players set #Yellow Znsi.Health $(YellowHealth)

    $team modify Redcore suffix {"color":"red","text":"$(RedHealth)"}
    $team modify Bluecore suffix {"color":"blue","text":"$(BlueHealth)"}
    $team modify Greencore suffix {"color":"green","text":"$(GreenHealth)"}
    $team modify Yellowcore suffix {"color":"yellow","text":"$(YellowHealth)"}

    $give @a arrow $(Arrows)