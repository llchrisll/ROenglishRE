## ROenglishRE
Project created by **zackdreaver** @2015

[ROenglishRE](https://rathena.org/board/topic/102689-ragnarok-english-translation-project/) is an unofficial english translation (Fan translation) project for Korea Ragnarok Online Renewal that focused on translating items, skills and textures.

Note: this project should be considered as educational purposes only, any commercial or illegal use by people or group aren't author's responsibilities.

## Prerequisites
* Full client of Korea Ragnarok Online
* 3rd party application for repacking **data** folder into GRF format. (eg: [GRF Editor](https://rathena.org/board/topic/77080-grf-grf-editor/))

## Client compatibility list:
**2008 and older (Supported)**
* Known issue
	* None so far

**2009 - 2010 (Supported)**
* Known issue
	* Need older version of chat and window function that aren't present in this project.
	* Many 3rd classes' skill updates need newer client.

**2011 - 2012 (Supported)**
* Known issue
	* Many 3rd classes' skill updates need newer client.

**2013 - 2014 (Supported)**
* Known issue
	* New Archbishop skills are wrongly placed by clients, but can still be used in minimized skill window.

**2015 - 20170517 (Supported)**
* Known issue
	* New Archbishop skills are wrongly placed by clients, but can still be used in minimized skill window.

**20170522 - 201712XX (Not supported)**
* Known issue
	* Requires new itemInfo (2nd Version), otherwise client crashes.

**201712XX - 201804XX (Supported)**
* Known issue
	* Requires new itemInfo [(3rd Version)](https://github.com/zackdreaver/ROenglishRE/blob/master/System/itemInfo_true_V3.lua)

**201804XX - 201806XX (Not supported)**
* Known issue
	* Requires new itemInfo (4th Version), otherwise client crashes.

**201806XX - XXXXXXXX (Not supported)**
* Known issue
	* Requires new itemInfo [(5th Version)](https://github.com/zackdreaver/ROenglishRE/blob/master/System/itemInfo_true_V5.lua)
	* Need new textures for character selection screen, check extra folder.
	* Need extra function for skilltreeview.lub, otherwise client crashes.

## Text Editor and its settings
Most files here, including itemInfo.lua, were edited by using [Notepad++](https://notepad-plus-plus.org/).
If you're not interested on translating, the default settings of NPP aren't suited for editing itemInfo.lua,
because there are 4 type of fonts that came from 4 main official servers (kRO, jRO, twRO and iRO) that could brake items' resource names.

Thus, you need to set up your NPP to:
1. Open Tab **Settings** > **Preferences** > **New Document**, then change **Encoding** to ANSI
2. Open Tab **Settings** > **Preferences** > **MISC.**, then DESELECT **Autodetect character encoding**

That way, when you open itemInfo.lua for the first time, it should look ![like this](https://i.ibb.co/wMH3Hyh/Sample1.jpg)

Other things, like choice of font or style, are up to you.
