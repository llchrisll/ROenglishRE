If you have question that's not listed here, feel free to post it on issue page, otherwise go to [rAthena forum](https://rathena.org/board/forum/19-client-side-support/) for support.

Q: **My client exe's still using Korean text/gibberish text?**

A1: All files from **data** folder of this project must be packed in **grf** format (ex: english.grf)and listed in .ini file (default: data.ini) in your client folder.

A2: Make sure "Load custom lua file instead itemInfo*.lub" diff is targeting the correct itemInfo.lua



Q: **I can't see My headgear when equipped?**

A1: Check your server item_db.txt, The viewID is must set to the correct value based on accessoryid.lub, or you can check the value in itemInfo.lua under "ClassNum" for reference.

A2: Your client data.grf doesn't have it or the file is corrupt.

Q: **I can't see My garment(Wings) costume?**

A1: Update your kRO client, otherwise that garment was came from other official RO, like jRO.

A2: Check your server item_db.txt, The viewID is must set to the correct value based on spriterobeid.lub, or you can check the value in itemInfo.lua under "ClassNum" for reference.

Q: **My weapon isn't showing during attack?**

A1: Update your kRO client, there are new weapon sprites update for Doram race and some from event.

A2: Probably its "ClassNum" value in itemInfo.lua is 0, please report it on issue page.

Q: **My client.exe crashes when I try to open it?**

note: All files from project have been tested and don't caused any crash.

A1: Install DirectX 9.0c from Microsoft.

A2: These files must be present in your client folder: aossdk.dll, binkw32.dll, CDClient.dll, cps.dll, granny2.dll, ijl15.dll, libcurl.dll, Mss32.dll and Mp3dec.asi

A3: There is file that's missing/corrupt in your data.grf (related to login screen).

A4: Check your client diffs, probably there is diff that causes client to crash.

Q: **My client has small font?**

A1: https://rathena.org/board/topic/117647-guide-fixing-small-font-on-ragnarok-online-client/

Q: I found many grammatical errors in your translation.

A1: Glad to hear, feel free to submit Pull request or just report it on issue page.

