#>siege:loads/waiting

##
    tellraw @a [{text:"[Siege]"},{text:"Reload"}]


##Scoreboards
    scoreboard objectives add Znsi.Leave custom:leave_game "退室"
    scoreboard objectives add Znsi.Page dummy "InventoryGUI管理"
    scoreboard objectives add Znsi.Health dummy "体力"
    scoreboard objectives add Znsi.Arrows dummy "矢の最大所持数"
    scoreboard objectives add Znsi.Respawn dummy "リスポーン時間"
    scoreboard objectives add Znsi.Time dummy "残り時間"
    scoreboard objectives add Znsi.SelectMap dummy "選択したMAP"
    scoreboard objectives add Znsi.TeamMode dummy "何チームで振り分けするか"