#>siege:ticks/gaming


##準備中のみ実行するやつ
    execute if data storage siege: {Game:{State:preparation}} run function siege:ticks/preparation
    execute if data storage siege: {Game:{State:preparation}} run return 0


##矢関係
    execute as @a[scores={Znsi.Use.Bow=1..}] at @s run function siege:game/addtag with entity @s
    execute if entity @e[type=arrow,nbt={inGround:1b}] as @e[type=arrow,nbt={inGround:1b}] at @s run kill @s
    execute if entity @e[type=arrow] as @e[type=arrow] run data modify entity @s PierceLevel set value 127b
    execute if entity @e[type=arrow] as @e[type=arrow] run data modify entity @s crit set value 0b
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:arrow"}}] as @e[type=item,nbt={Item:{id:"minecraft:arrow"}}] at @s run kill @s
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:bow"}}] as @e[type=item,nbt={Item:{id:"minecraft:bow"}}] at @s run kill @s


##リロード
    execute as @a[scores={Znsi.Drop.Bow=1..}] at @s run function siege:game/reload/
    execute as @a[tag=Reloading] run scoreboard players add @s Znsi.Reload 1
    execute as @a[tag=Reloading,scores={Znsi.Reload=20}] at @s run xp add @s -1 levels
    execute as @a[tag=Reloading,scores={Znsi.Reload=20}] at @s run playsound minecraft:block.iron_door.close record @s ~ ~ ~ 1 1.5
    execute as @a[tag=Reloading,scores={Znsi.Reload=40}] at @s run xp add @s -1 levels
    execute as @a[tag=Reloading,scores={Znsi.Reload=40}] at @s run playsound minecraft:block.iron_door.close record @s ~ ~ ~ 1 1.5
    execute as @a[tag=Reloading,scores={Znsi.Reload=60}] at @s run xp add @s -1 levels
    execute as @a[tag=Reloading,scores={Znsi.Reload=60}] at @s run playsound minecraft:block.iron_door.close record @s ~ ~ ~ 1 1.5
    execute as @a[tag=Reloading,scores={Znsi.Reload=80}] at @s run function siege:game/reload/finish with storage siege: Setting


##core
    scoreboard players add @e[type=minecraft:item_display,tag=core] Znsi.Rotate 3
    execute as @e[type=minecraft:item_display,tag=core] at @s if score @s Znsi.Rotate matches 180.. run scoreboard players set @s Znsi.Rotate -180
    execute as @e[type=minecraft:item_display,tag=core] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s Znsi.Rotate

    execute as @e[type=minecraft:item_display,tag=redcore] at @s if entity @e[type=arrow,distance=..1,tag=!RedArrow] run function siege:game/core/rm/red
    execute as @e[type=minecraft:item_display,tag=bluecore] at @s if entity @e[type=arrow,distance=..1,tag=!BlueArrow] run function siege:game/core/rm/blue
    execute as @e[type=minecraft:item_display,tag=greencore] at @s if entity @e[type=arrow,distance=..1,tag=!GreenArrow] run function siege:game/core/rm/green
    execute as @e[type=minecraft:item_display,tag=yellowcore] at @s if entity @e[type=arrow,distance=..1,tag=!YellowArrow] run function siege:game/core/rm/yellow


##死亡
    execute as @a[tag=Death] at @s run title @s actionbar ["リスポーンまで後",{"score":{"name":"@s","objective":"Znsi.Respawn"}},"秒"]
    execute as @a[scores={Znsi.Death=1}] run function siege:game/death with storage siege: Setting.Lobby.Pos
    execute as @a[tag=Death] run scoreboard players add @s Znsi.Tick 1
    execute as @a[tag=Death,scores={Znsi.Tick=20}] run scoreboard players remove @s Znsi.Respawn 1
    execute as @a[tag=Death,scores={Znsi.Tick=20}] at @s run playsound minecraft:block.dispenser.dispense record @s
    execute as @a[tag=Death,scores={Znsi.Tick=20}] run scoreboard players reset @s Znsi.Tick
    execute as @a[tag=Death,scores={Znsi.Respawn=-1}] run function siege:game/respawn with storage siege: Setting