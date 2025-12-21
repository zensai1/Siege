#>siege:ticks/


##GAMEMODE管理
    execute if data storage siege: {State:waiting} run function siege:ticks/waiting
    execute if data storage siege: {State:gaming} run function siege:ticks/gaming


##退室検知
    execute if entity @a[scores={Znsi.Leave=1..}] as @a[scores={Znsi.Leave=1..}] run function siege:system/leave