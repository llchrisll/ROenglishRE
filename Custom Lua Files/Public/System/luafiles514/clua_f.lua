CLuaFiles = {}
CLuaFiles = {
	[1] = { -- Headgears
		"accessoryid",
		"accname"
	},
	[2] = { -- DrawItemOnAura 
		"DrawItemOnAura"
	},
	[3] = { -- HatEffectInfo
		"hateffect_f",
		"hateffect"
	},
	[4] = { -- Lapine UI
		"lapineddukddakbox",
		"LapineUpgradeBox"
	},
	[5] = { -- NPC/Mob/Pets
		"npcidentity",
		"jobname",
		"petinfo"
	},
	[6] = { -- Quests
		"OngoingQuests",
		"RecommendedQuests"
	},
	[7] = { -- Random Options
		"enumvar",
		"randomoption"
	},
	[8] = { -- Shadow Table
		"shadowtable"
	},
	[9] = { -- Robe
		"spriterobeid",
		"spriterobename",
		"transparentItem"
	},
	[10] = {
		"TB_Layer_Priority"
	},
	[11] = { -- Title Table
		"titletable"
	},
	[12] = { -- Weapon Table
		"weapontable"
	}
}
function CLuaInit(id)
	for ID,Files in pairs(CLuaFiles) do
		if ID == id then
			for _,v in pairs(Files) do
				dofile("System/LuaFiles514/CLS/" .. v .. ".lub")
			end
		end
	end
end