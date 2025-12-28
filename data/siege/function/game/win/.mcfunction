#>siege:game/win/


##全チーム共通
    execute as @a at @s run title @s title {"bold":true,"color":"gold","text":"Winner"}


##赤勝利
    execute if data storage siege: {Flag:["Blue","Green","Yellow"]} as @a at @s run title @s subtitle {"bold":true,"color":"red","text":"赤チーム"}


##青勝利
    execute if data storage siege: {Flag:["Red","Green","Yellow"]} as @a at @s run title @s subtitle {"bold":true,"color":"blue","text":"青チーム"}


##緑勝利
    execute if data storage siege: {Flag:["Red","Blue","Yellow"]} as @a at @s run title @s subtitle {"bold":true,"color":"green","text":"緑チーム"}


##黄勝利
    execute if data storage siege: {Flag:["Red","Blue","Green"]} as @a at @s run title @s subtitle {"bold":true,"color":"yellow","text":"黄チーム"}


##全チーム共通
    gamemode adventure @a
    function siege:game/reset with storage siege: Setting