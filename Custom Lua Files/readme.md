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

2. Required Config Lua
	The `System\LuaFiles514\clua_f.lub` is a simple file with some variables:
	* path = : Defines the main path for every file
	* ext = : Defines the extension for every file
	
3. Files for your Custom Stuff
	Currently I have everything in one folder `CustomLua`, but depending on what
	original files you overwrite, only specific Custom Lua files will be loaded.
	
3. Lua To Lub Converter
	I also added the tool to encode your files, here is how to use it:
	1. Insert your custom values in the `*.lua` files in `System\luafiles514\CustomLua`
	2. Run the `System\luafiles514\LuaToLub.bat` file
	3. Now your .lua files are encoded .lub files.
	4. Move the .lub files into the `System\luafiles\CustomLua` folder and test it.
	
	Note: You can also use the .lua files, but then you need to rename
	them to .lub files manually.

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