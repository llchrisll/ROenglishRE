## ROenglishRE
Project created by **zackdreaver** @2015

[ROenglishRE](https://rathena.org/board/topic/102689-ragnarok-english-translation-project/) is an unofficial english translation (Fan translation) project for Korea Ragnarok Online Renewal that focused on translating items, skills and textures.

Note: this project should be considered as educational purposes only, any commercial or illegal use by people or group aren't author's responsibilities.

## Prerequisites
* Full client of Korea Ragnarok Online
* 3rd party application for repacking **data** folder into GRF format. (eg: [GRF Editor](https://rathena.org/board/topic/77080-grf-grf-editor/))

## itemInfo Legend
Convertion of rA's item bonuses to client itemInfo description

| Item bonus | Description |
| --- | --- |
| bonus bStr,n; | STR +**n** |
| bonus bAgi,n; | AGI +**n** |
| bonus bVit,n; | VIT +**n** |
| bonus bInt,n; | INT +**n** |
| bonus bDex,n; | DEX +**n** |
| bonus bLuk,n; | LUK +**n** |
| bonus bAllStats,n; | All stats +**n** |
| bonus bMaxHP,n; | MaxHP +**n** |
| bonus bMaxHPrate,n; | MaxHP +**n**%  |
| bonus bMaxSP,n; | MaxSP +**n** |
| bonus bMaxSPrate,n; | MaxSP +**n**%  |
| bonus bBaseAtk,n; | ATK +**n** |
| bonus bAtk,n; | ATK +**n** |
| bonus bAtk2,n; | ATK +**n** |
| bonus bAtkRate,n; | ATK +**n**%  |
| bonus bWeaponAtkRate,n; | ATK +**n**%  |
| bonus bMatk,n; | MATK +**n** |
| bonus bMatkRate,n; | MATK +**n**%  |
| bonus bWeaponMatkRate,n; | MATK +**n**%  |
| bonus bDef,n; | DEF +**n** |
| bonus bDefRate,n; | DEF +**n**%  |
| bonus bDef2,n; | DEF +**n** |
| bonus bDef2Rate,n; | DEF +**n**%  |
| bonus bMdef,n; | MDEF +**n** |
| bonus bMdefRate,n; | MDEF +**n**%  |
| bonus bMdef2,n; | MDEF +**n** |
| bonus bMdef2Rate,n; | MDEF +**n**%  |
| bonus bHit,n; | HIT +**n** |
| bonus bHitRate,n; | HIT +**n**%  |
| bonus bCritical,n; | Critical +**n** |
| bonus bCriticalRate,n; | Increases ^FF0000Critical Hit^000000 rate by **n**%. ** |
| bonus bCriticalLong,n; | Increases Critical by **n** when dealing long range physical attack. ** |
| bonus2 bCriticalAddRace,r,n; | Increases Critical by **n** when attacking ^0033CCr^000000 monster. ** |
| bonus bFlee,n; | Flee +**n** |
| bonus bFleeRate,n; | Flee +**n**%  |
| bonus bFlee2,n; | Perfect Dodge +**n** |
| bonus bFlee2Rate,n; | Perfect Dodge +**n**%  |
| bonus bPerfectHitRate,n; | Perfect Hit +**n**%  |
| bonus bPerfectHitAddRate,n; | Not implemented |
| bonus bSpeedRate,n; | Increases movement speed. |
| bonus bSpeedAddRate,n; | Increases movement speed by **n**%. |
| bonus bAspd,n; | ASPD +**n** |
| bonus bAspdRate,n; | Reduces after attack delay by **n**%. |
| bonus bAtkRange,n; | Attack range +**n** |
| bonus bAddMaxWeight,n; | Not implemented |
| bonus bHPrecovRate,n; | Increases HP regen by +**n**% . |
| bonus bSPrecovRate,n; | Increases SP regen by +**n**% . |
| bonus2 bHPRegenRate,n,t; | Restores **n** HP every t/1000 seconds. |
| bonus2 bHPLossRate,n,t; | Drains **n** HP every t/1000 seconds. |
| bonus2 bSPRegenRate,n,t; | Restores **n** SP every t/1000 seconds. |
| bonus2 bSPLossRate,n,t; | Drains **n** SP every t/1000 seconds. |
| bonus2 bRegenPercentHP,n,t; | Restores **n**% of MaxHP every **t**/1000 seconds |
| bonus2 bRegenPercentSP,n,t; | Restores **n**% of MaxSP every **t**/1000 seconds |
| bonus bNoRegen,x; | Not implemented |
| bonus bUseSPrate,n; | Increases SP cost of all skills by **n**%. |
| bonus2 bSkillUseSP,sk,n; | Reduces SP cost of **sk** by **n**. |
| bonus2 bSkillUseSPrate,sk,n; | Reduces SP cost of **sk** by **n**%. |

** Future release of itemInfo

## Client compatibility list:
**2008 and older (Not supported and deprecated)**
* Known issue
	* None so far

**2009 - 2010 (Not supported and deprecated)**
* Known issue
	* Need older version of chat and window function that aren't present in this project.
	* Many 3rd classes' skill updates need newer client.

**2011 - 2012 (Not supported and deprecated)**
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
