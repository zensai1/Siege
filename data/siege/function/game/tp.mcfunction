#>siege:game/tp


##テレポート
    $tp @s $(x) $(y) $(z)


##Marker召喚
    $execute if entity @s[tag=Leader,team=Red] run summon marker $(x) $(y) $(z) {Tags:["RedRespawn"]}
    $execute if entity @s[tag=Leader,team=Blue] run summon marker $(x) $(y) $(z) {Tags:["BlueRespawn"]}
    $execute if entity @s[tag=Leader,team=Green] run summon marker $(x) $(y) $(z) {Tags:["GreenRespawn"]}
    $execute if entity @s[tag=Leader,team=Yellow] run summon marker $(x) $(y) $(z) {Tags:["YellowRespawn"]}