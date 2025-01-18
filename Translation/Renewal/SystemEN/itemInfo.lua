-- Original translation works of zackdreaver: https://github.com/zackdreaver/ROenglishRE
-- Continuated by llchrisll at https://github.com/llchrisll/ROenglishRE
-- This file can be distributed, used and modified freely
-- This file shouldn't be claimed as part of your project, unless you fork it from https://github.com/llchrisll/ROenglishRE
-- Credits to Neo-Mind for original code.
-- For further information, please visit https://llchrisll.github.io/ROTPDocs/guides/customs/#multi-iteminfo-support.

-- Load the splited function file
require("SystemEN/LuaFiles514/itemInfo_f")

-- Load the translation file
dofile("SystemEN/LuaFiles514/itemInfo.lua")

-- Load additional files, like custom items, overrides and others
-- New tables needs unique names, to import them you need to copy a "itemInfoMerge"
-- line at the end and adjust it accordingly.

-- Place all files in the "SystemEN" folder, the rest will be automatically added.
ImportFiles = {
	"itemInfo_C.lua", -- custom items
}
-- Just define the table postfix, 'tbl_' will be automatically added
-- Note: The "tbl_override" is handled separately at the end.
ImportTables = {
	"custom",
}

---------------- Additional Configs for translation file ----------------
-- Display origin server based on translation file's Server argument
-- 0 = disable/1 = in Item Name/2 = top of description/3 = bottom of description
DisplayServer = 1

-- Defines how the item id will be shown in item name, doesn't take effect in other settings
TagStart = '('
TagEnd = ')'

-- Define the colour in which the Server Name should be shown (affects official)
-- Format: '^<RRGGBB>'
-- '' = same color as "Server: " (^0000CC = blue)
-- '^FFFFFF' = white
ServerColour = '^FF0000'

-- Show ItemID at bottom (affects custom items as well)
-- 0 = disable/1 = top of description/2 = bottom of description
DisplayItemID = 2

-- Display a database link at bottom of description (true/false)
DisplayDatabase = true

---------------- Additional Configs for custom items ----------------
-- Display server name
-- 0 = disable/1 = in Item Name/2 = top of description/3 = bottom of description
DisplayCustomServer = 1

-- Defines how the item id will be shown in item name, doesn't take effect in other settings
CustomTagStart = '['
CustomTagEnd = ']'

-- Server Name for your custom items
CServerName = 'ExampleRO'

-- Define the colour in which the custom Server Name should be shown (custom items)
-- Format: '^<RRGGBB>'
-- '' = same color as "Server: " (^0000CC = blue)
-- '^FFFFFF' = white
CServerColour = '^00FF00'

-- Database link for custom items, like fluxcp (true/false)
DisplayCustomDB = false

----- Table for Database Links -------------------
ItemDatabase = {
	["Divine-Pride"] = {
		Name = "Divine-Pride.net",
		URL = "https://www.divine-pride.net/database/item/"
	},
	["iRO"] = {
		Name = "iRO Wiki",
		URL = "https://db.irowiki.org/db/item-info/"
	},
	["Custom"] = {
		Name = "Database",
		URL = "http://127.0.0.1/?module=item&action=view&id="
	}
}

---------------- DON'T TOUCH THE LINES BELOW unless you know what you are doing ----------------
require('SystemEN/LuaFiles514/rotp_f')

-- Loop through each file in the "ImportFiles" table and load them
for _, v in ipairs(ImportFiles) do
	dofile('SystemEN/'..v)
end

-- Loop through each table in the "ImportTables" table
-- and merge them into the main table "tbl" 
for _, v in ipairs(ImportTables) do
	F_itemInfoMerge(_G['tbl_'..v], false)
end

F_itemInfoMerge(tbl_override, true) -- official overrides
---------------------------------------------------