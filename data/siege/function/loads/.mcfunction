#>siege:loads/


##GAMEMODE管理
    execute if data storage siege: {State:waiting} run function siege:loads/waiting
    execute if data storage siege: {State:gaming} run function siege:loads/gaming
