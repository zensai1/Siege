#>siege:game/addtag


##赤
    $execute if entity @s[team=Red] as @e[type=arrow,nbt={Owner:$(UUID)}] run tag @s add RedArrow


##青
    $execute if entity @s[team=Blue] as @e[type=arrow,nbt={Owner:$(UUID)}] run tag @s add BlueArrow


##緑
    $execute if entity @s[team=Green] as @e[type=arrow,nbt={Owner:$(UUID)}] run tag @s add GreenArrow


##黄
    $execute if entity @s[team=Yellow] as @e[type=arrow,nbt={Owner:$(UUID)}] run tag @s add YellowArrow


##内部処理
    scoreboard players reset @s Znsi.Use.Bow