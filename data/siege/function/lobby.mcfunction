#>siege:lobby


##ロビーの座標をせTt
    execute store result storage siege: Setting.Lobby.Pos.x int 1 run data get entity @s Pos[0]
    execute store result storage siege: Setting.Lobby.Pos.y int 1 run data get entity @s Pos[1]
    execute store result storage siege: Setting.Lobby.Pos.z int 1 run data get entity @s Pos[2]