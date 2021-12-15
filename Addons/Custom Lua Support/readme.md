Important Note:
	Be aware that mose of these files are only tested for lua errors
	and functionality regarding the original files.
	In case you encounter errors, please use the discord for
	reporting it and PM me with your custom stuff
	so I can test them efficiently since I'm too lazy to search for stuff like that.
	
	Before using any of these files be sure to make a backup of your original clients.
	You have been warned!

Installation:
	Note: Currently I only can provide support via WARP, maybe in the future I will be able to add it for NEMO as well.
	
1. WARP
    With the latest update, it's now possible to use WARP to allow the reading of these files inside the GRF.
	But for this to work you need to check `Custom Lua Files/WARP` folder and do the following:
	1. Open `Patches.yml` in the WARP folder and follow the steps from `Custom Lua Files/WARP/Patches.yml`.
	2. Copy&Paste the `Custom Lua Files/WARP/Patches/CustomLuaSupport.qjs` and add it in your `WARP/Patches/` folder
	3. Take the content of `Custom Lua Files/Client` and add it in your GRF.
	   Don't worry, nothing will be overwritten as it's done via seperate folder:
	   `data/luafiles514/lua files/cls/`
	4. Now take the original files with your custom entries/values and insert them the same as you did.
	5. Test it and report any issues you might experience.

* Tested Files:
	- Mob/NPC/Pets
	- Headgear
	- Quests
	- Weapon

* Files which I'm not gonna test:
	- DrawItemonAura
	- Random Options
	- Shadow Table
	- TB_Layer_Priority
	- Title Table

* Files which I can't currently test:
	- HatEffectInfo
	- LapineBoxes

Regards,
Houndeye aka llchrisll