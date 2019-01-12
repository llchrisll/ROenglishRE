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
| bonus bMaxHPrate,n; | MaxHP +**n**% |
| bonus bMaxSP,n; | MaxSP +**n** |
| bonus bMaxSPrate,n; | MaxSP +**n**% |
| bonus bBaseAtk,n; | ATK +**n** |
| bonus bAtk,n; | ATK +**n** |
| bonus bAtk2,n; | ATK +**n** |
| bonus bAtkRate,n; | ATK +**n**% |
| bonus bWeaponAtkRate,n; | ATK +**n**% |
| bonus bMatk,n; | MATK +**n** |
| bonus bMatkRate,n; | MATK +**n**% |
| bonus bWeaponMatkRate,n; | MATK +**n**% |
| bonus bDef,n; | DEF +**n** |
| bonus bDefRate,n; | DEF +**n**% |
| bonus bDef2,n; | DEF +**n** |
| bonus bDef2Rate,n; | DEF +**n**% |
| bonus bMdef,n; | MDEF +**n** |
| bonus bMdefRate,n; | MDEF +**n**% |
| bonus bMdef2,n; | MDEF +**n** |
| bonus bMdef2Rate,n; | MDEF +**n**% |
| bonus bHit,n; | HIT +**n** |
| bonus bHitRate,n; | HIT +**n**% |
| bonus bCritical,n; | Critical +**n** |
| bonus bCriticalRate,n; | Increases critical hit rate by **n**%. |
| bonus bCriticalLong,n; | Increases critical by **n** when dealing ranged physical attack. |
| bonus2 bCriticalAddRace,r,n; | Increases critical by **n** when attacking ^0033CC**r**^000000 monster. |
| bonus bFlee,n; | Flee +**n** |
| bonus bFleeRate,n; | Flee +**n**% |
| bonus bFlee2,n; | Perfect Dodge +**n** |
| bonus bFlee2Rate,n; | Perfect Dodge +**n**% |
| bonus bPerfectHitRate,n; | Perfect Hit +**n**% |
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
| bonus2 bSkillUseSP,sk,n; | Reduces SP cost of ^009900**sk**^000000 by **n**. |
| bonus2 bSkillUseSPrate,sk,n; | Reduces SP cost of ^009900**sk**^000000 by **n**%. |
| bonus2 bSkillAtk,sk,n; | Increases damage inflicted with ^009900**sk**^000000 by **n**%. |
| bonus bLongAtkRate,n; | Increases damage inflicted with ranged physical attack by **n**%. |
| bonus bCritAtkRate,n; | Increases critical hit damage by **n**%. |
| bonus bCriticalDef,n; | Not implemented |
| bonus2 bWeaponAtk,w,n; | Not implemented |
| bonus2 bWeaponDamageRate,w,n; | Not implemented |
| bonus bNearAtkDef,n; | Reduces damage taken from melee physical attack by **n**%. |
| bonus bLongAtkDef,n; | Reduces damage taken from ranged physical attack by **n**%. |
| bonus bMagicAtkDef,n; | Not implemented |
| bonus bMiscAtkDef,n; | Not implemented |
| bonus bNoWeaponDamage,n; | Not implemented |
| bonus bNoMagicDamage,n; | Not implemented |
| bonus bNoMiscDamage,n; | Not implemented |
| bonus bHealPower,n; | Increases Healing skills by **n**%. |
| bonus bHealPower2,n; | Increases restoration gained from Healing skills by **n**%. |
| bonus2 bSkillHeal,sk,n; | Not implemented |
| bonus2 bSkillHeal2,sk,n; | Not implemented |
| bonus bAddItemHealRate,n; | Increases restoration gained from restorative items by **n**%. |
| bonus2 bAddItemHealRate,iid,n; | Increases restoration gained from ^0033CC**iid**^000000 by **n**%. |
| bonus2 bAddItemGroupHealRate,ig,n; | Not implemented |
| bonus bCastrate,n; | Reduces variable cast time of all skills by **n**%. |
| bonus2 bCastrate,sk,n; | Reduces variable cast time of ^009900**sk**^000000 by **n**%. |
| bonus bVariableCastrate,n; | Reduces variable cast time of all skills by **n**%. |
| bonus2 bVariableCastrate,sk,n; | Reduces variable cast time of ^009900**sk**^000000 by **n**%. |
| bonus bFixedCastrate,n; | Reduces fixed cast time of all skills by **n**%. |
| bonus2 bFixedCastrate,sk,n; | Reduces fixed cast time of ^009900**sk**^000000 by **n**%. |
| bonus bVariableCast,t; | Reduces variable cast time of all skills by **t** sec. |
| bonus bFixedCast,t; | Reduces fixed cast time of all skills by **t** sec. |
| bonus2 bSkillFixedCast,sk,t; | Reduces fixed cast time of ^009900**sk**^000000 by **t** sec. |
| bonus2 bSkillVariableCast,sk,t; | Reduces variable cast time of ^009900**sk**^000000 by **t** sec. |

:arrow_backward:[Back to front page](https://github.com/zackdreaver/ROenglishRE#project-content)
