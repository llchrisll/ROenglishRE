Important Note:
	Be aware that mose of these files are only tested for lua errors
	and functionality regarding the original files.
	In case you encounter errors, please use the discord for
	reporting it and PM me with your custom stuff
	so I can test them efficiently since I'm too lazy to search for stuff like that.
	
	Before using any of these files be sure to make a backup of your original ones.
	You have been warned!

It's pretty self-explanatory how to use these, but here is simple guide:

1. Basic Layout
	The only files which have to be overwritten are the `_f.lub` in most cases.
	There are a few exceptions, which requires the original files as well:
	* HatEffectInfo
	* LapineBox
	* TB_Layer_Priority
	* Title Table
	
	Generally the `Public\System` folder is already setup to be implemented in your own client folder,
	every file in `System\LuaFiles514\CLS` is already encoded and empty.
	You can delete every unneeded file, which you don't wanna use.
	
2. Required Core Lua File
	The `Public\System\LuaFiles514\clua_f.lua` is a simple file with some data and the core file of this setup, without this you will recieve errors.
	The default extension of the files in `Public\System\LuaFiles514\CLS` are read as `*.lub`,
	if you want to use `*.lua` then you need to edit the `Public\System\LuaFiles514\clua_f.lua` file at this line:
	`dofile("System/LuaFiles514/CLS/" .. v .. ".lub")` and exchange the `".lub"` with `".lua"`.
	Be careful about the path at the beginning as that is mostly inserted in the `_f.lub` as well.

3. Files for your Custom Stuff
	As mentioned above, depending on what lua files you want to use you need to overwrite certain `_f.lub` files in the respective folders.
	In `Public\data\` you can find the folders depending on lua files you want to use.
	Just move content of those folders in the `data\luafiles514\lua files\` folder,
	and as mentioned above, make a backup in case.
	
4. Lua To Lub Converter
	I also added the tool to encode your files, here is how to use it:
	1. Insert your custom values in the `*.lua` files in `RAW\LuaFiles\`
	2. Run the `LuaToLub.bat` file
	3. Now your .lua files are encoded .lub files in the `ENCODED` folder.
	4. Move these .lub files into your `System\luafiles\CLS` folder.
	
	Note: You can also use the unencoded .lub files in `RAW\LubFiles\` folder.
	So it's up to you what you want to use.

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
	- LapineBox

Regards,
Houndeye aka llchrisll