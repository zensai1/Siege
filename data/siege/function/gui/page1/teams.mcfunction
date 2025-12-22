#>siege:gui/page1/teams


##何のモデルを持ってるかで分岐させる
    execute if items entity @s player.cursor redstone[item_model=glowstone_dust] run data modify storage siege: Branch set value "2team"
    execute if items entity @s player.cursor redstone[item_model=gunpowder] run data modify storage siege: Branch set value "3team"
    execute if items entity @s player.cursor redstone[item_model=sugar] run data modify storage siege: Branch set value "4team"


##前処理する
    item replace entity @s player.cursor with air


##チーム分けリセット
    team empty Red
    team empty Blue
    team empty Green
    team empty Yellow


##条件分岐
    execute if data storage siege: {Branch:"2team"} run function siege:gui/page1/two_teams
    execute if data storage siege: {Branch:"3team"} run function siege:gui/page1/three_teams
    execute if data storage siege: {Branch:"4team"} run function siege:gui/page1/four_teams


##内部処理
    execute if data storage siege: Branch run data remove storage siege: Branch
    playsound minecraft:entity.arrow.hit_player record @s
    function siege:gui/page1/