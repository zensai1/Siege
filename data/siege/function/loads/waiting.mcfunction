#>siege:loads/waiting


##Scoreboards
    scoreboard objectives add Znsi.Info dummy {"color":"aqua","text":"Information"}
    scoreboard objectives add Znsi.Leave custom:leave_game "退室"
    scoreboard objectives add Znsi.Page dummy "InventoryGUI管理"
    scoreboard objectives add Znsi.Health dummy "体力"
    scoreboard objectives add Znsi.Arrows dummy "矢の最大所持数"
    scoreboard objectives add Znsi.Respawn dummy "リスポーン時間"
    scoreboard objectives add Znsi.Time dummy "残り時間"
    scoreboard objectives add Znsi.SelectMap dummy "選択したMAP"
    scoreboard objectives add Znsi.TeamMode dummy "何チームで振り分けするか"


##Teams
    team add Red
    team modify Red collisionRule never
    team modify Red color red
    team modify Red friendlyFire false

    team add Blue
    team modify Blue collisionRule never
    team modify Blue color blue
    team modify Blue friendlyFire false

    team add Green
    team modify Green collisionRule never
    team modify Green color green
    team modify Green friendlyFire false

    team add Yellow
    team modify Yellow collisionRule never
    team modify Yellow color yellow
    team modify Yellow friendlyFire false

    team add Timer
    team modify Timer color green
    team modify Timer suffix {"color":"green","text":"0秒"}

    team add Redcore
    team modify Redcore color red
    team modify Redcore suffix {"color":"red","text":"30"}

    team add Bluecore
    team modify Bluecore color blue
    team modify Bluecore suffix {"color":"blue","text":"30"}

    team add Greencore
    team modify Greencore color green
    team modify Greencore suffix {"color":"green","text":"30"}

    team add Yellowcore
    team modify Yellowcore color yellow
    team modify Yellowcore suffix {"color":"yellow","text":"30"}


##INFO
    team join Timer 残り時間：
    team join Timer 準備時間：
    team join Redcore 赤のコア：
    team join Bluecore 青のコア：
    team join Greencore 緑のコア：
    team join Yellowcore 黄のコア：
    
    #scoreboard players set 残り時間： Znsi.Info 1
    scoreboard players set 準備時間： Znsi.Info 1
    scoreboard players set 赤のコア： Znsi.Info 0
    scoreboard players set 青のコア： Znsi.Info -1
    scoreboard players set 緑のコア： Znsi.Info -2
    scoreboard players set 黄のコア： Znsi.Info -3
    scoreboard players display numberformat 残り時間： Znsi.Info blank
    scoreboard players display numberformat 準備時間： Znsi.Info blank
    scoreboard players display numberformat 赤のコア： Znsi.Info blank
    scoreboard players display numberformat 青のコア： Znsi.Info blank
    scoreboard players display numberformat 緑のコア： Znsi.Info blank
    scoreboard players display numberformat 黄のコア： Znsi.Info blank