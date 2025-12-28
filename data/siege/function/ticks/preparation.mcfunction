#>siege:ticks/preparation


##コア設置
    execute as @a[scores={Znsi.Use.Redcore=1..}] at @s run function siege:game/preparation/set_redcore
    execute as @a[scores={Znsi.Use.Bluecore=1..}] at @s run function siege:game/preparation/set_bluecore
    execute as @a[scores={Znsi.Use.Greencore=1..}] at @s run function siege:game/preparation/set_greencore
    execute as @a[scores={Znsi.Use.Yellowcore=1..}] at @s run function siege:game/preparation/set_yellowcore