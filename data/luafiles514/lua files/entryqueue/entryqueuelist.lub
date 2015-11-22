EntryQueueList = {
	[1] = {
		BattleFieldName = "Tierra Gorge",
		DisplayBattleFieldName = "Tierra Gorge",
		AllianceNum = 6,
		EnemyNum = 6,
		PrivateApply = 1,
		PartyApply = 1,
		GuildApply = 1,
		JobGroup = 4,
		EnterCondType = 2,
		EnterCondValue1 = 80,
		EnterCondValue2 = 0,
		RewardWin = "3 Bravery Badges",
		RewardDraw = "1 Bravery Badge",
		RewardLose = "1 Bravery Badge",
		VictoryCond = "When opposing team's Storehouse is destroyed.",
		MiniMapFile = "bat_a01.bmp"
	},
	[2] = {
		BattleFieldName = "Flavius",
		DisplayBattleFieldName = "Flavius",
		AllianceNum = 6,
		EnemyNum = 6,
		PrivateApply = 1,
		PartyApply = 1,
		GuildApply = 1,
		JobGroup = 4,
		EnterCondType = 2,
		EnterCondValue1 = 80,
		EnterCondValue2 = 0,
		RewardWin = "9 Valor Badges",
		RewardDraw = "3 Valor Badges",
		RewardLose = "3 Valor Badges",
		VictoryCond = "When opposing team's Crystal is destroyed.",
		MiniMapFile = "bat_b01.bmp"
	},
	[3] = {
		BattleFieldName = "KVM (Level 80 and up)",
		DisplayBattleFieldName = "KVM (Level 80 and up)",
		AllianceNum = 5,
		EnemyNum = 5,
		PrivateApply = 1,
		PartyApply = 1,
		GuildApply = 1,
		JobGroup = 0,
		EnterCondType = 2,
		EnterCondValue1 = 80,
		EnterCondValue2 = 0,
		RewardWin = "5 KVM Points",
		RewardDraw = "1 KVM Point",
		RewardLose = "1 KVM Point",
		VictoryCond = "When opposing team is annihilated.",
		MiniMapFile = "bat_c01.bmp"
	},
	[4] = {
		BattleFieldName = "KVM (Level 60~79)",
		DisplayBattleFieldName = "KVM (Level 60~79)",
		AllianceNum = 5,
		EnemyNum = 5,
		PrivateApply = 1,
		PartyApply = 1,
		GuildApply = 1,
		JobGroup = 0,
		EnterCondType = 3,
		EnterCondValue1 = 60,
		EnterCondValue2 = 79,
		RewardWin = "2 KVM Points",
		RewardDraw = "1 KVM Point",
		RewardLose = "none",
		VictoryCond = "When opposing team is annihilated.",
		MiniMapFile = "bat_c01.bmp"
	},
	[5] = {
		BattleFieldName = "KVM (Level 59 and below)",
		DisplayBattleFieldName = "KVM (Level 59 and below)",
		AllianceNum = 5,
		EnemyNum = 5,
		PrivateApply = 1,
		PartyApply = 1,
		GuildApply = 1,
		JobGroup = 0,
		EnterCondType = 1,
		EnterCondValue1 = 59,
		EnterCondValue2 = 0,
		RewardWin = "1 KVM Point",
		RewardDraw = "none",
		RewardLose = "none",
		VictoryCond = "When opposing team is annihilated.",
		MiniMapFile = "bat_c01.bmp"
	}
}

function ReadEntryQueueList()
	for id, table in pairs(EntryQueueList) do
		AddEntryQueue(id, table.BattleFieldName, table.DisplayBattleFieldName, table.AllianceNum, table.EnemyNum, table.PrivateApply, table.PartyApply, table.GuildApply, table.JobGroup, table.EnterCondType, table.EnterCondValue1, table.EnterCondValue2, table.RewardWin, table.RewardDraw, table.RewardLose, table.VictoryCond, table.MiniMapFile)
	end
end
