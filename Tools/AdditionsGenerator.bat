@echo off
echo Welcome to the Additions Generator!
echo This will help you to copy over the files you want and need based on the choice you make.
echo It will loop itself until you either close the program or choose to exit it by typing any number higher than available.
pause
:AdditionsMenu
cls
echo ===============
echo [1] Data Folder
echo [2] data\luafiles514
echo [3] System Folder
echo ===============
set /p type="Now choose:"
if %type%==1 goto DataMenu
if %type%==2 goto DataLua
if %type%==3 goto SysLua
exit

:DataMenu
	cls
	echo ===============
	echo [1] bookitemnametable.txt %datac[0]%
	echo [2] buyingstoreitemlist.txt %datac[1]%
	echo [3] card*.txt %datac[2]%
	echo [4] etcinfo.txt %datac[3]%
	echo [5] exceptionminimapnametable.txt %datac[4]%
	echo [6] fogParameterTable.txt %datac[5]%
	echo [7] indoorrswtable.txt %datac[6]%
	echo [8] itemmoveinfov5.txt %datac[7]%
	echo [9] leveluseskillspamount.txt %datac[8]%
	echo [10] manner.txt %datac[9]%
	echo [11] mapobjlighttable.txt %datac[10]%
	echo [12] mappostable.txt %datac[11]%
	echo [13] metalprocessitemtable.txt %datac[12]%
	echo [14] mp3nametable.txt %datac[13]%
	echo [15] resnametable.txt %datac[14]%
	echo [16] viewpointtable.txt %datac[15]%
	echo [17] Legacy Maps
	echo [18] Back to previous Menu
	echo ===============
	set /p data="Now choose:"
	if %data%==1 (
		copy /Y "..\Additions\data\bookitemnametable.txt" ".\Client\data\bookitemnametable.txt"
		set datac[0]=Copied
	) else if %data%==2 (
		copy /Y "..\Additions\data\buyingstoreitemlist.txt" ".\Client\data\buyingstoreitemlist.txt"
		set datac[1]=Copied
	) else if %data%==3 (
		copy /Y "..\Additions\data\carditemnametable.txt" ".\Client\data\carditemnametable.txt"
		copy /Y "..\Additions\data\cardpostfixnametable.txt" ".\Client\data\cardpostfixnametable.txt"
		copy /Y "..\Additions\data\num2cardillustnametable.txt" ".\Client\data\num2cardillustnametable.txt"
		set datac[2]=Copied
	) else if %data%==4 (
		copy /Y "..\Additions\data\etcinfo.txt" ".\Client\data\etcinfo.txt"
		set datac[3]=Copied
	) else if %data%==5 (
		copy /Y "..\Additions\data\exceptionminimapnametable.txt" ".\Client\data\exceptionminimapnametable.txt"
		set datac[4]=Copied
	) else if %data%==6 (
		copy /Y "..\Additions\data\fogParameterTable.txt" ".\Client\data\fogParameterTable.txt"
		set datac[5]=Copied
	) else if %data%==7 (
		copy /Y "..\Additions\data\indoorrswtable.txt" ".\Client\data\indoorrswtable.txt"
		set datac[6]=Copied
	) else if %data%==8 (
		copy /Y "..\Additions\data\itemmoveinfov5.txt" ".\Client\data\itemmoveinfov5.txt"
		set datac[7]=Copied
	) else if %data%==9 (
		copy /Y "..\Additions\data\leveluseskillspamount.txt" ".\Client\data\leveluseskillspamount.txt"
		set datac[8]=Copied
	) else if %data%==10 (
		copy /Y "..\Additions\data\manner.txt" ".\Client\data\manner.txt"
		set datac[9]=Copied
	) else if %data%==11 (
		copy /Y "..\Additions\data\mapobjlighttable.txt" ".\Client\data\mapobjlighttable.txt"
		set datac[10]=Copied
	) else if %data%==12 (
		copy /Y "..\Additions\data\mappostable.txt" ".\Client\data\mappostable.txt"
		set datac[11]=Copied
	) else if %data%==13 (
		copy /Y "..\Additions\data\metalprocessitemtable.txt" ".\Client\data\metalprocessitemtable.txt"
		set datac[12]=Copied
	) else if %data%==14 (
		copy /Y "..\Additions\data\mp3nametable.txt" ".\Client\data\mp3nametable.txt"
		set datac[13]=Copied
	) else if %data%==15 (
		copy /Y "..\Additions\data\resnametable.txt" ".\Client\data\resnametable.txt"
		set datac[14]=Copied
	) else if %data%==16 (
		copy /Y "..\Additions\data\viewpointtable.txt" ".\Client\data\viewpointtable.txt"
		set datac[15]=Copied
	) else if %data%==17 (
		:DataMaps
		cls
		echo ===============
		echo [1] Airship Maps %omaps[0]%
		echo [2] gefenia01.rsw %omaps[1]%
		echo [3] tur_d03_i.rsw %omaps[2]%
		echo [4] aldeg_cas01.rsw %omaps[3]%
		echo [5] gef_fild02.rsw %omaps[4]%
		echo [6] gl_cas01.rsw %omaps[5]%
		echo [7] mjolnir_07.rsw %omaps[6]%
		echo [8] mjolnir_08.rsw %omaps[7]%
		echo [9] mjolnir_09.rsw %omaps[8]%
		echo [10] mjolnir_10.rsw %omaps[9]%
		echo [11] mjolnir_11.rsw %omaps[10]%
		echo [12] moc_fild01.rsw %omaps[11]%
		echo [13] paramk.rsw %omaps[12]%
		echo [14] pay_fild04.rsw %omaps[13]%
		echo [15] prt_fild00.rsw %omaps[14]%
		echo [16] prt_fild01.rsw %omaps[15]%
		echo [17] prt_fild02.rsw %omaps[16]%
		echo [18] prt_fild03.rsw %omaps[17]%
		echo [19] prt_fild04.rsw %omaps[18]%
		echo [20] prt_fild05.rsw %omaps[19]%
		echo [21] prt_fild06.rsw %omaps[20]%
		echo [22] prt_fild07.rsw %omaps[21]%
		echo [23] prt_fild09.rsw %omaps[22]%
		echo [24] prt_fild10.rsw %omaps[23]%
		echo [25] 2009rwc_ Maps %omaps[24]%
		echo [26] 2012rwc_ Maps %omaps[25]%
		echo [27] poring_c01 %omaps[26]%
		echo [28] poring_c02 %omaps[27]%
		echo [29] sch_lab %omaps[28]%
		echo [30] All in One Package %omaps[29]%
		echo [31] Back to previous Menu
		echo ===============
		set /p map="Choose which maps you want to copy:"
		if %map%==1 (
			copy /Y "..\Additions\data\einbroch.gat" ".\Client\data\einbroch.gat"
			copy /Y "..\Additions\data\einbroch.gnd" ".\Client\data\einbroch.gnd"
			copy /Y "..\Additions\data\einbroch.rsw" ".\Client\data\einbroch.rsw"
			copy /Y "..\Additions\data\lighthalzen.gat" ".\Client\data\lighthalzen.gat"
			copy /Y "..\Additions\data\lighthalzen.gnd" ".\Client\data\lighthalzen.gnd"
			copy /Y "..\Additions\data\lighthalzen.rsw" ".\Client\data\lighthalzen.rsw"
			copy /Y "..\Additions\data\yuno.gat" ".\Client\data\yuno.gat"
			copy /Y "..\Additions\data\yuno.gnd" ".\Client\data\yuno.gnd"
			copy /Y "..\Additions\data\yuno.rsw" ".\Client\data\yuno.rsw"
			set omaps[0]=Copied
		) else if %map%==2 (
			copy /Y "..\Additions\data\gefenia01.rsw" ".\Client\data\gefenia01.rsw"
			set omaps[1]=Copied
		) else if %map%==3 (
			copy /Y "..\Additions\data\tur_d03_i.rsw" ".\Client\data\tur_d03_i.rsw"
			set omaps[2]=Copied
		) else if %map%==4 (
			copy /Y "..\Additions\data\aldeg_cas01.rsw" ".\Client\data\aldeg_cas01.rsw"
			set omaps[3]=Copied
		) else if %map%==5 (
			copy /Y "..\Additions\data\gef_fild02.rsw" ".\Client\data\gef_fild02.rsw"
			set omaps[4]=Copied
		) else if %map%==6 (
			copy /Y "..\Additions\data\gl_cas01.rsw" ".\Client\data\gl_cas01.rsw"
			set omaps[5]=Copied
		) else if %map%==7 (
			copy /Y "..\Additions\data\mjolnir_07.rsw" ".\Client\data\mjolnir_07.rsw"
			set omaps[6]=Copied
		) else if %map%==8 (
			copy /Y "..\Additions\data\mjolnir_08.rsw" ".\Client\data\mjolnir_08.rsw"
			set omaps[7]=Copied
		) else if %map%==9 (
			copy /Y "..\Additions\data\mjolnir_09.rsw" ".\Client\data\mjolnir_09.rsw"
			set omaps[8]=Copied
		) else if %map%==10 (
			copy /Y "..\Additions\data\mjolnir_10.rsw" ".\Client\data\mjolnir_10.rsw"
			set omaps[9]=Copied
		) else if %map%==11 (
			copy /Y "..\Additions\data\mjolnir_11.rsw" ".\Client\data\mjolnir_11.rsw"
			set omaps[10]=Copied
		) else if %map%==12 (
			copy /Y "..\Additions\data\moc_fild01.rsw" ".\Client\data\moc_fild01.rsw"
			set omaps[11]=Copied
		) else if %map%==13 (
			copy /Y "..\Additions\data\paramk.rsw" ".\Client\data\paramk.rsw"
			set omaps[12]=Copied
		) else if %map%==14 (
			copy /Y "..\Additions\data\pay_fild04.rsw" ".\Client\data\pay_fild04.rsw"
			set omaps[13]=Copied
		) else if %map%==15 (
			copy /Y "..\Additions\data\prt_fild00.rsw" ".\Client\data\prt_fild00.rsw"
			set omaps[14]=Copied
		) else if %map%==16 (
			copy /Y "..\Additions\data\prt_fild01.rsw" ".\Client\data\prt_fild01.rsw"
			set omaps[15]=Copied
		) else if %map%==17 (
			copy /Y "..\Additions\data\prt_fild02.rsw" ".\Client\data\prt_fild02.rsw"
			set omaps[16]=Copied
		) else if %map%==18 (
			copy /Y "..\Additions\data\prt_fild03.rsw" ".\Client\data\prt_fild03.rsw"
			set omaps[17]=Copied
		) else if %map%==19 (
			copy /Y "..\Additions\data\prt_fild04.rsw" ".\Client\data\prt_fild04.rsw"
			set omaps[18]=Copied
		) else if %map%==20 (
			copy /Y "..\Additions\data\prt_fild05.rsw" ".\Client\data\prt_fild05.rsw"
			set omaps[19]=Copied
		) else if %map%==21 (
			copy /Y "..\Additions\data\prt_fild06.rsw" ".\Client\data\prt_fild06.rsw"
			set omaps[20]=Copied
		) else if %map%==22 (
			copy /Y "..\Additions\data\prt_fild07.rsw" ".\Client\data\prt_fild07.rsw"
			set omaps[21]=Copied
		) else if %map%==23 (
			copy /Y "..\Additions\data\prt_fild09.rsw" ".\Client\data\prt_fild09.rsw"
			set omaps[22]=Copied
		) else if %map%==24 (
			copy /Y "..\Additions\data\prt_fild10.rsw" ".\Client\data\prt_fild10.rsw"
			set omaps[23]=Copied
		) else if %map%==25 (
			copy /Y "..\Additions\data\2009rwc_01.gat" ".\Client\data\2009rwc_01.gat"
			copy /Y "..\Additions\data\2009rwc_01.gnd" ".\Client\data\2009rwc_01.gnd"
			copy /Y "..\Additions\data\2009rwc_01.rsw" ".\Client\data\2009rwc_01.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_01.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_01.bmp"
			copy /Y "..\Additions\data\2009rwc_02.gat" ".\Client\data\2009rwc_02.gat"
			copy /Y "..\Additions\data\2009rwc_02.gnd" ".\Client\data\2009rwc_02.gnd"
			copy /Y "..\Additions\data\2009rwc_02.rsw" ".\Client\data\2009rwc_02.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_02.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_02.bmp"
			copy /Y "..\Additions\data\2009rwc_03.gat" ".\Client\data\2009rwc_03.gat"
			copy /Y "..\Additions\data\2009rwc_03.gnd" ".\Client\data\2009rwc_03.gnd"
			copy /Y "..\Additions\data\2009rwc_03.rsw" ".\Client\data\2009rwc_03.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_03.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_03.bmp"
			copy /Y "..\Additions\data\2009rwc_04.gat" ".\Client\data\2009rwc_04.gat"
			copy /Y "..\Additions\data\2009rwc_04.gnd" ".\Client\data\2009rwc_04.gnd"
			copy /Y "..\Additions\data\2009rwc_04.rsw" ".\Client\data\2009rwc_04.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_04.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_04.bmp"
			copy /Y "..\Additions\data\2009rwc_05.gat" ".\Client\data\2009rwc_05.gat"
			copy /Y "..\Additions\data\2009rwc_05.gnd" ".\Client\data\2009rwc_05.gnd"
			copy /Y "..\Additions\data\2009rwc_05.rsw" ".\Client\data\2009rwc_05.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_05.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_05.bmp"
			copy /Y "..\Additions\data\2009rwc_06.gat" ".\Client\data\2009rwc_06.gat"
			copy /Y "..\Additions\data\2009rwc_06.gnd" ".\Client\data\2009rwc_06.gnd"
			copy /Y "..\Additions\data\2009rwc_06.rsw" ".\Client\data\2009rwc_06.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_06.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_06.bmp"
			copy /Y "..\Additions\data\2009rwc_07.gat" ".\Client\data\2009rwc_07.gat"
			copy /Y "..\Additions\data\2009rwc_07.gnd" ".\Client\data\2009rwc_07.gnd"
			copy /Y "..\Additions\data\2009rwc_07.rsw" ".\Client\data\2009rwc_07.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_07.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_07.bmp"
			copy /Y "..\Additions\data\2009rwc_08.gat" ".\Client\data\2009rwc_08.gat"
			copy /Y "..\Additions\data\2009rwc_08.gnd" ".\Client\data\2009rwc_08.gnd"
			copy /Y "..\Additions\data\2009rwc_08.rsw" ".\Client\data\2009rwc_08.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_08.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_08.bmp"
			copy /Y "..\Additions\data\2009rwc_f01.gat" ".\Client\data\2009rwc_f01.gat"
			copy /Y "..\Additions\data\2009rwc_f01.gnd" ".\Client\data\2009rwc_f01.gnd"
			copy /Y "..\Additions\data\2009rwc_f01.rsw" ".\Client\data\2009rwc_f01.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_f01.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_f01.bmp"
			set omaps[24]=Copied
		) else if %map%==26 (
			copy /Y "..\Additions\data\2012rwc_01.gat" ".\Client\data\2012rwc_01.gat"
			copy /Y "..\Additions\data\2012rwc_01.gnd" ".\Client\data\2012rwc_01.gnd"
			copy /Y "..\Additions\data\2012rwc_01.rsw" ".\Client\data\2012rwc_01.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_01.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_01.bmp"
			copy /Y "..\Additions\data\2012rwc_02.gat" ".\Client\data\2012rwc_02.gat"
			copy /Y "..\Additions\data\2012rwc_02.gnd" ".\Client\data\2012rwc_02.gnd"
			copy /Y "..\Additions\data\2012rwc_02.rsw" ".\Client\data\2012rwc_02.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_02.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_02.bmp"
			copy /Y "..\Additions\data\2012rwc_03.gat" ".\Client\data\2012rwc_03.gat"
			copy /Y "..\Additions\data\2012rwc_03.gnd" ".\Client\data\2012rwc_03.gnd"
			copy /Y "..\Additions\data\2012rwc_03.rsw" ".\Client\data\2012rwc_03.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_03.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_03.bmp"
			copy /Y "..\Additions\data\2012rwc_04.gat" ".\Client\data\2012rwc_04.gat"
			copy /Y "..\Additions\data\2012rwc_04.gnd" ".\Client\data\2012rwc_04.gnd"
			copy /Y "..\Additions\data\2012rwc_04.rsw" ".\Client\data\2012rwc_04.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_04.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_04.bmp"
			copy /Y "..\Additions\data\2012rwc_05.gat" ".\Client\data\2012rwc_05.gat"
			copy /Y "..\Additions\data\2012rwc_05.gnd" ".\Client\data\2012rwc_05.gnd"
			copy /Y "..\Additions\data\2012rwc_05.rsw" ".\Client\data\2012rwc_05.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_05.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_05.bmp"
			copy /Y "..\Additions\data\2012rwc_06.gat" ".\Client\data\2012rwc_06.gat"
			copy /Y "..\Additions\data\2012rwc_06.gnd" ".\Client\data\2012rwc_06.gnd"
			copy /Y "..\Additions\data\2012rwc_06.rsw" ".\Client\data\2012rwc_06.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_06.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_06.bmp"
			copy /Y "..\Additions\data\2012rwc_07.gat" ".\Client\data\2012rwc_07.gat"
			copy /Y "..\Additions\data\2012rwc_07.gnd" ".\Client\data\2012rwc_07.gnd"
			copy /Y "..\Additions\data\2012rwc_07.rsw" ".\Client\data\2012rwc_07.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_07.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_07.bmp"
			copy /Y "..\Additions\data\2012rwc_08.gat" ".\Client\data\2012rwc_08.gat"
			copy /Y "..\Additions\data\2012rwc_08.gnd" ".\Client\data\2012rwc_08.gnd"
			copy /Y "..\Additions\data\2012rwc_08.rsw" ".\Client\data\2012rwc_08.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_08.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_08.bmp"
			set omaps[25]=Copied
		) else if %map%==27 (
			copy /Y "..\Additions\data\poring_c01.gat" ".\Client\data\poring_c01.gat"
			copy /Y "..\Additions\data\poring_c01.gnd" ".\Client\data\poring_c01.gnd"
			copy /Y "..\Additions\data\poring_c01.rsw" ".\Client\data\poring_c01.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\poring_c01.bmp" ".\Client\data\texture\유저인터페이스\map\poring_c01.bmp"
			set omaps[26]=Copied
		) else if %map%==28 (
			copy /Y "..\Additions\data\poring_c02.gat" ".\Client\data\poring_c02.gat"
			copy /Y "..\Additions\data\poring_c02.gnd" ".\Client\data\poring_c02.gnd"
			copy /Y "..\Additions\data\poring_c02.rsw" ".\Client\data\poring_c02.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\poring_c02.bmp" ".\Client\data\texture\유저인터페이스\map\poring_c02.bmp"
			set omaps[27]=Copied
		) else if %map%==29 (
			copy /Y "..\Additions\data\sch_lab.gat" ".\Client\data\sch_lab.gat"
			copy /Y "..\Additions\data\sch_lab.gnd" ".\Client\data\sch_lab.gnd"
			copy /Y "..\Additions\data\sch_lab.rsw" ".\Client\data\sch_lab.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\sch_lab.bmp" ".\Client\data\texture\유저인터페이스\map\sch_lab.bmp"
			set omaps[28]=Copied
		) else if %map%==30 (
			copy /Y "..\Additions\data\einbroch.gat" ".\Client\data\einbroch.gat"
			copy /Y "..\Additions\data\einbroch.gnd" ".\Client\data\einbroch.gnd"
			copy /Y "..\Additions\data\einbroch.rsw" ".\Client\data\einbroch.rsw"
			copy /Y "..\Additions\data\lighthalzen.gat" ".\Client\data\lighthalzen.gat"
			copy /Y "..\Additions\data\lighthalzen.gnd" ".\Client\data\lighthalzen.gnd"
			copy /Y "..\Additions\data\lighthalzen.rsw" ".\Client\data\lighthalzen.rsw"
			copy /Y "..\Additions\data\yuno.gat" ".\Client\data\yuno.gat"
			copy /Y "..\Additions\data\yuno.gnd" ".\Client\data\yuno.gnd"
			copy /Y "..\Additions\data\yuno.rsw" ".\Client\data\yuno.rsw"
			copy /Y "..\Additions\data\gefenia01.rsw" ".\Client\data\gefenia01.rsw"
			copy /Y "..\Additions\data\tur_d03_i.rsw" ".\Client\data\tur_d03_i.rsw"
			copy /Y "..\Additions\data\aldeg_cas01.rsw" ".\Client\data\aldeg_cas01.rsw"
			copy /Y "..\Additions\data\gef_fild02.rsw" ".\Client\data\gef_fild02.rsw"
			copy /Y "..\Additions\data\gl_cas01.rsw" ".\Client\data\gl_cas01.rsw"
			copy /Y "..\Additions\data\mjolnir_07.rsw" ".\Client\data\mjolnir_07.rsw"
			copy /Y "..\Additions\data\mjolnir_08.rsw" ".\Client\data\mjolnir_08.rsw"
			copy /Y "..\Additions\data\mjolnir_09.rsw" ".\Client\data\mjolnir_09.rsw"
			copy /Y "..\Additions\data\mjolnir_10.rsw" ".\Client\data\mjolnir_10.rsw"
			copy /Y "..\Additions\data\mjolnir_11.rsw" ".\Client\data\mjolnir_11.rsw"
			copy /Y "..\Additions\data\moc_fild01.rsw" ".\Client\data\moc_fild01.rsw"
			copy /Y "..\Additions\data\paramk.rsw" ".\Client\data\paramk.rsw"
			copy /Y "..\Additions\data\pay_fild04.rsw" ".\Client\data\pay_fild04.rsw"
			copy /Y "..\Additions\data\prt_fild00.rsw" ".\Client\data\prt_fild00.rsw"
			copy /Y "..\Additions\data\prt_fild01.rsw" ".\Client\data\prt_fild01.rsw"
			copy /Y "..\Additions\data\prt_fild02.rsw" ".\Client\data\prt_fild02.rsw"
			copy /Y "..\Additions\data\prt_fild03.rsw" ".\Client\data\prt_fild03.rsw"
			copy /Y "..\Additions\data\prt_fild04.rsw" ".\Client\data\prt_fild04.rsw"
			copy /Y "..\Additions\data\prt_fild05.rsw" ".\Client\data\prt_fild05.rsw"
			copy /Y "..\Additions\data\prt_fild06.rsw" ".\Client\data\prt_fild06.rsw"
			copy /Y "..\Additions\data\prt_fild07.rsw" ".\Client\data\prt_fild07.rsw"
			copy /Y "..\Additions\data\prt_fild09.rsw" ".\Client\data\prt_fild09.rsw"
			copy /Y "..\Additions\data\prt_fild10.rsw" ".\Client\data\prt_fild10.rsw"
			copy /Y "..\Additions\data\2009rwc_01.gat" ".\Client\data\2009rwc_01.gat"
			copy /Y "..\Additions\data\2009rwc_01.gnd" ".\Client\data\2009rwc_01.gnd"
			copy /Y "..\Additions\data\2009rwc_01.rsw" ".\Client\data\2009rwc_01.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_01.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_01.bmp"
			copy /Y "..\Additions\data\2009rwc_02.gat" ".\Client\data\2009rwc_02.gat"
			copy /Y "..\Additions\data\2009rwc_02.gnd" ".\Client\data\2009rwc_02.gnd"
			copy /Y "..\Additions\data\2009rwc_02.rsw" ".\Client\data\2009rwc_02.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_02.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_02.bmp"
			copy /Y "..\Additions\data\2009rwc_03.gat" ".\Client\data\2009rwc_03.gat"
			copy /Y "..\Additions\data\2009rwc_03.gnd" ".\Client\data\2009rwc_03.gnd"
			copy /Y "..\Additions\data\2009rwc_03.rsw" ".\Client\data\2009rwc_03.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_03.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_03.bmp"
			copy /Y "..\Additions\data\2009rwc_04.gat" ".\Client\data\2009rwc_04.gat"
			copy /Y "..\Additions\data\2009rwc_04.gnd" ".\Client\data\2009rwc_04.gnd"
			copy /Y "..\Additions\data\2009rwc_04.rsw" ".\Client\data\2009rwc_04.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_04.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_04.bmp"
			copy /Y "..\Additions\data\2009rwc_05.gat" ".\Client\data\2009rwc_05.gat"
			copy /Y "..\Additions\data\2009rwc_05.gnd" ".\Client\data\2009rwc_05.gnd"
			copy /Y "..\Additions\data\2009rwc_05.rsw" ".\Client\data\2009rwc_05.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_05.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_05.bmp"
			copy /Y "..\Additions\data\2009rwc_06.gat" ".\Client\data\2009rwc_06.gat"
			copy /Y "..\Additions\data\2009rwc_06.gnd" ".\Client\data\2009rwc_06.gnd"
			copy /Y "..\Additions\data\2009rwc_06.rsw" ".\Client\data\2009rwc_06.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_06.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_06.bmp"
			copy /Y "..\Additions\data\2009rwc_07.gat" ".\Client\data\2009rwc_07.gat"
			copy /Y "..\Additions\data\2009rwc_07.gnd" ".\Client\data\2009rwc_07.gnd"
			copy /Y "..\Additions\data\2009rwc_07.rsw" ".\Client\data\2009rwc_07.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_07.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_07.bmp"
			copy /Y "..\Additions\data\2009rwc_08.gat" ".\Client\data\2009rwc_08.gat"
			copy /Y "..\Additions\data\2009rwc_08.gnd" ".\Client\data\2009rwc_08.gnd"
			copy /Y "..\Additions\data\2009rwc_08.rsw" ".\Client\data\2009rwc_08.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_08.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_08.bmp"
			copy /Y "..\Additions\data\2009rwc_f01.gat" ".\Client\data\2009rwc_f01.gat"
			copy /Y "..\Additions\data\2009rwc_f01.gnd" ".\Client\data\2009rwc_f01.gnd"
			copy /Y "..\Additions\data\2009rwc_f01.rsw" ".\Client\data\2009rwc_f01.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2009rwc_f01.bmp" ".\Client\data\texture\유저인터페이스\map\2009rwc_f01.bmp"
			copy /Y "..\Additions\data\2012rwc_01.gat" ".\Client\data\2012rwc_01.gat"
			copy /Y "..\Additions\data\2012rwc_01.gnd" ".\Client\data\2012rwc_01.gnd"
			copy /Y "..\Additions\data\2012rwc_01.rsw" ".\Client\data\2012rwc_01.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_01.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_01.bmp"
			copy /Y "..\Additions\data\2012rwc_02.gat" ".\Client\data\2012rwc_02.gat"
			copy /Y "..\Additions\data\2012rwc_02.gnd" ".\Client\data\2012rwc_02.gnd"
			copy /Y "..\Additions\data\2012rwc_02.rsw" ".\Client\data\2012rwc_02.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_02.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_02.bmp"
			copy /Y "..\Additions\data\2012rwc_03.gat" ".\Client\data\2012rwc_03.gat"
			copy /Y "..\Additions\data\2012rwc_03.gnd" ".\Client\data\2012rwc_03.gnd"
			copy /Y "..\Additions\data\2012rwc_03.rsw" ".\Client\data\2012rwc_03.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_03.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_03.bmp"
			copy /Y "..\Additions\data\2012rwc_04.gat" ".\Client\data\2012rwc_04.gat"
			copy /Y "..\Additions\data\2012rwc_04.gnd" ".\Client\data\2012rwc_04.gnd"
			copy /Y "..\Additions\data\2012rwc_04.rsw" ".\Client\data\2012rwc_04.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_04.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_04.bmp"
			copy /Y "..\Additions\data\2012rwc_05.gat" ".\Client\data\2012rwc_05.gat"
			copy /Y "..\Additions\data\2012rwc_05.gnd" ".\Client\data\2012rwc_05.gnd"
			copy /Y "..\Additions\data\2012rwc_05.rsw" ".\Client\data\2012rwc_05.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_05.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_05.bmp"
			copy /Y "..\Additions\data\2012rwc_06.gat" ".\Client\data\2012rwc_06.gat"
			copy /Y "..\Additions\data\2012rwc_06.gnd" ".\Client\data\2012rwc_06.gnd"
			copy /Y "..\Additions\data\2012rwc_06.rsw" ".\Client\data\2012rwc_06.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_06.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_06.bmp"
			copy /Y "..\Additions\data\2012rwc_07.gat" ".\Client\data\2012rwc_07.gat"
			copy /Y "..\Additions\data\2012rwc_07.gnd" ".\Client\data\2012rwc_07.gnd"
			copy /Y "..\Additions\data\2012rwc_07.rsw" ".\Client\data\2012rwc_07.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_07.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_07.bmp"
			copy /Y "..\Additions\data\2012rwc_08.gat" ".\Client\data\2012rwc_08.gat"
			copy /Y "..\Additions\data\2012rwc_08.gnd" ".\Client\data\2012rwc_08.gnd"
			copy /Y "..\Additions\data\2012rwc_08.rsw" ".\Client\data\2012rwc_08.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\2012rwc_08.bmp" ".\Client\data\texture\유저인터페이스\map\2012rwc_08.bmp"
			copy /Y "..\Additions\data\poring_c01.gat" ".\Client\data\poring_c01.gat"
			copy /Y "..\Additions\data\poring_c01.gnd" ".\Client\data\poring_c01.gnd"
			copy /Y "..\Additions\data\poring_c01.rsw" ".\Client\data\poring_c01.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\poring_c01.bmp" ".\Client\data\texture\유저인터페이스\map\poring_c01.bmp"
			copy /Y "..\Additions\data\poring_c02.gat" ".\Client\data\poring_c02.gat"
			copy /Y "..\Additions\data\poring_c02.gnd" ".\Client\data\poring_c02.gnd"
			copy /Y "..\Additions\data\poring_c02.rsw" ".\Client\data\poring_c02.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\poring_c02.bmp" ".\Client\data\texture\유저인터페이스\map\poring_c02.bmp"
			copy /Y "..\Additions\data\sch_lab.gat" ".\Client\data\sch_lab.gat"
			copy /Y "..\Additions\data\sch_lab.gnd" ".\Client\data\sch_lab.gnd"
			copy /Y "..\Additions\data\sch_lab.rsw" ".\Client\data\sch_lab.rsw"
			copy /Y "..\Additions\data\texture\유저인터페이스\map\sch_lab.bmp" ".\Client\data\texture\유저인터페이스\map\sch_lab.bmp"
			set omaps[29]=Copied
		) else if %map%==31 goto DataMenu
		else exit
		goto DataMaps
	
	) else if %data%==18 goto AdditionsMenu
	else exit
	goto DataMenu

:DataLua
	cls
	echo ===============
	echo [1] Headgears %lua_c[0]%
	echo [2] changedirectorylist.lub %lua_c[1]%
	echo [3] DrawItemOnAura.lub %lua_c[2]%
	echo [4] enumvar.lub %lua_c[3]%
	echo [5] exceptionitemproducer.lub %lua_c[4]%
	echo [6] NPC/Mob and Pets %lua_c[5]%
	echo [7] kaframovemapservicelist.lub %lua_c[6]%
	echo [8] npclocationradius.lub %lua_c[7]%
	echo [9] shadowtable.lub %lua_c[8]%
	echo [10] Robes/Costume Garments %lua_c[9]%
	echo [11] tb_cashshop_banner.lub %lua_c[10]%
	echo [12] tb_checkattendance_banner.lub %lua_c[11]%
	echo [13] Weapons %lua_c[12]%
	echo [14] World Map %lua_c[13]%
	echo [15] effecttool\forcerendereffect.lub %lua_c[14]%
	echo [16] Hateffectinfo %lua_c[15]%
	echo [17] skilleffectinfo %lua_c[16]%
	echo [18] skillinfoz %lua_c[17]%
	echo [19] stateicon %lua_c[18]%
	echo [20] stylingshop %lua_c[19]%
	echo [21] ItemDBNameTbl %lua_c[20]%
	echo [22] Back to previous Menu
	echo ===============
	set /p lua="Now choose:"
	if %lua%==1 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\accessoryid.lub" ".\Client\data\luafiles514\lua files\datainfo\accessoryid.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\accname.lub" ".\Client\data\luafiles514\lua files\datainfo\accname.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\accname_eng.lub" ".\Client\data\luafiles514\lua files\datainfo\accname_eng.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\tb_layer_priority.lub" ".\Client\data\luafiles514\lua files\datainfo\tb_layer_priority.lub"
		set lua_c[0]=Copied
	) else if %lua%==2 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\changedirectorylist.lub" ".\Client\data\luafiles514\lua files\datainfo\changedirectorylist.lub"
		set lua_c[1]=Copied
	) else if %lua%==3 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\DrawItemOnAura.lub" ".\Client\data\luafiles514\lua files\datainfo\DrawItemOnAura.lub"
		set lua_c[2]=Copied
	) else if %lua%==4 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\enumvar.lub" ".\Client\data\luafiles514\lua files\datainfo\enumvar.lub"
		set lua_c[3]=Copied
	) else if %lua%==5 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\exceptionitemproducer.lub" ".\Client\data\luafiles514\lua files\datainfo\exceptionitemproducer.lub"
		set lua_c[4]=Copied
	) else if %lua%==6 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\jobidentity.lub" ".\Client\data\luafiles514\lua files\datainfo\jobidentity.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\jobname.lub" ".\Client\data\luafiles514\lua files\datainfo\jobname.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\npcidentity.lub" ".\Client\data\luafiles514\lua files\datainfo\npcidentity.lub"
		set lua_c[5]=Copied
	) else if %lua%==7 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\kaframovemapservicelist.lub" ".\Client\data\luafiles514\lua files\datainfo\kaframovemapservicelist.lub"
		set lua_c[6]=Copied
	) else if %lua%==8 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\npclocationradius.lub" ".\Client\data\luafiles514\lua files\datainfo\npclocationradius.lub"
		set lua_c[7]=Copied
	) else if %lua%==9 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\shadowtable.lub" ".\Client\data\luafiles514\lua files\datainfo\shadowtable.lub"
		set lua_c[8]=Copied
	) else if %lua%==10 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\spriterobeid.lub" ".\Client\data\luafiles514\lua files\datainfo\spriterobeid.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\spriterobename.lub" ".\Client\data\luafiles514\lua files\datainfo\spriterobename.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\transparentItem\transparentItem.lub" ".\Client\data\luafiles514\lua files\transparentItem\transparentItem.lub"
		set lua_c[9]=Copied
	) else if %lua%==11 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\tb_cashshop_banner.lub" ".\Client\data\luafiles514\lua files\datainfo\tb_cashshop_banner.lub"
		set lua_c[10]=Copied
	) else if %lua%==12 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\tb_checkattendance_banner.lub" ".\Client\data\luafiles514\lua files\datainfo\tb_checkattendance_banner.lub"
		set lua_c[11]=Copied
	) else if %lua%==13 (
		copy /Y "..\Additions\data\luafiles514\lua files\datainfo\weapontable.lub" ".\Client\data\luafiles514\lua files\datainfo\weapontable.lub"
		set lua_c[12]=Copied
	) else if %lua%==14 (
		copy /Y "..\Additions\data\luafiles514\lua files\worldviewdata\worldviewdata_info.lub" ".\Client\data\luafiles514\lua files\worldviewdata\worldviewdata_info.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\worldviewdata\worldviewdata_table.lub" ".\Client\data\luafiles514\lua files\worldviewdata\worldviewdata_table.lub"
		set lua_c[13]=Copied
	) else if %lua%==15 (
		copy /Y "..\Additions\data\luafiles514\lua files\effecttool\forcerendereffect.lub" ".\Client\data\luafiles514\lua files\effecttool\forcerendereffect.lub"
		set lua_c[14]=Copied
	) else if %lua%==16 (
		copy /Y "..\Additions\data\luafiles514\lua files\hateffectinfo\hateffectinfo.lub" ".\Client\data\luafiles514\lua files\hateffectinfo\hateffectinfo.lub"
		set lua_c[15]=Copied
	) else if %lua%==17 (
		copy /Y "..\Additions\data\luafiles514\lua files\skilleffectinfo\actorstate.lub" ".\Client\data\luafiles514\lua files\skilleffectinfo\actorstate.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\skilleffectinfo\effectid.lub" ".\Client\data\luafiles514\lua files\skilleffectinfo\effectid.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\skilleffectinfo\skilleffectinfolist.lub" ".\Client\data\luafiles514\lua files\skilleffectinfo\skilleffectinfolist.lub"
		set lua_c[16]=Copied
	) else if %lua%==18 (
		copy /Y "..\Additions\data\luafiles514\lua files\skillinfoz\jobinheritlist.lub" ".\Client\data\luafiles514\lua files\skillinfoz\jobinheritlist.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\skillinfoz\skillid.lub" ".\Client\data\luafiles514\lua files\skillinfoz\skillid.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\skillinfoz\skilltreeview.lub" ".\Client\data\luafiles514\lua files\skillinfoz\skilltreeview.lub"
		set lua_c[17]=Copied
	) else if %lua%==19 (
		copy /Y "..\Additions\data\luafiles514\lua files\stateicon\efstids.lub" ".\Client\data\luafiles514\lua files\stateicon\efstids.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\stateicon\stateiconimginfo.lub" ".\Client\data\luafiles514\lua files\stateicon\stateiconimginfo.lub"
		copy /Y "..\Additions\data\luafiles514\lua files\stateicon\stateiconinfo.lub" ".\Client\data\luafiles514\lua files\stateicon\stateiconinfo.lub"
		set lua_c[18]=Copied
	) else if %lua%==20 (
		copy /Y "..\Additions\data\luafiles514\lua files\stylingshop\stylingshopinfo.lub" ".\Client\data\luafiles514\lua files\stylingshop\stylingshopinfo.lub"
		set lua_c[19]=Copied
	) else if %lua%==21 (
		copy /Y "..\Additions\data\luafiles514\lua files\ItemDBNameTbl.lub" ".\Client\data\luafiles514\lua files\ItemDBNameTbl.lub"
		set lua_c[20]=Copied
	) else if %lua%==22 goto AdditionsMenu
	else exit
	goto DataLua
	
:SysLua
	cls
	echo ===============
	echo [1] ChangeMaterial_EN.lub %sys_c[0]%
	echo [2] CheckAttendance_EN.lub %sys_c[1]%
	echo [3] monster_size_effect_EN.lub %sys_c[2]%
	echo [4] PetEvolutionCln_true_E.lub %sys_c[3]%
	echo [5] PrivateAirplane_T_EN.lub %sys_c[4]%
	echo [6] Sign_Data_CLS.lub %sys_c[5]%
	::echo [7] Rune Folder %sys_c[6]%
	echo [8] Back to previous Menu
	echo ===============
	set /p sys="Now choose:"
	if %sys%==1 (
		copy /Y "..\Additions\System\ChangeMaterial_EN.lub" ".\Client\System\ChangeMaterial_EN.lub"
		set sys_c[0]=Copied
	) else if %sys%==2 (
		copy /Y "..\Additions\System\CheckAttendance_EN.lub" ".\Client\System\CheckAttendance_EN.lub"
		set sys_c[1]=Copied
	) else if %sys%==3 (
		copy /Y "..\Additions\System\monster_size_effect_EN.lub" ".\Client\System\monster_size_effect_EN.lub"
		set sys_c[2]=Copied
	) else if %sys%==4 (
		copy /Y "..\Additions\System\PetEvolutionCln_true_E.lub" ".\Client\System\PetEvolutionCln_true_E.lub"
		set sys_c[3]=Copied
	) else if %sys%==5 (
		copy /Y "..\Additions\System\PrivateAirplane_T_EN.lub" ".\Client\System\PrivateAirplane_T_EN.lub"
		set sys_c[4]=Copied
	) else if %sys%==6 (
		copy /Y "..\Additions\System\Sign_Data_CLS.lub" ".\Client\System\Sign_Data_CLS.lub"
		set sys_c[5]=Copied
	::) else if %sys%==7 (
	::	copy /Y "..\Additions\System\Rune\itemDecom_EN.lub" ".\Client\System\Rune\itemDecom_EN.lub"
	::	copy /Y "..\Additions\System\Rune\rune_info_EN.lub" ".\Client\System\Rune\rune_info_EN.lub"
	::	copy /Y "..\Additions\System\Rune\runeset_info_EN.lub" ".\Client\System\Rune\runeset_info_EN.lub"
	::	copy /Y "..\Additions\System\Rune\runeSystem_table_EN.lub" ".\Client\System\Rune\runeSystem_table_EN.lub"
	::	copy /Y "..\Additions\System\Rune\runesystemid_EN.lub" ".\Client\System\Rune\runesystemid_EN.lub"
	::	copy /Y "..\Additions\System\Rune\runesystemInfo_EN.lub" ".\Client\System\Rune\runesystemInfo_EN.lub"
	::	set sys_c[6]=Copied
	) else if %sys%==8 goto AdditionsMenu
	else exit
	goto SysLua
pause