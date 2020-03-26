-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: mapInfo_true.lub 

-- params : ...
-- function num : 0
mapTbl = {
["iz_d04_i.rsw"] = {displayName = "심연의 해저동굴 상층", notifyEnter = true, 
signName = {mainTitle = "심연의 해저동굴 상층"}
, backgroundBmp = "dungeon"}
, 
["iz_d05_i.rsw"] = {displayName = "심연의 해저동굴 하층", notifyEnter = true, 
signName = {mainTitle = "심연의 해저동굴 하층"}
, backgroundBmp = "dungeon"}
, 
["1@gl_he2.rsw"] = {displayName = "이벤트모드 불완전한 차원", notifyEnter = true, 
signName = {subTitle = "이벤트 모드", mainTitle = "불완전한 차원"}
, backgroundBmp = "dungeon"}
, 
["1@thts.rsw"] = {displayName = "타나토스 타워", notifyEnter = true, 
signName = {subTitle = "타나토스의 기억", mainTitle = "타나토스 타워"}
, backgroundBmp = "dungeon"}
, 
["2@thts.rsw"] = {displayName = "천사의 경고", notifyEnter = true, 
signName = {subTitle = "타나토스의 기억", mainTitle = "천사의 경고"}
, backgroundBmp = "dungeon"}
, 
["3@thts.rsw"] = {displayName = "증오의 기억", notifyEnter = true, 
signName = {subTitle = "타나토스의 기억", mainTitle = "증오의 기억"}
, backgroundBmp = "dungeon"}
, 
["4@thts.rsw"] = {displayName = "고뇌의 기억", notifyEnter = true, 
signName = {subTitle = "타나토스의 기억", mainTitle = "고뇌의 기억"}
, backgroundBmp = "dungeon"}
, 
["5@thts.rsw"] = {displayName = "슬픔의 기억", notifyEnter = true, 
signName = {subTitle = "타나토스의 기억", mainTitle = "슬픔의 기억"}
, backgroundBmp = "dungeon"}
, 
["6@thts.rsw"] = {displayName = "절망의 기억", notifyEnter = true, 
signName = {subTitle = "타나토스의 기억", mainTitle = "절망의 기억"}
, backgroundBmp = "dungeon"}
, 
["7@thts.rsw"] = {displayName = "분노의 기억", notifyEnter = true, 
signName = {subTitle = "타나토스의 기억", mainTitle = "분노의 기억"}
, backgroundBmp = "dungeon"}
, 
["8@thts.rsw"] = {displayName = "타나토스 타워", notifyEnter = true, 
signName = {subTitle = "타나토스의 기억", mainTitle = "마검사 타나토스의 기억"}
, backgroundBmp = "dungeon"}
, 
["ba_maison.rsw"] = {displayName = "바르문트 저택 정원", notifyEnter = true, 
signName = {mainTitle = "바르문트 저택 정원"}
, backgroundBmp = "noname_s2"}
, 
["ba_in01.rsw"] = {displayName = "바르문트 저택 내부"}
, 
["ba_pw01.rsw"] = {displayName = "제 1 마력발전소", notifyEnter = true, 
signName = {mainTitle = "제 1 마력발전소"}
, backgroundBmp = "dungeon_s2"}
, 
["ba_pw03.rsw"] = {displayName = "제 2 마력발전소", notifyEnter = true, 
signName = {mainTitle = "제 2 마력발전소"}
, backgroundBmp = "dungeon_s2"}
, 
["ba_pw02.rsw"] = {displayName = "하수처리장", notifyEnter = true, 
signName = {mainTitle = "하수처리장"}
, backgroundBmp = "dungeon_s2"}
, 
["ba_bath.rsw"] = {displayName = "대욕장 메디타티오", notifyEnter = true, 
signName = {mainTitle = "대욕장 메디타티오"}
, backgroundBmp = "dungeon_s2"}
, 
["ba_2whs01.rsw"] = {displayName = "저장고 타르타로스 상층", notifyEnter = true, 
signName = {mainTitle = "저장고 타르타로스 상층"}
, backgroundBmp = "dungeon_s2"}
, 
["ba_2whs02.rsw"] = {displayName = "저장고 타르타로스 하층", notifyEnter = true, 
signName = {mainTitle = "저장고 타르타로스 하층"}
, backgroundBmp = "dungeon_s2"}
, 
["ba_lost.rsw"] = {displayName = "사육장 로스트밸리", notifyEnter = true, 
signName = {mainTitle = "사육장 로스트밸리"}
, backgroundBmp = "dungeon_s2"}
, 
["ba_lib.rsw"] = {displayName = "도서관 기억의 회랑", notifyEnter = true, 
signName = {subTitle = "도서관", mainTitle = "기억의 회랑"}
, backgroundBmp = "dungeon"}
, 
["ba_go.rsw"] = {displayName = "수상전장 (手相戰場)", notifyEnter = true, 
signName = {mainTitle = "수상전장 (手相戰場)"}
, backgroundBmp = "dungeon_s2"}
, 
["ba_chess.rsw"] = {displayName = "체크메이트", notifyEnter = true, 
signName = {mainTitle = "체크메이트"}
, backgroundBmp = "dungeon_s2"}
, 
["1@lost.rsw"] = {displayName = "시간에게 잊혀진 사육장", notifyEnter = true, 
signName = {subTitle = "로스트밸리", mainTitle = "시간에게 잊혀진 사육장"}
, backgroundBmp = "dungeon"}
, 
["1@herbs.rsw"] = {displayName = "숨겨진 화원", notifyEnter = true, 
signName = {mainTitle = "숨겨진 화원"}
, backgroundBmp = "dungeon_s2"}
, 
["1@ghg.rsw"] = {displayName = "오르투스 아콰", notifyEnter = true, 
signName = {subTitle = "수상정원", mainTitle = "오르투스 아콰"}
, backgroundBmp = "dungeon"}
, 
["1@bamn.rsw"] = {displayName = "어스름밤의 정원", notifyEnter = true, 
signName = {mainTitle = "어스름밤의 정원"}
, backgroundBmp = "dungeon_s2"}
, 
["1@bamq.rsw"] = {displayName = "비공정 거치장", notifyEnter = true, 
signName = {mainTitle = "비공정 거치장"}
, backgroundBmp = "dungeon_s2"}
, 
["ein_dun03.rsw"] = {displayName = "아인베흐 광산 3층", notifyEnter = true, 
signName = {mainTitle = "아인베흐 광산 3층"}
, backgroundBmp = "dungeon_s2"}
, 
["odin_past.rsw"] = {displayName = "고대 오딘 신전", notifyEnter = true, 
signName = {mainTitle = "고대 오딘 신전"}
, backgroundBmp = "field2_s2"}
, 
["abyss_04.rsw"] = {displayName = "휘겔 어비스 호수 지하 동굴 4층", notifyEnter = true, 
signName = {subTitle = "휘겔 어비스 호수", mainTitle = "어비스 지하 동굴 4층"}
, backgroundBmp = "dungeon"}
, 
["1@gl_he.rsw"] = {displayName = "오염된 차원", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "오염된 차원"}
, backgroundBmp = "dungeon"}
, 
["1@gol1.rsw"] = {displayName = "생체 실험동", notifyEnter = true, 
signName = {subTitle = "원정의 여로", mainTitle = "생체 실험동"}
, backgroundBmp = "dungeon"}
, 
["1@gol2.rsw"] = {displayName = "시체 보관소", notifyEnter = true, 
signName = {subTitle = "원정의 여로", mainTitle = "시체 보관소"}
, backgroundBmp = "dungeon"}
, 
["prt_mz03_i.rsw"] = {displayName = "뒤틀린 미궁 숲", notifyEnter = true, 
signName = {subTitle = "일루전", mainTitle = "뒤틀린 미궁 숲"}
, backgroundBmp = "dungeon"}
, 
["1@halo.rsw"] = {displayName = "할로윈 축제장", notifyEnter = true, 
signName = {mainTitle = "할로윈 축제장"}
, backgroundBmp = "noname_s2"}
, 
["1@gl_prq.rsw"] = {displayName = "글래스트헤임의 몰락", notifyEnter = true, 
signName = {mainTitle = "글래스트헤임의 몰락"}
, backgroundBmp = "dungeon_s2"}
, 
["mag_dun03.rsw"] = {displayName = "유노 노그로드 3층", notifyEnter = true, 
signName = {mainTitle = "노그로드 3층"}
, backgroundBmp = "dungeon_s2"}
, 
["gl_cas01_.rsw"] = {displayName = "글래스트헤임 어비스 1층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "어비스 1층"}
, backgroundBmp = "dungeon"}
, 
["1@cor.rsw"] = {displayName = "코르 메모리얼", notifyEnter = true, 
signName = {mainTitle = "코르"}
, backgroundBmp = "dungeon_s2"}
, 
["1@os_a.rsw"] = {displayName = "오스 점령전", notifyEnter = true, 
signName = {mainTitle = "오스 점령전"}
, backgroundBmp = "dungeon_s2"}
, 
["1@os_b.rsw"] = {displayName = "봉쇄된 오스", notifyEnter = true, 
signName = {mainTitle = "봉쇄된 오스"}
, backgroundBmp = "dungeon_s2"}
, 
["1@rgsr.rsw"] = {displayName = "레겐쉬름", notifyEnter = true, 
signName = {subTitle = "기업 부설 연구소", mainTitle = "레겐쉬름"}
, backgroundBmp = "dungeon"}
, 
["rgsr_in.rsw"] = {displayName = "레켄베르 부설 연구소", notifyEnter = true, 
signName = {mainTitle = "레켄베르 부설 연구소"}
, backgroundBmp = "village_s2"}
, 
["pub_cat.rsw"] = {displayName = "총알 탄 야옹이", notifyEnter = true, 
signName = {subTitle = "아인브로크 리벨리온 펍", mainTitle = "총알 탄 야옹이"}
, backgroundBmp = "village"}
, 
["sp_cor.rsw"] = {displayName = "특수경계지역 코르", notifyEnter = true, 
signName = {subTitle = "특수경계지역", mainTitle = "코르"}
, backgroundBmp = "field"}
, 
["sp_os.rsw"] = {displayName = "특수경계지역 오스", notifyEnter = true, 
signName = {subTitle = "특수경계지역", mainTitle = "오스"}
, backgroundBmp = "dungeon"}
, 
["sp_rudus.rsw"] = {displayName = "폐기실험체 유기장 루두스 1층", notifyEnter = true, 
signName = {subTitle = "폐기실험체 유기장", mainTitle = "루두스 1층"}
, backgroundBmp = "dungeon"}
, 
["sp_rudus2.rsw"] = {displayName = "폐기실험체 유기장 루두스 2층", notifyEnter = true, 
signName = {subTitle = "폐기실험체 유기장", mainTitle = "루두스 2층"}
, backgroundBmp = "dungeon"}
, 
["sp_rudus3.rsw"] = {displayName = "폐기실험체 유기장 루두스 3층", notifyEnter = true, 
signName = {subTitle = "폐기실험체 유기장", mainTitle = "루두스 3층"}
, backgroundBmp = "dungeon"}
, 
["star_frst.rsw"] = {displayName = "유성림", notifyEnter = true, 
signName = {mainTitle = "유성림"}
, backgroundBmp = "noname_s2"}
, 
["star_in.rsw"] = {displayName = "유성림 실내"}
, 
["1@soul.rsw"] = {displayName = "영혼의 통로"}
, 
["com_d02_i.rsw"] = {displayName = "북쪽 동굴 루안다", notifyEnter = true, 
signName = {subTitle = "일루전", mainTitle = "북쪽 동굴 루안다"}
, backgroundBmp = "dungeon"}
, 
["ein_d02_i.rsw"] = {displayName = "나사리안 제국", notifyEnter = true, 
signName = {subTitle = "일루전", mainTitle = "나사리안 제국"}
, backgroundBmp = "dungeon"}
, 
["vis_h01.rsw"] = {displayName = "환영의 회랑 1층", notifyEnter = true, 
signName = {mainTitle = "환영의 회랑 1층"}
, backgroundBmp = "dungeon_s2"}
, 
["vis_h02.rsw"] = {displayName = "환영의 회랑 2층", notifyEnter = true, 
signName = {mainTitle = "환영의 회랑 2층"}
, backgroundBmp = "dungeon_s2"}
, 
["vis_h03.rsw"] = {displayName = "환영의 회랑 3층", notifyEnter = true, 
signName = {mainTitle = "환영의 회랑 3층"}
, backgroundBmp = "dungeon_s2"}
, 
["vis_h04.rsw"] = {displayName = "환영의 회랑 4층", notifyEnter = true, 
signName = {mainTitle = "환영의 회랑 4층"}
, backgroundBmp = "dungeon_s2"}
, 
["2@gl_kh.rsw"] = {displayName = "옛기사단2층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "옛 기사단 2층"}
, backgroundBmp = "dungeon"}
, 
["1@gl_kh.rsw"] = {displayName = "옛기사단1층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "옛 기사단 1층"}
, backgroundBmp = "dungeon"}
, 
["hu_fild03.rsw"] = {displayName = "왕실 사냥터", notifyEnter = true, 
signName = {mainTitle = "왕실 사냥터"}
, backgroundBmp = "field_s2"}
, 
["prt_evt_in.rsw"] = {displayName = "사냥터의 오두막"}
, 
["1@jtb.rsw"] = {displayName = "꿈과 그림자", notifyEnter = true, 
signName = {mainTitle = "꿈과 그림자"}
, backgroundBmp = "dungeon_s2"}
, 
["x_prt.rsw"] = {displayName = "차원너머의 프론테라", notifyEnter = true, 
signName = {subTitle = "차원 너머의", mainTitle = "프론테라"}
, backgroundBmp = "noname"}
, 
["x_lhz.rsw"] = {displayName = "차원너머의 리히타르젠", notifyEnter = true, 
signName = {subTitle = "차원 너머의", mainTitle = "리히타르젠"}
, backgroundBmp = "noname"}
, 
["x_ra.rsw"] = {displayName = "차원너머의 라헬", notifyEnter = true, 
signName = {subTitle = "차원 너머의", mainTitle = "라헬"}
, backgroundBmp = "noname"}
, 
["lasa_sea.rsw"] = {displayName = "냐일굴", notifyEnter = true, 
signName = {mainTitle = "냐일굴"}
, backgroundBmp = "noname_s2"}
, 
["1@drdo.rsw"] = {displayName = "전설의 도라도", notifyEnter = true, 
signName = {mainTitle = "전설의 도라도"}
, backgroundBmp = "dungeon_s2"}
, 
["que_ng.rsw"] = {displayName = "알 수 없는 곳"}
, 
["1@crd.rsw"] = {displayName = "화산섬 코로도", notifyEnter = true, 
signName = {mainTitle = "화산섬 코로도"}
, backgroundBmp = "dungeon_s2"}
, 
["tur_d03_i.rsw"] = {displayName = "쓸쓸한 양거촌", notifyEnter = true, 
signName = {subTitle = "일루전", mainTitle = "쓸쓸한 양거촌"}
, backgroundBmp = "dungeon"}
, 
["tur_d04_i.rsw"] = {displayName = "스산한 구양궁", notifyEnter = true, 
signName = {subTitle = "일루전", mainTitle = "스산한 구양궁"}
, backgroundBmp = "dungeon"}
, 
["1@begi.rsw"] = {displayName = "포링 마을", notifyEnter = true, 
signName = {mainTitle = "포링 마을"}
, backgroundBmp = "dungeon_s2"}
, 
["1@tre.rsw"] = {displayName = "수상한 난파선", notifyEnter = true, 
signName = {mainTitle = "수상한 난파선"}
, backgroundBmp = "dungeon_s2"}
, 
["ice_d03_i.rsw"] = {displayName = "프로즌 메모리", notifyEnter = true, 
signName = {subTitle = "일루전", mainTitle = "프로즌 메모리"}
, backgroundBmp = "dungeon"}
, 
["gef_d01_i.rsw"] = {displayName = "250 페이지", notifyEnter = true, 
signName = {subTitle = "일루전", mainTitle = "250 페이지"}
, backgroundBmp = "dungeon"}
, 
["pay_d03_i.rsw"] = {displayName = "월야화의 악몽", notifyEnter = true, 
signName = {subTitle = "일루전", mainTitle = "월야화의 악몽"}
, backgroundBmp = "dungeon"}
, 
["1@xm_d2.rsw"] = {displayName = "호러 장난감 공장", notifyEnter = true, 
signName = {mainTitle = "호러 장난감 공장"}
, backgroundBmp = "dungeon_s2"}
, 
["1@gl_k2.rsw"] = {displayName = "옛기사단1층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "옛 기사단 1층"}
, backgroundBmp = "dungeon"}
, 
["2@gl_k2.rsw"] = {displayName = "옛기사단2층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "옛 기사단 2층"}
, backgroundBmp = "dungeon"}
, 
["har_in01.rsw"] = {displayName = "락 릿지"}
, 
["harboro1.rsw"] = {displayName = "락 릿지", notifyEnter = true, 
signName = {mainTitle = "락 릿지"}
, backgroundBmp = "village_s2"}
, 
["harboro2.rsw"] = {displayName = "지하수로", notifyEnter = true, 
signName = {subTitle = "락 릿지", mainTitle = "지하수로"}
, backgroundBmp = "dungeon"}
, 
["rockmi1.rsw"] = {displayName = "락 릿지 광산", notifyEnter = true, 
signName = {mainTitle = "락 릿지 광산 1층"}
, backgroundBmp = "dungeon"}
, 
["rockmi2.rsw"] = {displayName = "락 릿지 광산", notifyEnter = true, 
signName = {mainTitle = "락 릿지 광산 2층"}
, backgroundBmp = "dungeon"}
, 
["rockrdg1.rsw"] = {displayName = "키와와 사막", notifyEnter = true, 
signName = {subTitle = "락 릿지", mainTitle = "키와와 사막"}
, backgroundBmp = "field"}
, 
["rockrdg2.rsw"] = {displayName = "키와와 사막", notifyEnter = true, 
signName = {subTitle = "락 릿지", mainTitle = "키와와 사막"}
, backgroundBmp = "field"}
, 
["1@md_gef.rsw"] = {displayName = "금요메모리얼", notifyEnter = true, 
signName = {mainTitle = "금요일 메모리얼"}
, backgroundBmp = "dungeon"}
, 
["1@md_pay.rsw"] = {displayName = "주말메모리얼", notifyEnter = true, 
signName = {mainTitle = "주말 메모리얼"}
, backgroundBmp = "dungeon_s2"}
, 
["1@slw.rsw"] = {displayName = "베르너연구소 중추실", notifyEnter = true, 
signName = {subTitle = "베르너연구소", mainTitle = "중추실"}
, backgroundBmp = "dungeon"}
, 
["1@swat.rsw"] = {displayName = "하트헌터 군수기지", notifyEnter = true, 
signName = {mainTitle = "하트헌터 군수기지"}
, backgroundBmp = "dungeon_s2"}
, 
["que_swat.rsw"] = {displayName = "하트헌터 군수기지", notifyEnter = true, 
signName = {mainTitle = "하트헌터 군수기지"}
, backgroundBmp = "dungeon_s2"}
, 
["slabw01.rsw"] = {displayName = "베르너 연구소", notifyEnter = true, 
signName = {mainTitle = "베르너 연구소"}
, backgroundBmp = "dungeon_s2"}
, 
["rebel_in.rsw"] = {displayName = "클라나 네미에리", notifyEnter = true, 
signName = {mainTitle = "클라나 네미에리"}
, backgroundBmp = "noname_s2"}
, 
["1@pop1.rsw"] = {displayName = "교황 집무실", notifyEnter = true, 
signName = {subTitle = "낮에 나온 반달", mainTitle = "교황 집무실"}
, backgroundBmp = "dungeon"}
, 
["1@pop2.rsw"] = {displayName = "집으로 가는 길", notifyEnter = true, 
signName = {subTitle = "낮에 나온 반달", mainTitle = "집으로 가는 길"}
, backgroundBmp = "dungeon"}
, 
["1@pop3.rsw"] = {displayName = "하늘 정원", notifyEnter = true, 
signName = {subTitle = "낮에 나온 반달", mainTitle = "하늘 정원"}
, backgroundBmp = "dungeon"}
, 
["lasagna.rsw"] = {displayName = "항구도시 라자냐", notifyEnter = true, 
signName = {subTitle = "파-스타 대륙 항구도시", mainTitle = "라자냐"}
, backgroundBmp = "village"}
, 
["lasa_fild01.rsw"] = {displayName = "라비올 평원 경계초소", notifyEnter = true, 
signName = {subTitle = "라자냐", mainTitle = "라비올 평원 경계초소"}
, backgroundBmp = "field"}
, 
["lasa_fild02.rsw"] = {displayName = "라비올 숲", notifyEnter = true, 
signName = {mainTitle = "라비올 숲"}
, backgroundBmp = "field2_s2"}
, 
["lasa_dun01.rsw"] = {displayName = "용의 둥지", notifyEnter = true, 
signName = {mainTitle = "용의 둥지 1층"}
, backgroundBmp = "dungeon_s2"}
, 
["lasa_dun02.rsw"] = {displayName = "용의 둥지", notifyEnter = true, 
signName = {mainTitle = "용의 둥지 2층"}
, backgroundBmp = "dungeon_s2"}
, 
["lasa_dun03.rsw"] = {displayName = "용의 둥지", notifyEnter = true, 
signName = {mainTitle = "용의 둥지 3층"}
, backgroundBmp = "dungeon_s2"}
, 
["conch_in.rsw"] = {displayName = "콘-킬리나 호 내부", notifyEnter = true, 
signName = {subTitle = "항구도시 라자냐", mainTitle = "콘-킬리나 호 내부"}
, backgroundBmp = "village"}
, 
["lasa_in01.rsw"] = {displayName = "라자냐 내부"}
, 
["lasa_dun_q.rsw"] = {displayName = "용의 둥지", notifyEnter = true, 
signName = {mainTitle = "용의 둥지"}
, backgroundBmp = "dungeon_s2"}
, 
["iz_int.rsw"] = {displayName = "좌초된 여객선", notifyEnter = true, 
signName = {mainTitle = "좌초된 여객선"}
, backgroundBmp = "noname_s2"}
, 
["iz_int01.rsw"] = {displayName = "좌초된 여객선", notifyEnter = true, 
signName = {mainTitle = "좌초된 여객선"}
, backgroundBmp = "noname_s2"}
, 
["iz_int02.rsw"] = {displayName = "좌초된 여객선", notifyEnter = true, 
signName = {mainTitle = "좌초된 여객선"}
, backgroundBmp = "noname_s2"}
, 
["iz_int03.rsw"] = {displayName = "좌초된 여객선", notifyEnter = true, 
signName = {mainTitle = "좌초된 여객선"}
, backgroundBmp = "noname_s2"}
, 
["iz_int04.rsw"] = {displayName = "좌초된 여객선", notifyEnter = true, 
signName = {mainTitle = "좌초된 여객선"}
, backgroundBmp = "noname_s2"}
, 
["int_land.rsw"] = {displayName = "외딴섬", notifyEnter = true, 
signName = {mainTitle = "외딴섬"}
, backgroundBmp = "field_s2"}
, 
["int_land01.rsw"] = {displayName = "외딴섬", notifyEnter = true, 
signName = {mainTitle = "외딴섬"}
, backgroundBmp = "field_s2"}
, 
["int_land02.rsw"] = {displayName = "외딴섬", notifyEnter = true, 
signName = {mainTitle = "외딴섬"}
, backgroundBmp = "field_s2"}
, 
["int_land03.rsw"] = {displayName = "외딴섬", notifyEnter = true, 
signName = {mainTitle = "외딴섬"}
, backgroundBmp = "field_s2"}
, 
["int_land04.rsw"] = {displayName = "외딴섬", notifyEnter = true, 
signName = {mainTitle = "외딴섬"}
, backgroundBmp = "field_s2"}
, 
["1@mir.rsw"] = {displayName = "의식의 방", notifyEnter = true, 
signName = {mainTitle = "의식의 방"}
, backgroundBmp = "noname_s2"}
, 
["2@mir.rsw"] = {displayName = "의식의 방", notifyEnter = true, 
signName = {mainTitle = "의식의 방"}
, backgroundBmp = "noname"}
, 
["1@sthb.rsw"] = {displayName = "공중요새 내부", notifyEnter = true, 
signName = {mainTitle = "공중요새 내부"}
, backgroundBmp = "dungeon_s2"}
, 
["1@sthc.rsw"] = {displayName = "공중요새 비밀의 방", notifyEnter = true, 
signName = {mainTitle = "공중요새 비밀의 방"}
, backgroundBmp = "dungeon_s2"}
, 
["1@sthd.rsw"] = {displayName = "공중요새 최상층", notifyEnter = true, 
signName = {mainTitle = "공중요새 최상층"}
, backgroundBmp = "dungeon_s2"}
, 
["prt_cas.rsw"] = {displayName = "프론테라 중앙궁", notifyEnter = true, 
signName = {subTitle = "프론테라 왕성", mainTitle = "중앙궁"}
, backgroundBmp = "village"}
, 
["prt_cas_q.rsw"] = {displayName = "프론테라 별궁", notifyEnter = true, 
signName = {subTitle = "프론테라 왕성", mainTitle = "별궁"}
, backgroundBmp = "village"}
, 
["prt_prison.rsw"] = {displayName = "프론테라 지하감옥", notifyEnter = true, 
signName = {subTitle = "프론테라 왕성", mainTitle = "지하 감옥"}
, backgroundBmp = "dungeon"}
, 
["prt_lib.rsw"] = {displayName = "왕가의 기억", notifyEnter = true, 
signName = {subTitle = "프론테라 왕궁", mainTitle = "왕가의 기억"}
, backgroundBmp = "noname"}
, 
["prt_lib_q.rsw"] = {displayName = "과거 왕가의 기억"}
, 
["prt_q.rsw"] = {displayName = "침공당한 프론테라", notifyEnter = true, 
signName = {mainTitle = "침공당한 프론테라"}
, backgroundBmp = "dungeon_s2"}
, 
["prt_pri00.rsw"] = {displayName = "프론테라 감옥"}
, 
["1@ffp.rsw"] = {displayName = "잔당들의 아지트", notifyEnter = true, 
signName = {mainTitle = "잔당들의 아지트"}
, backgroundBmp = "dungeon_s2"}
, 
["1@infi.rsw"] = {displayName = "무한의 공간", notifyEnter = true, 
signName = {mainTitle = "무한의 공간"}
, backgroundBmp = "dungeon_s2"}
, 
["paramk.rsw"] = {displayName = "파라마켓"}
, 
["verus01.rsw"] = {displayName = "실험동-OPTATIO", notifyEnter = true, 
signName = {subTitle = "베루스 시티", mainTitle = "실험동-OPTATIO"}
, backgroundBmp = "dungeon"}
, 
["verus02.rsw"] = {displayName = "연구동-WISH", notifyEnter = true, 
signName = {subTitle = "베루스 시티", mainTitle = "연구동-WISH"}
, backgroundBmp = "dungeon"}
, 
["un_bk_q.rsw"] = {displayName = "지하 벙커", notifyEnter = true, 
signName = {mainTitle = "지하 벙커"}
, backgroundBmp = "noname_s2"}
, 
["un_bunker.rsw"] = {displayName = "지하 벙커", notifyEnter = true, 
signName = {mainTitle = "지하 벙커"}
, backgroundBmp = "noname_s2"}
, 
["un_myst.rsw"] = {displayName = "지하 터널", notifyEnter = true, 
signName = {mainTitle = "지하 터널"}
, backgroundBmp = "noname_s2"}
, 
["1@uns.rsw"] = {displayName = "마지막 방", notifyEnter = true, 
signName = {mainTitle = "마지막 방"}
, backgroundBmp = "dungeon_s2"}
, 
["1@lab.rsw"] = {displayName = "중앙 실험실", notifyEnter = true, 
signName = {mainTitle = "중앙 실험실"}
, backgroundBmp = "dungeon_s2"}
, 
["lhz_dun_n.rsw"] = {displayName = "전사자의 무덤", notifyEnter = true, 
signName = {mainTitle = "전사자의 무덤"}
, backgroundBmp = "dungeon_s2"}
, 
["lhz_d_n2.rsw"] = {displayName = "사념의 공간", notifyEnter = true, 
signName = {mainTitle = "사념의 공간"}
, backgroundBmp = "noname_s2"}
, 
["1@glast.rsw"] = {displayName = "과거의 글래스트헤임", notifyEnter = true, 
signName = {mainTitle = "과거의 글래스트헤임"}
, backgroundBmp = "dungeon_s2"}
, 
["1@air1.rsw"] = {displayName = "비공정", notifyEnter = true, 
signName = {mainTitle = "비공정"}
, backgroundBmp = "dungeon_s2"}
, 
["1@air2.rsw"] = {displayName = "비공정", notifyEnter = true, 
signName = {mainTitle = "비공정"}
, backgroundBmp = "dungeon_s2"}
, 
["job_gun.rsw"] = {displayName = "해방의 쉼터", notifyEnter = true, 
signName = {mainTitle = "해방의 쉼터"}
, backgroundBmp = "noname_s2"}
, 
["ver_eju.rsw"] = {displayName = "유페로스 동쪽폐허", notifyEnter = true, 
signName = {subTitle = "유페로스", mainTitle = "동쪽폐허"}
, backgroundBmp = "dungeon"}
, 
["ver_tunn.rsw"] = {displayName = "베루스 외곽 터널", notifyEnter = true, 
signName = {subTitle = "베루스", mainTitle = "외곽 터널"}
, backgroundBmp = "dungeon"}
, 
["verus04.rsw"] = {displayName = "베루스 발굴지", notifyEnter = true, 
signName = {subTitle = "베루스 시티 발굴지", mainTitle = "주거동-HOPE"}
, backgroundBmp = "noname"}
, 
["verus03.rsw"] = {displayName = "베루스 중앙 광장", notifyEnter = true, 
signName = {subTitle = "베루스 시티", mainTitle = "중앙 광장"}
, backgroundBmp = "dungeon"}
, 
["1@mcd.rsw"] = {displayName = "왕의 구두굽에서", notifyEnter = true, 
signName = {mainTitle = "왕의 구두굽에서"}
, backgroundBmp = "dungeon_s2"}
, 
["e_hugel.rsw"] = {displayName = "침공당한 휘겔", notifyEnter = true, 
signName = {mainTitle = "침공당한 휘겔"}
, backgroundBmp = "field_s2"}
, 
["c_tower2_.rsw"] = {displayName = "뒤틀린 시간의 시계탑 2층", notifyEnter = true, 
signName = {subTitle = "뒤틀린 시간의", mainTitle = "시계탑 2층"}
, backgroundBmp = "dungeon"}
, 
["c_tower3_.rsw"] = {displayName = "뒤틀린 시간의 시계탑 3층", notifyEnter = true, 
signName = {subTitle = "뒤틀린 시간의", mainTitle = "시계탑 3층"}
, backgroundBmp = "dungeon"}
, 
["silk_lair.rsw"] = {displayName = "비단뱀의 은신처", notifyEnter = true}
, 
["moro_vol.rsw"] = {displayName = "화염분지", notifyEnter = true, 
signName = {mainTitle = "화염 분지"}
, backgroundBmp = "field_s2"}
, 
["moro_cav.rsw"] = {displayName = "화염동굴", notifyEnter = true, 
signName = {mainTitle = "화염 동굴"}
, backgroundBmp = "noname_s2"}
, 
["1@dth1.rsw"] = {displayName = "비오스의 섬", notifyEnter = true, 
signName = {mainTitle = "비오스의 섬"}
, backgroundBmp = "field_s2"}
, 
["1@dth2.rsw"] = {displayName = "비오스의 섬", notifyEnter = true, 
signName = {mainTitle = "비오스의 섬"}
, backgroundBmp = "dungeon_s2"}
, 
["1@dth3.rsw"] = {displayName = "비오스의 섬", notifyEnter = true, 
signName = {mainTitle = "비오스의 섬"}
, backgroundBmp = "dungeon_s2"}
, 
["1@rev.rsw"] = {displayName = "모르스의 동굴", notifyEnter = true, 
signName = {mainTitle = "모르스의 동굴"}
, backgroundBmp = "dungeon_s2"}
, 
["1@xm_d.rsw"] = {displayName = "호러 장난감 공장", notifyEnter = true, 
signName = {mainTitle = "호러 장난감 공장"}
, backgroundBmp = "dungeon_s2"}
, 
["1@eom.rsw"] = {displayName = "마신전", notifyEnter = true, 
signName = {mainTitle = "마신전"}
, backgroundBmp = "dungeon_s2"}
, 
["dali02.rsw"] = {displayName = "차원의 균열", notifyEnter = true, 
signName = {mainTitle = "차원의 균열"}
, backgroundBmp = "noname_s2"}
, 
["1@face.rsw"] = {displayName = "페이스웜의 둥지", notifyEnter = true, 
signName = {mainTitle = "페이스웜의 둥지"}
, backgroundBmp = "dungeon_s2"}
, 
["1@sara.rsw"] = {displayName = "사라의 기억", notifyEnter = true, 
signName = {mainTitle = "사라의 기억"}
, backgroundBmp = "dungeon_s2"}
, 
["dali.rsw"] = {displayName = "차원의 균열", notifyEnter = true, 
signName = {mainTitle = "차원의 균열"}
, backgroundBmp = "noname_s2"}
, 
["1@tnm1.rsw"] = {displayName = "마신의 탑 상층", notifyEnter = true, 
signName = {mainTitle = "마신의 탑 상층"}
, backgroundBmp = "dungeon_s2"}
, 
["1@tnm2.rsw"] = {displayName = "마신의 탑 최상층", notifyEnter = true, 
signName = {mainTitle = "마신의 탑 최상층"}
, backgroundBmp = "dungeon_s2"}
, 
["1@tnm3.rsw"] = {displayName = "모로크성지하", notifyEnter = true, 
signName = {mainTitle = "모로크 성 지하"}
, backgroundBmp = "dungeon_s2"}
, 
["1@ge_st.rsw"] = {displayName = "게펜 마법 대회", notifyEnter = true, 
signName = {mainTitle = "게펜 마법 대회"}
, backgroundBmp = "dungeon_s2"}
, 
["1@gef.rsw"] = {displayName = "게펜 마법 대회", notifyEnter = true, 
signName = {mainTitle = "게펜 마법 대회"}
, backgroundBmp = "dungeon_s2"}
, 
["1@gef_in.rsw"] = {displayName = "게펜 마법 대회"}
, 
["1@spa.rsw"] = {displayName = "망령의 왕궁", notifyEnter = true, 
signName = {mainTitle = "망령의 왕궁"}
, backgroundBmp = "dungeon_s2"}
, 
["1@def01.rsw"] = {displayName = "웨이브 던전 - 숲", notifyEnter = true, 
signName = {subTitle = "웨이브 던전", mainTitle = "숲"}
, backgroundBmp = "dungeon"}
, 
["1@def02.rsw"] = {displayName = "웨이브 던전 - 하늘", notifyEnter = true, 
signName = {subTitle = "웨이브 던전", mainTitle = "하늘"}
, backgroundBmp = "dungeon"}
, 
["1@def03.rsw"] = {displayName = "웨이브 던전 - 용암", notifyEnter = true, 
signName = {subTitle = "웨이브 던전", mainTitle = "용암"}
, backgroundBmp = "dungeon"}
, 
["evt_bomb.rsw"] = {displayName = "이벤트 미궁"}
, 
["gl_cas02_.rsw"] = {displayName = "2층 회랑", notifyEnter = true, 
signName = {subTitle = "고성 글래스트헤임", mainTitle = "2층 회랑"}
, backgroundBmp = "dungeon"}
, 
["gl_chyard_.rsw"] = {displayName = "수도원 묘지", notifyEnter = true, 
signName = {subTitle = "고성 글래스트헤임", mainTitle = "수도원 묘지"}
, backgroundBmp = "dungeon"}
, 
["2@gl_k.rsw"] = {displayName = "옛기사단2층", notifyEnter = true, 
signName = {subTitle = "고성 글래스트헤임", mainTitle = "옛 기사단 2층"}
, backgroundBmp = "dungeon"}
, 
["1@gl_k.rsw"] = {displayName = "옛기사단1층", notifyEnter = true, 
signName = {subTitle = "고성 글래스트헤임", mainTitle = "옛 기사단 1층"}
, backgroundBmp = "dungeon"}
, 
["te_prt_gld.rsw"] = {displayName = "글로리아", notifyEnter = true, 
signName = {subTitle = "룬-미드가츠", mainTitle = "글로리아"}
, backgroundBmp = "siege"}
, 
["te_prtcas01.rsw"] = {displayName = "게오보르그", notifyEnter = true, 
signName = {subTitle = "글로리아", mainTitle = "게오보르그"}
, backgroundBmp = "siege"}
, 
["te_prtcas02.rsw"] = {displayName = "리하르트", notifyEnter = true, 
signName = {subTitle = "글로리아", mainTitle = "리하르트"}
, backgroundBmp = "siege"}
, 
["te_prtcas03.rsw"] = {displayName = "위그너", notifyEnter = true, 
signName = {subTitle = "글로리아", mainTitle = "위그너"}
, backgroundBmp = "siege"}
, 
["te_prtcas04.rsw"] = {displayName = "하이네", notifyEnter = true, 
signName = {subTitle = "글로리아", mainTitle = "게오보르그"}
, backgroundBmp = "siege"}
, 
["te_prtcas05.rsw"] = {displayName = "네리우스", notifyEnter = true, 
signName = {subTitle = "글로리아", mainTitle = "네리우스"}
, backgroundBmp = "siege"}
, 
["teg_dun01.rsw"] = {displayName = "길드 지하 던전", notifyEnter = true, 
signName = {subTitle = "글로리아", mainTitle = "길드 지하 던전"}
, backgroundBmp = "dungeon"}
, 
["te_alde_gld.rsw"] = {displayName = "카프라가텐", notifyEnter = true, 
signName = {subTitle = "룬-미드가츠", mainTitle = "카프라가텐"}
, backgroundBmp = "siege"}
, 
["te_aldecas01.rsw"] = {displayName = "글라리스", notifyEnter = true, 
signName = {subTitle = "카프라가텐", mainTitle = "글라리스"}
, backgroundBmp = "siege"}
, 
["te_aldecas02.rsw"] = {displayName = "디포르테", notifyEnter = true, 
signName = {subTitle = "카프라가텐", mainTitle = "디포르테"}
, backgroundBmp = "siege"}
, 
["te_aldecas03.rsw"] = {displayName = "소린", notifyEnter = true, 
signName = {subTitle = "카프라가텐", mainTitle = "소린"}
, backgroundBmp = "siege"}
, 
["te_aldecas04.rsw"] = {displayName = "비닛", notifyEnter = true, 
signName = {subTitle = "카프라가텐", mainTitle = "비닛"}
, backgroundBmp = "siege"}
, 
["te_aldecas05.rsw"] = {displayName = "더블류", notifyEnter = true, 
signName = {subTitle = "카프라가텐", mainTitle = "더블류"}
, backgroundBmp = "siege"}
, 
["teg_dun02.rsw"] = {displayName = "길드 지하 던전", notifyEnter = true, 
signName = {subTitle = "카프라가텐", mainTitle = "길드 지하 던전"}
, backgroundBmp = "dungeon"}
, 
["prt_fild08d.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 남쪽 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_fild08c.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {subTitle = "프론테라 남쪽 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_fild08b.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 남쪽 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_fild08a.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 남쪽 필드"}
, backgroundBmp = "field_s2"}
, 
["iz_ac01_d.rsw"] = {displayName = "크리투라 아카데미 1층", notifyEnter = true, 
signName = {subTitle = "크리투라 아카데미 1층"}
, backgroundBmp = "noname_s1"}
, 
["iz_ac02_d.rsw"] = {displayName = "크리투라 아카데미2층", notifyEnter = true, 
signName = {subTitle = "크리투라 아카데미 2층"}
, backgroundBmp = "noname_s1"}
, 
["iz_ac01_c.rsw"] = {displayName = "크리투라 아카데미 1층", notifyEnter = true, 
signName = {subTitle = "크리투라 아카데미 1층"}
, backgroundBmp = "noname_s1"}
, 
["iz_ac02_c.rsw"] = {displayName = "크리투라 아카데미2층", notifyEnter = true, 
signName = {subTitle = "크리투라 아카데미 2층"}
, backgroundBmp = "noname_s1"}
, 
["iz_ac01_b.rsw"] = {displayName = "크리투라 아카데미 1층", notifyEnter = true, 
signName = {subTitle = "크리투라 아카데미 1층"}
, backgroundBmp = "noname_s1"}
, 
["iz_ac02_b.rsw"] = {displayName = "크리투라 아카데미2층", notifyEnter = true, 
signName = {subTitle = "크리투라 아카데미 2층"}
, backgroundBmp = "noname_s1"}
, 
["iz_ac01_a.rsw"] = {displayName = "크리투라 아카데미 1층", notifyEnter = true, 
signName = {subTitle = "크리투라 아카데미 1층"}
, backgroundBmp = "noname_s1"}
, 
["iz_ac02_a.rsw"] = {displayName = "크리투라 아카데미2층", notifyEnter = true, 
signName = {subTitle = "크리투라 아카데미 2층"}
, backgroundBmp = "noname_s1"}
, 
["izlude_d.rsw"] = {displayName = "위성도시 이즈루드", notifyEnter = true, 
signName = {subTitle = "룬-미드가츠 왕국 프론테라 위성도시", mainTitle = "이즈루드"}
, backgroundBmp = "village"}
, 
["izlude_c.rsw"] = {displayName = "위성도시 이즈루드", notifyEnter = true, 
signName = {subTitle = "룬-미드가츠 왕국 프론테라 위성도시", mainTitle = "이즈루드"}
, backgroundBmp = "village"}
, 
["izlude_b.rsw"] = {displayName = "위성도시 이즈루드", notifyEnter = true, 
signName = {subTitle = "룬-미드가츠 왕국 프론테라 위성도시", mainTitle = "이즈루드"}
, backgroundBmp = "village"}
, 
["izlude_a.rsw"] = {displayName = "위성도시 이즈루드", notifyEnter = true, 
signName = {subTitle = "룬-미드가츠 왕국 프론테라 위성도시", mainTitle = "이즈루드"}
, backgroundBmp = "village"}
, 
["iz_ac01.rsw"] = {displayName = "크리투라 아카데미 1층", notifyEnter = true, 
signName = {subTitle = "크리투라 아카데미 1층"}
, backgroundBmp = "noname_s1"}
, 
["iz_ac02.rsw"] = {displayName = "크리투라 아카데미2층", notifyEnter = true, 
signName = {subTitle = "크리투라 아카데미 2층"}
, backgroundBmp = "noname_s1"}
, 
["iz_ng01.rsw"] = {displayName = "닌자튜토리얼맵"}
, 
["treasure_n1.rsw"] = {displayName = "이즈루드 난파선 1층", notifyEnter = true, 
signName = {mainTitle = "이즈루드 난파선 1층"}
, backgroundBmp = "dungeon_s2"}
, 
["treasure_n2.rsw"] = {displayName = "이즈루드 난파선 2층", notifyEnter = true, 
signName = {mainTitle = "이즈루드 난파선 2층"}
, backgroundBmp = "dungeon_s2"}
, 
["moc_prydn1.rsw"] = {displayName = "모로크 피라미드 지하 1층 - 나이트", notifyEnter = true, 
signName = {mainTitle = "피라미드 지하 1층"}
, backgroundBmp = "dungeon_s2"}
, 
["moc_prydn2.rsw"] = {displayName = "모로크 피라미드 지하 2층 - 나이트", notifyEnter = true, 
signName = {mainTitle = "피라미드 지하 2층"}
, backgroundBmp = "dungeon_s2"}
, 
["eclage.rsw"] = {displayName = "라피네 수도 에클라쥬", notifyEnter = true, 
signName = {subTitle = "알프헤임 라피네 수도", mainTitle = "에클라쥬"}
, backgroundBmp = "village"}
, 
["ecl_fild01.rsw"] = {displayName = "꽃이 피어난 대지", notifyEnter = true, 
signName = {mainTitle = "꽃이 피어난 대지"}
, backgroundBmp = "field2_s2"}
, 
["ecl_in01.rsw"] = {displayName = "에클라쥬 내부"}
, 
["ecl_in02.rsw"] = {displayName = "에클라쥬 내부"}
, 
["ecl_in03.rsw"] = {displayName = "에클라쥬 내부"}
, 
["ecl_in04.rsw"] = {displayName = "에클라쥬 내부"}
, 
["1@ecl.rsw"] = {displayName = "에클라쥬 내부"}
, 
["ecl_tdun01.rsw"] = {displayName = "비프로스트 탑 1층", notifyEnter = true, 
signName = {mainTitle = "비프로스트 탑 1층"}
, backgroundBmp = "dungeon_s2"}
, 
["ecl_tdun02.rsw"] = {displayName = "비프로스트 탑 2층", notifyEnter = true, 
signName = {mainTitle = "비프로스트 탑 2층"}
, backgroundBmp = "dungeon_s2"}
, 
["ecl_tdun03.rsw"] = {displayName = "비프로스트 탑 3층", notifyEnter = true, 
signName = {mainTitle = "비프로스트 탑 3층"}
, backgroundBmp = "dungeon_s2"}
, 
["ecl_tdun04.rsw"] = {displayName = "비프로스트 탑 4층", notifyEnter = true, 
signName = {mainTitle = "비프로스트 탑 4층"}
, backgroundBmp = "dungeon_s2"}
, 
["ecl_hub01.rsw"] = {displayName = "에클라쥬 둘레길"}
, 
["que_avan01.rsw"] = {displayName = "에이반트 연구실"}
, 
["malaya.rsw"] = {displayName = "포트 말라야", notifyEnter = true, 
signName = {mainTitle = "포트 말라야"}
, backgroundBmp = "village_s2"}
, 
["ma_fild01.rsw"] = {displayName = "바르요 마히가와", notifyEnter = true, 
signName = {subTitle = "포트 말라야", mainTitle = "바르요 마히가와"}
, backgroundBmp = "field"}
, 
["ma_fild02.rsw"] = {displayName = "포레스트", notifyEnter = true, 
signName = {subTitle = "포트 말라야", mainTitle = "포레스트"}
, backgroundBmp = "field"}
, 
["ma_scene01.rsw"] = {displayName = "버코너워 호수", notifyEnter = true, 
signName = {subTitle = "포트 말라야", mainTitle = "버코너워 호수"}
, backgroundBmp = "field"}
, 
["ma_in01.rsw"] = {displayName = "말라야 내부"}
, 
["ma_dun01.rsw"] = {displayName = "벙웅곳 병원 1층", notifyEnter = true, 
signName = {mainTitle = "벙웅곳 병원 1층"}
, backgroundBmp = "dungeon_s2"}
, 
["1@ma_h.rsw"] = {displayName = "벙웅곳 병원 2층", notifyEnter = true, 
signName = {mainTitle = "벙웅곳 병원 2층"}
, backgroundBmp = "dungeon_s2"}
, 
["1@ma_c.rsw"] = {displayName = "부워여 동굴", notifyEnter = true, 
signName = {mainTitle = "부워여 동굴"}
, backgroundBmp = "dungeon_s2"}
, 
["1@ma_b.rsw"] = {displayName = "버코너워 은신처", notifyEnter = true, 
signName = {mainTitle = "버코너워 은신처"}
, backgroundBmp = "dungeon_s2"}
, 
["ma_zif01.rsw"] = {displayName = "지프니 내부", notifyEnter = true, 
signName = {mainTitle = "지프니"}
, backgroundBmp = "noname_s2"}
, 
["ma_zif02.rsw"] = {displayName = "지프니 내부", notifyEnter = true, 
signName = {mainTitle = "지프니"}
, backgroundBmp = "noname_s2"}
, 
["ma_zif03.rsw"] = {displayName = "지프니 내부", notifyEnter = true, 
signName = {mainTitle = "지프니"}
, backgroundBmp = "noname_s2"}
, 
["ma_zif04.rsw"] = {displayName = "지프니 내부", notifyEnter = true, 
signName = {mainTitle = "지프니"}
, backgroundBmp = "noname_s2"}
, 
["ma_zif05.rsw"] = {displayName = "지프니 내부", notifyEnter = true, 
signName = {mainTitle = "지프니"}
, backgroundBmp = "noname_s2"}
, 
["ma_zif06.rsw"] = {displayName = "지프니 내부", notifyEnter = true, 
signName = {mainTitle = "지프니"}
, backgroundBmp = "noname_s2"}
, 
["ma_zif07.rsw"] = {displayName = "지프니 내부", notifyEnter = true, 
signName = {mainTitle = "지프니"}
, backgroundBmp = "noname_s2"}
, 
["ma_zif08.rsw"] = {displayName = "지프니 내부", notifyEnter = true, 
signName = {mainTitle = "지프니"}
, backgroundBmp = "noname_s2"}
, 
["ma_zif09.rsw"] = {displayName = "지프니 내부", notifyEnter = true, 
signName = {mainTitle = "지프니"}
, backgroundBmp = "noname_s2"}
, 
["job_ko.rsw"] = {displayName = "숨겨진 장소"}
, 
["gld_dun01_2.rsw"] = {displayName = "청림호수 던전 2층", notifyEnter = true, 
signName = {subTitle = "청림호수", mainTitle = "길드 지하 던전 2층"}
, backgroundBmp = "dungeon"}
, 
["gld_dun02_2.rsw"] = {displayName = "루이나 던전 2층", notifyEnter = true, 
signName = {subTitle = "루이나", mainTitle = "길드 지하 던전 2층"}
, backgroundBmp = "dungeon"}
, 
["gld_dun03_2.rsw"] = {displayName = "발키리 렐름 던전 2층", notifyEnter = true, 
signName = {subTitle = "발키리 렐름", mainTitle = "길드 지하 던전 2층"}
, backgroundBmp = "dungeon"}
, 
["gld_dun04_2.rsw"] = {displayName = "브리토리아 던전 2층", notifyEnter = true, 
signName = {subTitle = "브리토리아", mainTitle = "길드 지하 던전 2층"}
, backgroundBmp = "dungeon"}
, 
["gld2_ald.rsw"] = {displayName = "심연의 회랑 : 영웅의 눈물", notifyEnter = true, 
signName = {subTitle = "루이나 심연의 회랑", mainTitle = "영웅의 눈물"}
, backgroundBmp = "dungeon"}
, 
["gld2_gef.rsw"] = {displayName = "심연의 회랑 : 망자의 언덕", notifyEnter = true, 
signName = {subTitle = "브리토리아 심연의 회랑", mainTitle = "망자의 언덕"}
, backgroundBmp = "dungeon"}
, 
["gld2_pay.rsw"] = {displayName = "심연의 회랑 : 태고의 바람", notifyEnter = true, 
signName = {subTitle = "청림호수 심연의 회랑", mainTitle = "태고의 바람"}
, backgroundBmp = "dungeon"}
, 
["gld2_prt.rsw"] = {displayName = "심연의 회랑 : 전사의 길", notifyEnter = true, 
signName = {subTitle = "발키리 렐름 심연의 회랑", mainTitle = "전사의 길"}
, backgroundBmp = "dungeon"}
, 
["lhz_dun04.rsw"] = {displayName = "생체실험 연구소 지하 4층", notifyEnter = true, 
signName = {mainTitle = "생체실험 연구소 지하 4층"}
, backgroundBmp = "dungeon_s2"}
, 
["que_lhz.rsw"] = {displayName = "생체실험 연구소 지하 4층", notifyEnter = true, 
signName = {mainTitle = "생체실험 연구소 지하 4층"}
, backgroundBmp = "noname_s2"}
, 
["1@lhz.rsw"] = {displayName = "보르세브의 연구실", notifyEnter = true, 
signName = {mainTitle = "보르세브의 연구실"}
, backgroundBmp = "dungeon_s2"}
, 
["iz_dun05.rsw"] = {displayName = "이즈루드 해저동굴 던전 6층", notifyEnter = true, 
signName = {subTitle = "이즈루드", mainTitle = "해저동굴 6층"}
, backgroundBmp = "dungeon"}
, 
["malangdo.rsw"] = {displayName = "말랑도", notifyEnter = true, 
signName = {mainTitle = "말랑도"}
, backgroundBmp = "village_s2"}
, 
["mal_in01.rsw"] = {displayName = "말랑도 내부"}
, 
["mal_in02.rsw"] = {displayName = "배 내부", notifyEnter = true, 
signName = {subTitle = "말랑도", mainTitle = "나비호 내부"}
, backgroundBmp = "village"}
, 
["mal_dun01.rsw"] = {displayName = "별빛산호지대", notifyEnter = true, 
signName = {mainTitle = "별빛 산호 지대"}
, backgroundBmp = "dungeon_s2"}
, 
["1@cash.rsw"] = {displayName = "문어 동굴", notifyEnter = true, 
signName = {mainTitle = "문어 동굴"}
, backgroundBmp = "dungeon_s2"}
, 
["1@pump.rsw"] = {displayName = "배수로", notifyEnter = true, 
signName = {mainTitle = "배수로"}
, backgroundBmp = "dungeon_s2"}
, 
["2@pump.rsw"] = {displayName = "배수로", notifyEnter = true, 
signName = {mainTitle = "배수로"}
, backgroundBmp = "dungeon_s2"}
, 
["dic_dun03.rsw"] = {displayName = "스카라바 홀", notifyEnter = true, 
signName = {subTitle = "카미달 터널", mainTitle = "스카라바 홀"}
, backgroundBmp = "dungeon"}
, 
["que_house_s.rsw"] = {displayName = "이상한 집"}
, 
["dewata.rsw"] = {displayName = "데와타", notifyEnter = true, 
signName = {mainTitle = "데와타"}
, backgroundBmp = "village_s2"}
, 
["dew_in01.rsw"] = {displayName = "자티 부족 마을 내부"}
, 
["dew_fild01.rsw"] = {displayName = "데와타 필드_자티 부족 마을", notifyEnter = true, 
signName = {subTitle = "데와타", mainTitle = "자티 부족 마을"}
, backgroundBmp = "field"}
, 
["dew_dun01.rsw"] = {displayName = "크라카토 화산섬", notifyEnter = true, 
signName = {subTitle = "데와타", mainTitle = "크라카토 화산섬"}
, backgroundBmp = "dungeon"}
, 
["dew_dun02.rsw"] = {displayName = "이스타나 동굴", notifyEnter = true, 
signName = {subTitle = "데와타", mainTitle = "이스타나 동굴"}
, backgroundBmp = "dungeon"}
, 
["bif_fild01.rsw"] = {displayName = "비프로스트 남부", notifyEnter = true, 
signName = {mainTitle = "비프로스트 남부"}
, backgroundBmp = "field_s2"}
, 
["bif_fild02.rsw"] = {displayName = "비프로스트 북부", notifyEnter = true, 
signName = {mainTitle = "비프로스트 북부"}
, backgroundBmp = "field_s2"}
, 
["1@mist.rsw"] = {displayName = "안개 숲의 미궁", notifyEnter = true, 
signName = {mainTitle = "안개 숲의 미궁"}
, backgroundBmp = "dungeon_s2"}
, 
["mora.rsw"] = {displayName = "라플레족 마을 모라", notifyEnter = true, 
signName = {subTitle = "비프로스트 라플레 마을", mainTitle = "모라"}
, backgroundBmp = "village"}
, 
["dicastes01.rsw"] = {displayName = "사파 수도 엘 디카스테스", notifyEnter = true, 
signName = {subTitle = "요툰헤임 사파족 수도", mainTitle = "엘 디카스테스"}
, backgroundBmp = "village"}
, 
["dicastes02.rsw"] = {displayName = "브룸벨드 요르히 숲", notifyEnter = true, 
signName = {subTitle = "엘 디카스테스", mainTitle = "브룸벨드 요르히 숲"}
, backgroundBmp = "village"}
, 
["dic_in01.rsw"] = {displayName = "디카스테스 내부"}
, 
["dic_fild01.rsw"] = {displayName = "카미달 산기슭", notifyEnter = true, 
signName = {subTitle = "요툰헤임", mainTitle = "카미달 산기슭"}
, backgroundBmp = "field"}
, 
["dic_fild02.rsw"] = {displayName = "카미달 산기슭", notifyEnter = true, 
signName = {subTitle = "요툰헤임", mainTitle = "카미달 산기슭"}
, backgroundBmp = "field"}
, 
["dic_dun01.rsw"] = {displayName = "카미달 터널", notifyEnter = true, 
signName = {subTitle = "요툰헤임", mainTitle = "카미달 터널"}
, backgroundBmp = "dungeon"}
, 
["dic_dun02.rsw"] = {displayName = "스카라바 홀", notifyEnter = true, 
signName = {subTitle = "카미달 터널", mainTitle = "스카라바 홀"}
, backgroundBmp = "dungeon"}
, 
["job3_gen01.rsw"] = {displayName = "제네릭 연구소"}
, 
["s_atelier.rsw"] = {displayName = "그림자 공방"}
, 
["brasilis.rsw"] = {displayName = "브라질리스", notifyEnter = true, 
signName = {mainTitle = "브라질리스"}
, backgroundBmp = "village_s2"}
, 
["bra_in01.rsw"] = {displayName = "브라질리스 내부"}
, 
["bra_fild01.rsw"] = {displayName = "브라질리스 필드", notifyEnter = true, 
signName = {mainTitle = "브라질리스 필드"}
, backgroundBmp = "field_s2"}
, 
["bra_dun01.rsw"] = {displayName = "브라질리스 폭포 안의 동굴 입구", notifyEnter = true, 
signName = {subTitle = "브라질리스", mainTitle = "폭포 동굴 입구"}
, backgroundBmp = "dungeon"}
, 
["bra_dun02.rsw"] = {displayName = "브라질리스 폭포 안의 동굴 내부", notifyEnter = true, 
signName = {subTitle = "브라질리스", mainTitle = "폭포 동굴 내부"}
, backgroundBmp = "dungeon"}
, 
["moc_para01.rsw"] = {displayName = "모로크 낙원단 내부", notifyEnter = true, 
signName = {mainTitle = "낙원단"}
, backgroundBmp = "village_s2"}
, 
["job3_arch01.rsw"] = {displayName = "아크비숍 전직 대기실"}
, 
["job3_arch02.rsw"] = {displayName = "휘겔 오딘 신전"}
, 
["job3_arch03.rsw"] = {displayName = "아크비숍 전직 대기실"}
, 
["job3_guil01.rsw"] = {displayName = "비밀 주점"}
, 
["job3_guil02.rsw"] = {displayName = "허름한 창고 내부"}
, 
["job3_guil03.rsw"] = {displayName = "외딴 저택"}
, 
["job3_rang01.rsw"] = {displayName = "레인저 전직 대기실"}
, 
["job3_rang02.rsw"] = {displayName = "레인저 전직 시험장"}
, 
["job3_rune01.rsw"] = {displayName = "룬나이트 기사단 내부"}
, 
["job3_rune02.rsw"] = {displayName = "룬나이트 전직 시험장"}
, 
["job3_rune03.rsw"] = {displayName = "룬나이트 전직 시험장"}
, 
["job3_war01.rsw"] = {displayName = "워록 전직 시험장"}
, 
["job3_war02.rsw"] = {displayName = "워록 전직 시험장"}
, 
["jupe_core2.rsw"] = {displayName = "유페로스 중심부", notifyEnter = true, 
signName = {mainTitle = "유페로스 중심부"}
, backgroundBmp = "dungeon_s2"}
, 
["1@nyd.rsw"] = {displayName = "니드호그의 둥지", notifyEnter = true, 
signName = {mainTitle = "니드호그의 둥지"}
, backgroundBmp = "dungeon_s2"}
, 
["2@nyd.rsw"] = {displayName = "니드호그의 둥지", notifyEnter = true, 
signName = {mainTitle = "니드호그의 둥지"}
, backgroundBmp = "dungeon_s2"}
, 
["nyd_dun01.rsw"] = {displayName = "스플랑디드 난폭자의 상처 1층", notifyEnter = true, 
signName = {mainTitle = "난폭자의 상처 1층"}
, backgroundBmp = "dungeon_s2"}
, 
["nyd_dun02.rsw"] = {displayName = "스플랑디드 난폭자의 상처 2층", notifyEnter = true, 
signName = {mainTitle = "난폭자의 상처 2층"}
, backgroundBmp = "dungeon_s2"}
, 
["manuk.rsw"] = {displayName = "광산마을 마누크", notifyEnter = true, 
signName = {subTitle = "요툰헤임 사파의 광산마을", mainTitle = "마누크"}
, backgroundBmp = "village"}
, 
["man_fild02.rsw"] = {displayName = "마누크 필드", notifyEnter = true, 
signName = {mainTitle = "마누크 필드"}
, backgroundBmp = "field_s2"}
, 
["man_in01.rsw"] = {displayName = "마누크 내부"}
, 
["splendide.rsw"] = {displayName = "라피네 전진기지 스플랑디드", notifyEnter = true, 
signName = {subTitle = "요툰헤임 라피네 전진기지", mainTitle = "스플랑디드"}
, backgroundBmp = "village"}
, 
["spl_fild01.rsw"] = {displayName = "스플랑디드 필드", notifyEnter = true, 
signName = {mainTitle = "스플랑디드 필드"}
, backgroundBmp = "field_s2"}
, 
["spl_in01.rsw"] = {displayName = "스플랑디드 야전사령부 내부"}
, 
["spl_in02.rsw"] = {displayName = "스플랑디드 내부"}
, 
["bat_c01.rsw"] = {displayName = "크리거 폰 미드가르드", notifyEnter = true}
, 
["bat_c02.rsw"] = {displayName = "크리거 폰 미드가르드", notifyEnter = true}
, 
["bat_c03.rsw"] = {displayName = "크리거 폰 미드가르드", notifyEnter = true}
, 
["mid_camp.rsw"] = {displayName = "미드가르드 연합 주둔지", notifyEnter = true, 
signName = {subTitle = "요툰헤임", mainTitle = "미드가르드 연합 주둔지"}
, backgroundBmp = "village"}
, 
["mid_campin.rsw"] = {displayName = "미드가르드 연합 주둔지 내부"}
, 
["man_fild01.rsw"] = {displayName = "마누크 필드", notifyEnter = true}
, 
["man_fild03.rsw"] = {displayName = "마누크 필드", notifyEnter = true, 
signName = {mainTitle = "마누크 필드"}
, backgroundBmp = "field_s2"}
, 
["spl_fild02.rsw"] = {displayName = "스플랑디드 필드", notifyEnter = true, 
signName = {mainTitle = "스플랑디드 필드"}
, backgroundBmp = "field_s2"}
, 
["spl_fild03.rsw"] = {displayName = "스플랑디드 필드", notifyEnter = true, 
signName = {mainTitle = "스플랑디드 필드"}
, backgroundBmp = "field_s2"}
, 
["moc_fild22b.rsw"] = {displayName = "소그라트 사막 차원의 균열", notifyEnter = true, 
signName = {subTitle = "소그라트 사막", mainTitle = "차원의 균열"}
, backgroundBmp = "field2"}
, 
["que_dan01.rsw"] = {displayName = "휘겔 필드"}
, 
["que_dan02.rsw"] = {displayName = "유노의 버려진 집 내부"}
, 
["schg_que01.rsw"] = {displayName = "모어스톤의 풀밭", notifyEnter = true, 
signName = {mainTitle = "모어스톤의 풀발"}
, backgroundBmp = "noname_s2"}
, 
["schg_dun01.rsw"] = {displayName = "길드 지하 던전", notifyEnter = true, 
signName = {subTitle = "니다뵐", mainTitle = "길드 지하 던전"}
, backgroundBmp = "dungeon"}
, 
["arug_que01.rsw"] = {displayName = "모어스톤의 풀밭", notifyEnter = true, 
signName = {mainTitle = "모어스톤의 풀발"}
, backgroundBmp = "noname_s2"}
, 
["arug_dun01.rsw"] = {displayName = "길드 지하 던전", notifyEnter = true, 
signName = {subTitle = "발프레이야", mainTitle = "길드 지하 던전"}
, backgroundBmp = "dungeon"}
, 
["1@orcs.rsw"] = {displayName = "오크 지하 동굴", notifyEnter = true, 
signName = {mainTitle = "오크 지하 동굴"}
, backgroundBmp = "dungeon_s2"}
, 
["2@orcs.rsw"] = {displayName = "오크 지하 동굴", notifyEnter = true, 
signName = {mainTitle = "오크 지하 동굴"}
, backgroundBmp = "dungeon_s2"}
, 
["1@cata.rsw"] = {displayName = "카타콤", notifyEnter = true, 
signName = {mainTitle = "카타콤"}
, backgroundBmp = "dungeon_s2"}
, 
["2@cata.rsw"] = {displayName = "봉인된 신전", notifyEnter = true, 
signName = {mainTitle = "봉인된 신전"}
, backgroundBmp = "dungeon_s2"}
, 
["e_tower.rsw"] = {displayName = "미스티 아일랜드", notifyEnter = true, 
signName = {mainTitle = "미스티 아일랜드"}
, backgroundBmp = "noname_s2"}
, 
["1@tower.rsw"] = {displayName = "엔들레스 타워 최하층", notifyEnter = true, 
signName = {mainTitle = "엔들레스 타워 최하층"}
, backgroundBmp = "dungeon_s2"}
, 
["2@tower.rsw"] = {displayName = "엔들레스 타워 하층", notifyEnter = true, 
signName = {mainTitle = "엔들레스 타워 하층"}
, backgroundBmp = "dungeon_s2"}
, 
["3@tower.rsw"] = {displayName = "엔들레스 타워 중층", notifyEnter = true, 
signName = {mainTitle = "엔들레스 타워 중층"}
, backgroundBmp = "dungeon_s2"}
, 
["4@tower.rsw"] = {displayName = "엔들레스 타워 상층", notifyEnter = true, 
signName = {mainTitle = "엔들레스 타워 상층"}
, backgroundBmp = "dungeon_s2"}
, 
["5@tower.rsw"] = {displayName = "엔들레스 타워 최상층", notifyEnter = true, 
signName = {mainTitle = "엔들레스 타워 최상층"}
, backgroundBmp = "dungeon_s2"}
, 
["6@tower.rsw"] = {displayName = "엔들레스 타워(알 수 없는 곳)"}
, 
["bat_room.rsw"] = {displayName = "전장 대기실", notifyEnter = true, 
signName = {mainTitle = "전장 대기실"}
, backgroundBmp = "noname_s2"}
, 
["bat_a01.rsw"] = {displayName = "티에라 협곡", notifyEnter = true, 
signName = {subTitle = "전장", mainTitle = "티에라 협곡"}
, backgroundBmp = "noname"}
, 
["bat_a02.rsw"] = {displayName = "티에라 협곡", notifyEnter = true, 
signName = {subTitle = "전장", mainTitle = "티에라 협곡"}
, backgroundBmp = "noname"}
, 
["bat_b01.rsw"] = {displayName = "플라비우스", notifyEnter = true, 
signName = {subTitle = "전장", mainTitle = "플라비우스"}
, backgroundBmp = "noname"}
, 
["bat_b02.rsw"] = {displayName = "플라비우스", notifyEnter = true, 
signName = {subTitle = "전장", mainTitle = "플라비우스"}
, backgroundBmp = "noname"}
, 
["que_qsch01.rsw"] = {displayName = "허상의 오콜니르", notifyEnter = true, 
signName = {mainTitle = "허상의 오콜니르"}
, backgroundBmp = "dungeon_s2"}
, 
["que_qsch02.rsw"] = {displayName = "허상의 오콜니르", notifyEnter = true, 
signName = {mainTitle = "허상의 오콜니르"}
, backgroundBmp = "dungeon_s2"}
, 
["que_qsch03.rsw"] = {displayName = "허상의 오콜니르", notifyEnter = true, 
signName = {mainTitle = "허상의 오콜니르"}
, backgroundBmp = "dungeon_s2"}
, 
["que_qsch04.rsw"] = {displayName = "허상의 오콜니르", notifyEnter = true, 
signName = {mainTitle = "허상의 오콜니르"}
, backgroundBmp = "dungeon_s2"}
, 
["que_qsch05.rsw"] = {displayName = "허상의 오콜니르", notifyEnter = true, 
signName = {mainTitle = "허상의 오콜니르"}
, backgroundBmp = "dungeon_s2"}
, 
["que_qaru01.rsw"] = {displayName = "허상의 오콜니르", notifyEnter = true, 
signName = {mainTitle = "허상의 오콜니르"}
, backgroundBmp = "dungeon_s2"}
, 
["que_qaru02.rsw"] = {displayName = "허상의 오콜니르", notifyEnter = true, 
signName = {mainTitle = "허상의 오콜니르"}
, backgroundBmp = "dungeon_s2"}
, 
["que_qaru03.rsw"] = {displayName = "허상의 오콜니르", notifyEnter = true, 
signName = {mainTitle = "허상의 오콜니르"}
, backgroundBmp = "dungeon_s2"}
, 
["que_qaru04.rsw"] = {displayName = "허상의 오콜니르", notifyEnter = true, 
signName = {mainTitle = "허상의 오콜니르"}
, backgroundBmp = "dungeon_s2"}
, 
["que_qaru05.rsw"] = {displayName = "허상의 오콜니르", notifyEnter = true, 
signName = {mainTitle = "허상의 오콜니르"}
, backgroundBmp = "dungeon_s2"}
, 
["arug_cas01.rsw"] = {displayName = "마르돌", notifyEnter = true, 
signName = {subTitle = "발프레이야", mainTitle = "마르돌"}
, backgroundBmp = "siege"}
, 
["arug_cas02.rsw"] = {displayName = "시르", notifyEnter = true, 
signName = {subTitle = "발프레이야", mainTitle = "시르"}
, backgroundBmp = "siege"}
, 
["arug_cas03.rsw"] = {displayName = "호른", notifyEnter = true, 
signName = {subTitle = "발프레이야", mainTitle = "호른"}
, backgroundBmp = "siege"}
, 
["arug_cas04.rsw"] = {displayName = "게픈", notifyEnter = true, 
signName = {subTitle = "발프레이야", mainTitle = "게픈"}
, backgroundBmp = "siege"}
, 
["arug_cas05.rsw"] = {displayName = "바나디스", notifyEnter = true, 
signName = {subTitle = "발프레이야", mainTitle = "바나디스"}
, backgroundBmp = "siege"}
, 
["aru_gld.rsw"] = {displayName = "발프레이야", notifyEnter = true, 
signName = {subTitle = "라헬", mainTitle = "발프레이야"}
, backgroundBmp = "siege"}
, 
["moscovia.rsw"] = {displayName = "모스코비아", notifyEnter = true, 
signName = {mainTitle = "모스코비아"}
, backgroundBmp = "village_s2"}
, 
["mosk_in.rsw"] = {displayName = "모스코비아 내부"}
, 
["mosk_ship.rsw"] = {displayName = "배"}
, 
["mosk_fild01.rsw"] = {displayName = "고래 섬", notifyEnter = true, 
signName = {subTitle = "모스코비아", mainTitle = "고래 섬"}
, backgroundBmp = "field"}
, 
["mosk_fild02.rsw"] = {displayName = "모스코비아 필드", notifyEnter = true, 
signName = {mainTitle = "모스코비아 필드"}
, backgroundBmp = "field_s2"}
, 
["mosk_dun01.rsw"] = {displayName = "모스코비아 숲", notifyEnter = true, 
signName = {mainTitle = "모스코비아 숲"}
, backgroundBmp = "field_s2"}
, 
["mosk_dun02.rsw"] = {displayName = "모스코비아 깊은 숲", notifyEnter = true, 
signName = {subTitle = "모스코비아", mainTitle = "깊은 숲"}
, backgroundBmp = "field"}
, 
["mosk_dun03.rsw"] = {displayName = "모스코비아 깊고 깊은 숲", notifyEnter = true, 
signName = {subTitle = "모스코비아", mainTitle = "깊고 깊은 숲"}
, backgroundBmp = "field"}
, 
["schg_cas01.rsw"] = {displayName = "히민", notifyEnter = true, 
signName = {subTitle = "니다뵐", mainTitle = "히민"}
, backgroundBmp = "siege"}
, 
["schg_cas02.rsw"] = {displayName = "안들랑그", notifyEnter = true, 
signName = {subTitle = "니다뵐", mainTitle = "안들랑그"}
, backgroundBmp = "siege"}
, 
["schg_cas03.rsw"] = {displayName = "비드블라인", notifyEnter = true, 
signName = {subTitle = "니다뵐", mainTitle = "비드블라인"}
, backgroundBmp = "siege"}
, 
["schg_cas04.rsw"] = {displayName = "흘료드", notifyEnter = true, 
signName = {subTitle = "니다뵐", mainTitle = "흘료드"}
, backgroundBmp = "siege"}
, 
["schg_cas05.rsw"] = {displayName = "스카티르닐", notifyEnter = true, 
signName = {subTitle = "니다뵐", mainTitle = "스카티르닐"}
, backgroundBmp = "siege"}
, 
["sch_gld.rsw"] = {displayName = "니다뵐", notifyEnter = true, 
signName = {subTitle = "유노", mainTitle = "니다뵐"}
, backgroundBmp = "siege"}
, 
["cave.rsw"] = {displayName = "동굴마을", notifyEnter = true, 
signName = {mainTitle = "동굴마을"}
, backgroundBmp = "noname_s2"}
, 
["moc_fild20.rsw"] = {displayName = "소그라트 사막 차원의 균열", notifyEnter = true, 
signName = {subTitle = "소그라트 사막", mainTitle = "차원의 균열"}
, backgroundBmp = "field"}
, 
["moc_fild21.rsw"] = {displayName = "소그라트 사막 차원의 균열", notifyEnter = true, 
signName = {subTitle = "소그라트 사막", mainTitle = "차원의 균열"}
, backgroundBmp = "field"}
, 
["moc_fild22.rsw"] = {displayName = "소그라트 사막 차원의 균열", notifyEnter = true, 
signName = {subTitle = "소그라트 사막", mainTitle = "차원의 균열"}
, backgroundBmp = "field"}
, 
["bossnia_01.rsw"] = {displayName = "보스니아", notifyEnter = true, 
signName = {mainTitle = "보스니아"}
, backgroundBmp = "dungeon_s2"}
, 
["bossnia_02.rsw"] = {displayName = "보스니아", notifyEnter = true, 
signName = {mainTitle = "보스니아"}
, backgroundBmp = "dungeon_s2"}
, 
["bossnia_03.rsw"] = {displayName = "보스니아", notifyEnter = true, 
signName = {mainTitle = "보스니아"}
, backgroundBmp = "dungeon_s2"}
, 
["bossnia_04.rsw"] = {displayName = "보스니아", notifyEnter = true, 
signName = {mainTitle = "보스니아"}
, backgroundBmp = "dungeon_s2"}
, 
["itemmall.rsw"] = {displayName = "아이템 몰"}
, 
["poring_w01.rsw"] = {displayName = "포링대전 대기실", notifyEnter = true, 
signName = {mainTitle = "포링대전 대기실"}
, backgroundBmp = "noname_s2"}
, 
["poring_w02.rsw"] = {displayName = "포링대전장", notifyEnter = true, 
signName = {mainTitle = "포링대전장"}
, backgroundBmp = "noname_s2"}
, 
["nameless_i.rsw"] = {displayName = "이름 없는 섬", notifyEnter = true, 
signName = {mainTitle = "이름 없는 섬"}
, backgroundBmp = "field_s2"}
, 
["nameless_n.rsw"] = {displayName = "이름 없는 섬", notifyEnter = true, 
signName = {mainTitle = "이름 없는 섬"}
, backgroundBmp = "field_s2"}
, 
["nameless_in.rsw"] = {displayName = "이름 없는 섬 내부"}
, 
["abbey01.rsw"] = {displayName = "이름 없는 섬 수도원 1층", notifyEnter = true, 
signName = {subTitle = "이름 없는 섬", mainTitle = "수도원 1층"}
, backgroundBmp = "dungeon"}
, 
["abbey02.rsw"] = {displayName = "이름 없는 섬 수도원 지하 1층", notifyEnter = true, 
signName = {subTitle = "이름없는 섬", mainTitle = "수도원 지하 1층"}
, backgroundBmp = "dungeon"}
, 
["abbey03.rsw"] = {displayName = "이름 없는 섬 수도원 지하 2층", notifyEnter = true, 
signName = {subTitle = "이름 없는 섬", mainTitle = "수도원 지하 2층"}
, backgroundBmp = "dungeon"}
, 
["que_temsky.rsw"] = {displayName = "교황 집무실(하늘정원)", notifyEnter = true, 
signName = {subTitle = "세스룸니르 교황 집무실", mainTitle = "하늘 정원"}
, backgroundBmp = "noname"}
, 
["z_agit.rsw"] = {displayName = "Z단의 아지트", notifyEnter = true, 
signName = {mainTitle = "Z단의 아지트"}
, backgroundBmp = "noname_s2"}
, 
["veins.rsw"] = {displayName = "협곡마을 베인스", notifyEnter = true, 
signName = {subTitle = "아루나펠츠 교국 협곡마을", mainTitle = "베인스"}
, backgroundBmp = "village"}
, 
["ve_in.rsw"] = {displayName = "베인스 내부"}
, 
["ve_in02.rsw"] = {displayName = "베인스 내부"}
, 
["ve_fild01.rsw"] = {displayName = "베인스 필드", notifyEnter = true, 
signName = {mainTitle = "베인스 필드"}
, backgroundBmp = "field_s2"}
, 
["ve_fild02.rsw"] = {displayName = "베인스 필드", notifyEnter = true, 
signName = {mainTitle = "베인스 필드"}
, backgroundBmp = "field_s2"}
, 
["ve_fild03.rsw"] = {displayName = "베인스 필드", notifyEnter = true, 
signName = {mainTitle = "베인스 필드"}
, backgroundBmp = "field_s2"}
, 
["ve_fild04.rsw"] = {displayName = "베인스 필드", notifyEnter = true, 
signName = {mainTitle = "베인스 필드"}
, backgroundBmp = "field_s2"}
, 
["ve_fild06.rsw"] = {displayName = "베인스 필드", notifyEnter = true, 
signName = {mainTitle = "베인스 필드"}
, backgroundBmp = "field_s2"}
, 
["ve_fild07.rsw"] = {displayName = "베인스 필드", notifyEnter = true, 
signName = {mainTitle = "베인스 필드"}
, backgroundBmp = "field_s2"}
, 
["thor_camp.rsw"] = {displayName = "토르 화산 병참기지", notifyEnter = true, 
signName = {mainTitle = "토르 화산 병참기지"}
, backgroundBmp = "noname_s2"}
, 
["que_thor.rsw"] = {displayName = "토르 화산 던전", notifyEnter = true, 
signName = {mainTitle = "토르 화산 던전"}
, backgroundBmp = "noname_s2"}
, 
["thor_v01.rsw"] = {displayName = "토르 화산 던전 1층", notifyEnter = true, 
signName = {mainTitle = "토르 화산 던전 1층"}
, backgroundBmp = "dungeon_s2"}
, 
["thor_v02.rsw"] = {displayName = "토르 화산 던전 2층", notifyEnter = true, 
signName = {mainTitle = "토르 화산 던전 2층"}
, backgroundBmp = "dungeon_s2"}
, 
["thor_v03.rsw"] = {displayName = "토르 화산 던전 3층", notifyEnter = true, 
signName = {mainTitle = "토르 화산 던전 3층"}
, backgroundBmp = "dungeon_s2"}
, 
["rachel.rsw"] = {displayName = "아루나펠츠 교국 수도 라헬", notifyEnter = true, 
signName = {subTitle = "아루나펠츠 교국 수도", mainTitle = "라헬"}
, backgroundBmp = "village"}
, 
["ra_in01.rsw"] = {displayName = "라헬 내부"}
, 
["ra_temple.rsw"] = {displayName = "프레이야 대신전(세스룸니르)", notifyEnter = true, 
signName = {subTitle = "아루나펠츠 프레이야 대신전", mainTitle = "세스룸니르"}
, backgroundBmp = "village"}
, 
["ra_temin.rsw"] = {displayName = "신전 내부"}
, 
["que_rachel.rsw"] = {displayName = "신전 내부"}
, 
["ra_temsky.rsw"] = {displayName = "교황 집무실(하늘 정원)", notifyEnter = true, 
signName = {subTitle = "세스룸니르 교황 집무실", mainTitle = "하늘 정원"}
, backgroundBmp = "noname"}
, 
["ra_fild01.rsw"] = {displayName = "라헬 아우둠라 초원", notifyEnter = true, 
signName = {mainTitle = "아우둠라 초원"}
, backgroundBmp = "field_s2"}
, 
["ra_fild03.rsw"] = {displayName = "라헬 이다 평원", notifyEnter = true, 
signName = {mainTitle = "이다 평원"}
, backgroundBmp = "field_s2"}
, 
["ra_fild04.rsw"] = {displayName = "라헬 아우둠라 초원", notifyEnter = true, 
signName = {mainTitle = "아우둠라 초원"}
, backgroundBmp = "field_s2"}
, 
["ra_fild05.rsw"] = {displayName = "라헬 아우둠라 초원", notifyEnter = true, 
signName = {mainTitle = "아우둠라 초원"}
, backgroundBmp = "field_s2"}
, 
["ra_fild06.rsw"] = {displayName = "포르투 루나", notifyEnter = true, 
signName = {mainTitle = "포르투 루나"}
, backgroundBmp = "field_s2"}
, 
["ra_fild08.rsw"] = {displayName = "라헬 이다 평원", notifyEnter = true, 
signName = {mainTitle = "이다 평원"}
, backgroundBmp = "field_s2"}
, 
["ra_fild12.rsw"] = {displayName = "라헬 이다 평원", notifyEnter = true, 
signName = {mainTitle = "이다 평원"}
, backgroundBmp = "field_s2"}
, 
["ra_san01.rsw"] = {displayName = "라헬 신전 성역 1층 북쪽 구역", notifyEnter = true, 
signName = {subTitle = "라헬 신전 세스룸니르", mainTitle = "성역 1층 북쪽 구역"}
, backgroundBmp = "dungeon"}
, 
["ra_san02.rsw"] = {displayName = "라헬 신전 성역 1층 서쪽 구역", notifyEnter = true, 
signName = {subTitle = "라헬 신전 세스룸니르", mainTitle = "성역 1층 서쪽 구역"}
, backgroundBmp = "dungeon"}
, 
["ra_san03.rsw"] = {displayName = "라헬 신전 성역 1층 동쪽 구역", notifyEnter = true, 
signName = {subTitle = "라헬 신전 세스룸니르", mainTitle = "성역 1층 동쪽 구역"}
, backgroundBmp = "dungeon"}
, 
["ra_san04.rsw"] = {displayName = "라헬 신전 성역 1층 남쪽 구역", notifyEnter = true, 
signName = {subTitle = "라헬 신전 세스룸니르", mainTitle = "성역 1층 남쪽 구역"}
, backgroundBmp = "dungeon"}
, 
["ra_san05.rsw"] = {displayName = "라헬 신전 성역 2층 중앙 구역", notifyEnter = true, 
signName = {subTitle = "라헬 신전 세스룸니르", mainTitle = "성역 2층 중앙 구역"}
, backgroundBmp = "dungeon"}
, 
["ice_dun01.rsw"] = {displayName = "라헬 얼음 동굴 1층", notifyEnter = true, 
signName = {mainTitle = "라헬 얼음 동굴 1층"}
, backgroundBmp = "dungeon_s2"}
, 
["ice_dun02.rsw"] = {displayName = "라헬 얼음 동굴 2층", notifyEnter = true, 
signName = {mainTitle = "라헬 얼음 동굴 2층"}
, backgroundBmp = "dungeon_s2"}
, 
["ice_dun03.rsw"] = {displayName = "라헬 얼음 동굴 3층", notifyEnter = true, 
signName = {mainTitle = "라헬 얼음 동굴 3층"}
, backgroundBmp = "dungeon_s2"}
, 
["ice_dun04.rsw"] = {displayName = "라헬 얼음 동굴 봉인의 공간", notifyEnter = true, 
signName = {mainTitle = "라헬 얼음 동굴 봉인의 공간"}
, backgroundBmp = "noname_s2"}
, 
["hugel.rsw"] = {displayName = "전원도시 휘겔", notifyEnter = true, 
signName = {subTitle = "슈발츠발드 공화국 전원도시", mainTitle = "휘겔"}
, backgroundBmp = "village"}
, 
["hu_in01.rsw"] = {displayName = "휘겔 내부"}
, 
["que_bingo.rsw"] = {displayName = "빙고 경기장"}
, 
["que_hugel.rsw"] = {displayName = "오딘 신전 지하", notifyEnter = true, 
signName = {mainTitle = "오딘 신전 지하"}
, backgroundBmp = "noname_s2"}
, 
["p_track01.rsw"] = {displayName = "몬스터 레이스 경기장", notifyEnter = true, 
signName = {mainTitle = "몬스터 레이스 경기장"}
, backgroundBmp = "noname_s2"}
, 
["p_track02.rsw"] = {displayName = "몬스터 레이스 경기장", notifyEnter = true, 
signName = {mainTitle = "몬스터 레이스 경기장"}
, backgroundBmp = "noname_s2"}
, 
["odin_tem01.rsw"] = {displayName = "휘겔 오딘 신전 서쪽 지역", notifyEnter = true, 
signName = {mainTitle = "오딘 신전 서쪽 지역"}
, backgroundBmp = "field_s2"}
, 
["odin_tem02.rsw"] = {displayName = "휘겔 오딘 신전 남쪽 지역", notifyEnter = true, 
signName = {mainTitle = "오딘 신전 남쪽 지역"}
, backgroundBmp = "field_s2"}
, 
["odin_tem03.rsw"] = {displayName = "휘겔 오딘 신전 북쪽 지역", notifyEnter = true, 
signName = {mainTitle = "오딘 신전 북쪽 지역"}
, backgroundBmp = "field_s2"}
, 
["hu_fild02.rsw"] = {displayName = "휘겔 필드", notifyEnter = true, 
signName = {mainTitle = "휘겔 필드"}
, backgroundBmp = "field_s2"}
, 
["hu_fild06.rsw"] = {displayName = "휘겔 필드", notifyEnter = true, 
signName = {mainTitle = "휘겔 필드"}
, backgroundBmp = "field_s2"}
, 
["ein_fild01.rsw"] = {displayName = "아인브로크 필드", notifyEnter = true, 
signName = {mainTitle = "아인브로크 필드"}
, backgroundBmp = "field_s2"}
, 
["ein_fild05.rsw"] = {displayName = "아인브로크 필드", notifyEnter = true, 
signName = {mainTitle = "아인브로크 필드"}
, backgroundBmp = "field_s2"}
, 
["kh_kiehl02.rsw"] = {displayName = "키엘의 마지막 방"}
, 
["kh_kiehl01.rsw"] = {displayName = "키엘의 방"}
, 
["kh_dun02.rsw"] = {displayName = "기계인형공장 2층", notifyEnter = true, 
signName = {mainTitle = "기계인형공장 2층"}
, backgroundBmp = "dungeon_s2"}
, 
["kh_dun01.rsw"] = {displayName = "기계인형공장 1층", notifyEnter = true, 
signName = {mainTitle = "기계인형공장 1층"}
, backgroundBmp = "dungeon_s2"}
, 
["kh_mansion.rsw"] = {displayName = "킬 하이르 저택", notifyEnter = true, 
signName = {mainTitle = "킬 하이르 저택"}
, backgroundBmp = "noname_s2"}
, 
["kh_rossi.rsw"] = {displayName = "로시미에르가 저택", notifyEnter = true, 
signName = {mainTitle = "로시미에르가 저택"}
, backgroundBmp = "noname_s2"}
, 
["kh_school.rsw"] = {displayName = "킬 하이르 학원", notifyEnter = true, 
signName = {mainTitle = "킬 하이르 학원"}
, backgroundBmp = "noname_s2"}
, 
["kh_vila.rsw"] = {displayName = "킬 하이르 별장", notifyEnter = true, 
signName = {mainTitle = "킬 하이르 별장"}
, backgroundBmp = "noname_s2"}
, 
["auction_01.rsw"] = {displayName = "경매장"}
, 
["auction_02.rsw"] = {displayName = "경매장"}
, 
["que_job01.rsw"] = {displayName = "비밀주점", notifyEnter = true, 
signName = {mainTitle = "비밀주점"}
, backgroundBmp = "noname_s2"}
, 
["abyss_01.rsw"] = {displayName = "휘겔 어비스 호수 지하 동굴 1층", notifyEnter = true, 
signName = {subTitle = "휘겔 어비스 호수", mainTitle = "지하 동굴 1층"}
, backgroundBmp = "dungeon"}
, 
["abyss_02.rsw"] = {displayName = "휘겔 어비스 호수 지하 동굴 2층", notifyEnter = true, 
signName = {subTitle = "휘겔 어비스 호수", mainTitle = "지하 동굴 2층"}
, backgroundBmp = "dungeon"}
, 
["abyss_03.rsw"] = {displayName = "휘겔 어비스 호수 지하 동굴 3층", notifyEnter = true, 
signName = {subTitle = "휘겔 어비스 호수", mainTitle = "지하 동굴 3층"}
, backgroundBmp = "dungeon"}
, 
["tha_t01.rsw"] = {displayName = "타나토스 타워 하층부 박물관 입구", notifyEnter = true, 
signName = {subTitle = "타나토스 타워 하층부", mainTitle = "박물관 입구"}
, backgroundBmp = "dungeon"}
, 
["tha_t02.rsw"] = {displayName = "타나토스 타워 하층부 박물관", notifyEnter = true, 
signName = {subTitle = "타나토스 타워 하층부", mainTitle = "박물관"}
, backgroundBmp = "dungeon"}
, 
["tha_t03.rsw"] = {displayName = "타나토스 타워 하층부 버려진 공간", notifyEnter = true, 
signName = {subTitle = "타나토스 타워 하층부", mainTitle = "버려진 공간"}
, backgroundBmp = "dungeon"}
, 
["tha_t04.rsw"] = {displayName = "타나토스 타워 하층부 버려진 공간", notifyEnter = true, 
signName = {subTitle = "타나토스 타워 하층부", mainTitle = "버려진 공간"}
, backgroundBmp = "dungeon"}
, 
["tha_t05.rsw"] = {displayName = "타나토스 타워 상층부", notifyEnter = true, 
signName = {mainTitle = "타나토스 타워 상층부"}
, backgroundBmp = "dungeon_s2"}
, 
["tha_t06.rsw"] = {displayName = "타나토스 타워 상층부", notifyEnter = true, 
signName = {mainTitle = "타나토스 타워 상층부"}
, backgroundBmp = "dungeon_s2"}
, 
["tha_t07.rsw"] = {displayName = "타나토스 타워 상층부 천사의 방", notifyEnter = true, 
signName = {subTitle = "타나토스 타워 상층부", mainTitle = "천사의 방"}
, backgroundBmp = "dungeon"}
, 
["tha_t08.rsw"] = {displayName = "타나토스 타워 상층부 천사의 방", notifyEnter = true, 
signName = {subTitle = "타나토스 타워 상층부", mainTitle = "천사의 방"}
, backgroundBmp = "dungeon"}
, 
["tha_t09.rsw"] = {displayName = "타나토스 타워 상층부 고뇌의 방", notifyEnter = true, 
signName = {subTitle = "타나토스 타워 상층부", mainTitle = "고뇌의 방"}
, backgroundBmp = "dungeon"}
, 
["tha_t10.rsw"] = {displayName = "타나토스 타워 상층부 슬픔의 방", notifyEnter = true, 
signName = {subTitle = "타나토스 타워 상층부", mainTitle = "슬픔의 방"}
, backgroundBmp = "dungeon"}
, 
["tha_t11.rsw"] = {displayName = "타나토스 타워 상층부 절망의 방", notifyEnter = true, 
signName = {subTitle = "타나토스 타워 상층부", mainTitle = "절망의 방"}
, backgroundBmp = "dungeon"}
, 
["tha_t12.rsw"] = {displayName = "타나토스 타워 상층부 증오의 방", notifyEnter = true, 
signName = {subTitle = "타나토스 타워 상층부", mainTitle = "증오의 방"}
, backgroundBmp = "dungeon"}
, 
["thana_step.rsw"] = {displayName = "타나토스 타워 상층부 계단", notifyEnter = true, 
signName = {mainTitle = "타나토스 타워 상층부 계단"}
}
, 
["thana_boss.rsw"] = {displayName = "타나토스 타워(알 수 없는 곳)"}
, 
["thana_scene01.rsw"] = {displayName = "타나토스 타워 앞", notifyEnter = true, 
signName = {mainTitle = "타나토스 타워 앞"}
, backgroundBmp = "field_s2"}
, 
["job_soul.rsw"] = {displayName = "당신의 마음"}
, 
["job_star.rsw"] = {displayName = "태양과 달과 별"}
, 
["hu_fild05.rsw"] = {displayName = "휘겔 어비스 호수", notifyEnter = true, 
signName = {mainTitle = "휘겔 어비스 호수"}
, backgroundBmp = "field_s2"}
, 
["hu_fild04.rsw"] = {displayName = "휘겔 필드", notifyEnter = true, 
signName = {mainTitle = "휘겔 필드"}
, backgroundBmp = "field_s2"}
, 
["hu_fild01.rsw"] = {displayName = "타나토스 타워 앞", notifyEnter = true, 
signName = {mainTitle = "타나토스 타워 앞"}
, backgroundBmp = "field_s2"}
, 
["yuno_fild06.rsw"] = {displayName = "엘메스 플레투", notifyEnter = true, 
signName = {mainTitle = "엘메스 플레투"}
, backgroundBmp = "field_s2"}
, 
["quiz_02.rsw"] = {displayName = "퀴즈 경기장"}
, 
["jupe_cave.rsw"] = {displayName = "유페로스 동굴 입구", notifyEnter = true, 
signName = {mainTitle = "유페로스 동굴 입구"}
, backgroundBmp = "noname_s2"}
, 
["juperos_01.rsw"] = {displayName = "유페로스 폐허 외부", notifyEnter = true, 
signName = {mainTitle = "유페로스 폐허 외부"}
, backgroundBmp = "dungeon_s2"}
, 
["juperos_02.rsw"] = {displayName = "유페로스 폐허 내부", notifyEnter = true, 
signName = {mainTitle = "유페로스 폐허 내부"}
, backgroundBmp = "dungeon_s2"}
, 
["jupe_gate.rsw"] = {displayName = "유페로스 보안 구역", notifyEnter = true, 
signName = {mainTitle = "유페로스 보안 구역"}
, backgroundBmp = "noname_s2"}
, 
["jupe_area1.rsw"] = {displayName = "유페로스 보안 구역", notifyEnter = true, 
signName = {mainTitle = "유페로스 보안 구역"}
, backgroundBmp = "noname_s2"}
, 
["jupe_area2.rsw"] = {displayName = "유페로스 보안 구역", notifyEnter = true, 
signName = {mainTitle = "유페로스 보안 구역"}
, backgroundBmp = "noname_s2"}
, 
["jupe_ele.rsw"] = {displayName = "유페로스 엘리베이터", notifyEnter = true, 
signName = {mainTitle = "유페로스 엘리베이터"}
, backgroundBmp = "noname_s2"}
, 
["jupe_ele_r.rsw"] = {displayName = "유페로스 엘리베이터실", notifyEnter = true, 
signName = {mainTitle = "유페로스 엘리베이터실"}
, backgroundBmp = "noname_s2"}
, 
["jupe_core.rsw"] = {displayName = "유페로스 중심부", notifyEnter = true, 
signName = {mainTitle = "유페로스 중심부"}
, backgroundBmp = "dungeon"}
, 
["lighthalzen.rsw"] = {displayName = "기업도시 리히타르젠", notifyEnter = true, 
signName = {subTitle = "슈발츠발드 공화국 기업도시", mainTitle = "리히타르젠"}
, backgroundBmp = "village"}
, 
["lhz_in01.rsw"] = {displayName = "레켄베르 본사", notifyEnter = true, 
signName = {mainTitle = "레켄베르 본사"}
, backgroundBmp = "noname_s2"}
, 
["lhz_in02.rsw"] = {displayName = "리히타르젠 내부"}
, 
["lhz_in03.rsw"] = {displayName = "리히타르젠 내부"}
, 
["lhz_cube.rsw"] = {displayName = "큐브 룸"}
, 
["lhz_que01.rsw"] = {displayName = "리히타르젠 내부"}
, 
["lhz_airport.rsw"] = {displayName = "리히타르젠 공항", notifyEnter = true, 
signName = {mainTitle = "리히타르젠 공항"}
, backgroundBmp = "noname_s2"}
, 
["airplane_01.rsw"] = {displayName = "비공정", notifyEnter = true, 
signName = {mainTitle = "비공정"}
, backgroundBmp = "noname_s2"}
, 
["lhz_dun01.rsw"] = {displayName = "생체실험 연구소 지하 1층", notifyEnter = true, 
signName = {mainTitle = "생체실험 연구소 지하 1층"}
, backgroundBmp = "dungeon_s2"}
, 
["lhz_dun02.rsw"] = {displayName = "생체실험 연구소 지하 2층", notifyEnter = true, 
signName = {mainTitle = "생체실험 연구소 지하 2층"}
, backgroundBmp = "dungeon_s2"}
, 
["lhz_dun03.rsw"] = {displayName = "생체실험 연구소 지하 3층", notifyEnter = true, 
signName = {mainTitle = "생체실험 연구소 지하 3층"}
, backgroundBmp = "dungeon_s2"}
, 
["lhz_fild01.rsw"] = {displayName = "리히타르젠 필드", notifyEnter = true, 
signName = {mainTitle = "리히타르젠 필드"}
, backgroundBmp = "field_s2"}
, 
["yuno_pre.rsw"] = {displayName = "슈발츠발드 정부 청사", notifyEnter = true, 
signName = {mainTitle = "슈발츠발드 정부 청사"}
, backgroundBmp = "noname_s2"}
, 
["y_airport.rsw"] = {displayName = "유노 공항", notifyEnter = true, 
signName = {mainTitle = "유노 공항"}
, backgroundBmp = "noname_s2"}
, 
["lhz_fild03.rsw"] = {displayName = "리히타르젠 필드", notifyEnter = true, 
signName = {mainTitle = "리히타르젠 필드"}
, backgroundBmp = "field_s2"}
, 
["lhz_fild02.rsw"] = {displayName = "리히타르젠 필드(사신의 계곡)", notifyEnter = true, 
signName = {subTitle = "리히타르젠 필드 ", mainTitle = "사신의 계곡"}
, backgroundBmp = "field"}
, 
["ein_fild04.rsw"] = {displayName = "아인브로크 필드", notifyEnter = true, 
signName = {mainTitle = "아인브로크 필드"}
, backgroundBmp = "field_s2"}
, 
["ein_fild03.rsw"] = {displayName = "아인브로크 필드", notifyEnter = true, 
signName = {mainTitle = "아인브로크 필드"}
, backgroundBmp = "field_s2"}
, 
["ein_dun02.rsw"] = {displayName = "아인베흐 광산 2층", notifyEnter = true, 
signName = {mainTitle = "아인베흐 광산 2층"}
, backgroundBmp = "dungeon_s2"}
, 
["ein_dun01.rsw"] = {displayName = "아인베흐 광산 1층", notifyEnter = true, 
signName = {mainTitle = "아인베흐 광산 1층"}
, backgroundBmp = "dungeon_s2"}
, 
["ein_fild09.rsw"] = {displayName = "아인브로크 필드", notifyEnter = true, 
signName = {mainTitle = "아인브로크 필드"}
, backgroundBmp = "field_s2"}
, 
["ein_fild08.rsw"] = {displayName = "아인브로크 필드", notifyEnter = true, 
signName = {mainTitle = "아인브로크 필드"}
, backgroundBmp = "field_s2"}
, 
["ein_fild07.rsw"] = {displayName = "아인브로크 필드", notifyEnter = true, 
signName = {mainTitle = "아인브로크 필드"}
, backgroundBmp = "field_s2"}
, 
["ein_fild06.rsw"] = {displayName = "아인브로크 필드", notifyEnter = true, 
signName = {mainTitle = "아인브로크 필드"}
, backgroundBmp = "field_s2"}
, 
["airplane.rsw"] = {displayName = "비공정", notifyEnter = true, 
signName = {mainTitle = "비공정"}
, backgroundBmp = "noname_s2"}
, 
["airport.rsw"] = {displayName = "아인브로크 공항", notifyEnter = true, 
signName = {mainTitle = "아인브로크 공항"}
, backgroundBmp = "noname_s2"}
, 
["ein_in01.rsw"] = {displayName = "실내"}
, 
["einbech.rsw"] = {displayName = "광산마을 아인베흐", notifyEnter = true, 
signName = {subTitle = "슈발츠발드 공화국 광산마을", mainTitle = "아인베흐"}
, backgroundBmp = "village"}
, 
["einbroch.rsw"] = {displayName = "공업도시 아인브로크", notifyEnter = true, 
signName = {subTitle = "슈발츠발드 공화국 공업도시", mainTitle = "아인브로크"}
, backgroundBmp = "village"}
, 
["turbo_e_16.rsw"] = {displayName = "터보트랙 경기장"}
, 
["turbo_e_8.rsw"] = {displayName = "터보트랙 경기장"}
, 
["turbo_e_4.rsw"] = {displayName = "터보트랙 경기장"}
, 
["turbo_n_16.rsw"] = {displayName = "터보트랙 경기장"}
, 
["turbo_n_8.rsw"] = {displayName = "터보트랙 경기장"}
, 
["turbo_n_4.rsw"] = {displayName = "터보트랙 경기장"}
, 
["turbo_n_1.rsw"] = {displayName = "터보트랙 경기장"}
, 
["turbo_room.rsw"] = {displayName = "터보트랙 대기실", notifyEnter = true, 
signName = {mainTitle = "터보트랙 대기실"}
, backgroundBmp = "noname_s2"}
, 
["yuno_fild12.rsw"] = {displayName = "슈발츠발드 국경 검문소", notifyEnter = true, 
signName = {mainTitle = "슈발츠발드 국경 검문소"}
, backgroundBmp = "field_s2"}
, 
["yuno_fild11.rsw"] = {displayName = "유노 필드", notifyEnter = true, 
signName = {mainTitle = "유노 필드"}
, backgroundBmp = "field_s2"}
, 
["yuno_fild09.rsw"] = {displayName = "슈발츠발드 경비대 야영지", notifyEnter = true, 
signName = {mainTitle = "슈발츠발드 경비대 야영지"}
, backgroundBmp = "field_s2"}
, 
["yuno_fild08.rsw"] = {displayName = "유노 킬 하이르 학원", notifyEnter = true, 
signName = {mainTitle = "유노 킬 하이르 학원"}
, backgroundBmp = "field_s2"}
, 
["yuno_fild07.rsw"] = {displayName = "엘메스 협곡(심연의 골짜기)", notifyEnter = true, 
signName = {subTitle = "심연의 골짜기", mainTitle = "엘메스 협곡"}
, backgroundBmp = "field"}
, 
["ayo_in02.rsw"] = {displayName = "아요타야 내부"}
, 
["ayo_in01.rsw"] = {displayName = "아요타야 내부"}
, 
["ayo_dun02.rsw"] = {displayName = "아요타야 고대 신전 내부", notifyEnter = true, 
signName = {mainTitle = "아요타야 고대 신전 내부"}
, backgroundBmp = "dungeon_s2"}
, 
["ayo_dun01.rsw"] = {displayName = "아요타야 고대 신전 미궁", notifyEnter = true, 
signName = {mainTitle = "아요타야 고대 신전 미궁"}
, backgroundBmp = "dungeon_s2"}
, 
["ayo_fild02.rsw"] = {displayName = "아요타야 필드", notifyEnter = true, 
signName = {mainTitle = "아요타야 필드"}
, backgroundBmp = "field_s2"}
, 
["ayo_fild01.rsw"] = {displayName = "아요타야 필드", notifyEnter = true, 
signName = {mainTitle = "아요타야 필드"}
, backgroundBmp = "field_s2"}
, 
["ayothaya.rsw"] = {displayName = "아요타야", notifyEnter = true, 
signName = {mainTitle = "아요타야"}
, backgroundBmp = "village_s2"}
, 
["que_god02.rsw"] = {displayName = "퀘스트맵"}
, 
["que_god01.rsw"] = {displayName = "퀘스트맵"}
, 
["quiz_test.rsw"] = {displayName = "시험장"}
, 
["gefenia04.rsw"] = {displayName = "게페니아", notifyEnter = true, 
signName = {mainTitle = "게페니아"}
, backgroundBmp = "dungeon_s2"}
, 
["gefenia03.rsw"] = {displayName = "게페니아", notifyEnter = true, 
signName = {mainTitle = "게페니아"}
, backgroundBmp = "dungeon_s2"}
, 
["gefenia02.rsw"] = {displayName = "게페니아", notifyEnter = true, 
signName = {mainTitle = "게페니아"}
, backgroundBmp = "dungeon_s2"}
, 
["gefenia01.rsw"] = {displayName = "게페니아", notifyEnter = true, 
signName = {mainTitle = "게페니아"}
, backgroundBmp = "dungeon_s2"}
, 
["himinn.rsw"] = {displayName = "발키리 신전(히민)", notifyEnter = true, 
signName = {mainTitle = "발키리 신전"}
, backgroundBmp = "noname_s2"}
, 
["jawaii_in.rsw"] = {displayName = "자와이 내부"}
, 
["jawaii.rsw"] = {displayName = "신혼섬 자와이", notifyEnter = true, 
signName = {subTitle = "신혼섬", mainTitle = "자와이"}
, backgroundBmp = "village"}
, 
["lou_in02.rsw"] = {displayName = "용지성 내부"}
, 
["lou_in01.rsw"] = {displayName = "용지성 내부"}
, 
["lou_dun03.rsw"] = {displayName = "용지성 센양궁", notifyEnter = true, 
signName = {mainTitle = "용지성 센양궁"}
, backgroundBmp = "dungeon_s2"}
, 
["lou_dun02.rsw"] = {displayName = "용지성 왕릉 내부", notifyEnter = true, 
signName = {mainTitle = "용지성 왕릉 내부"}
, backgroundBmp = "dungeon_s2"}
, 
["lou_dun01.rsw"] = {displayName = "용지성 왕릉", notifyEnter = true, 
signName = {mainTitle = "용지성 왕릉"}
, backgroundBmp = "dungeon_s2"}
, 
["lou_fild01.rsw"] = {displayName = "용지성 필드", notifyEnter = true, 
signName = {mainTitle = "용지성 필드"}
, backgroundBmp = "field_s2"}
, 
["louyang.rsw"] = {displayName = "고도 용지성", notifyEnter = true, 
signName = {subTitle = "고도", mainTitle = "용지성"}
, backgroundBmp = "village"}
, 
["valkyrie.rsw"] = {displayName = "발키리 신전(위대한 전사의 전당)", notifyEnter = true, 
signName = {subTitle = "위대한 전사의 전당", mainTitle = "발키리 신전"}
, backgroundBmp = "noname"}
, 
["nif_in.rsw"] = {displayName = "니플헤임 내부"}
, 
["yggdrasil01.rsw"] = {displayName = "흐베르겔미르의 샘(이그드라실줄기)", notifyEnter = true, 
signName = {mainTitle = "흐베르겔미르의 샘"}
, backgroundBmp = "noname_s2"}
, 
["nif_fild02.rsw"] = {displayName = "니플헤임 굘의 골짜기", notifyEnter = true, 
signName = {subTitle = "니플헤임", mainTitle = "굘의 골짜기"}
, backgroundBmp = "field"}
, 
["nif_fild01.rsw"] = {displayName = "니플헤임 외딴마을 스켈링튼", notifyEnter = true, 
signName = {subTitle = "니플헤임", mainTitle = "외딴마을 스켈링튼"}
, backgroundBmp = "field"}
, 
["niflheim.rsw"] = {displayName = "죽은자의 나라 니플헤임", notifyEnter = true, 
signName = {subTitle = "죽은자의 나라", mainTitle = "니플헤임"}
, backgroundBmp = "village"}
, 
["um_dun01.rsw"] = {displayName = "움발라 나무 속의 목공소", notifyEnter = true, 
signName = {subTitle = "움발라", mainTitle = "나무 속 목공소"}
, backgroundBmp = "dungeon"}
, 
["um_dun02.rsw"] = {displayName = "움발라 나무 속의 이계 통로", notifyEnter = true, 
signName = {subTitle = "움발라", mainTitle = "나무 속 통로"}
, backgroundBmp = "dungeon"}
, 
["um_in.rsw"] = {displayName = "움발라 내부"}
, 
["um_fild01.rsw"] = {displayName = "움발라 루루카 숲", notifyEnter = true, 
signName = {subTitle = "움발라", mainTitle = "루루카 숲"}
, backgroundBmp = "field"}
, 
["um_fild02.rsw"] = {displayName = "움발라 훔가 숲", notifyEnter = true, 
signName = {subTitle = "움발라", mainTitle = "훔가 숲"}
, backgroundBmp = "field"}
, 
["um_fild03.rsw"] = {displayName = "움발라 카라라 늪", notifyEnter = true, 
signName = {subTitle = "움발라", mainTitle = "카라라 늪"}
, backgroundBmp = "field"}
, 
["um_fild04.rsw"] = {displayName = "움발라 훔가 정글", notifyEnter = true, 
signName = {subTitle = "움발라", mainTitle = "훔가 정글"}
, backgroundBmp = "field"}
, 
["umbala.rsw"] = {displayName = "우탄족마을 움발라", notifyEnter = true, 
signName = {subTitle = "우탄족 마을", mainTitle = "움발라"}
, backgroundBmp = "village"}
, 
["sec_in01.rsw"] = {displayName = "발할라궁 내부"}
, 
["sec_in02.rsw"] = {displayName = "발할라궁 내부"}
, 
["sec_pri.rsw"] = {displayName = "발할라궁 반성의 방(감옥)"}
, 
["gon_test.rsw"] = {displayName = "쿤룬 격투장", notifyEnter = true, 
signName = {mainTitle = "쿤룬 격투장"}
, backgroundBmp = "noname_s2"}
, 
["gon_dun01.rsw"] = {displayName = "쿤룬 서왕모 신전", notifyEnter = true, 
signName = {subTitle = "쿤룬", mainTitle = "서왕모 신전"}
, backgroundBmp = "dungeon"}
, 
["gon_dun02.rsw"] = {displayName = "쿤룬 신선의 바둑판", notifyEnter = true, 
signName = {subTitle = "쿤룬", mainTitle = "신선의 바둑판"}
, backgroundBmp = "dungeon"}
, 
["gon_dun03.rsw"] = {displayName = "쿤룬 무릉도원", notifyEnter = true, 
signName = {subTitle = "쿤룬", mainTitle = "무릉도원"}
, backgroundBmp = "dungeon"}
, 
["gon_fild01.rsw"] = {displayName = "쿤룬 필드", notifyEnter = true, 
signName = {mainTitle = "쿤룬 필드"}
, backgroundBmp = "dungeon_s2"}
, 
["gon_in.rsw"] = {displayName = "쿤룬 내부"}
, 
["gonryun.rsw"] = {displayName = "신선의 섬 쿤룬(崑崙)", notifyEnter = true, 
signName = {subTitle = "신선의 섬", mainTitle = "쿤룬(崑崙)"}
, backgroundBmp = "village"}
, 
["ama_test.rsw"] = {displayName = "아마쯔 모모타로 체험소", notifyEnter = true, 
signName = {mainTitle = "아마쯔 모모타로 체험소"}
, backgroundBmp = "noname_s2"}
, 
["ama_dun03.rsw"] = {displayName = "아마쯔 지하 신사", notifyEnter = true, 
signName = {mainTitle = "아마쯔 지하 신사"}
, backgroundBmp = "dungeon_s2"}
, 
["ama_dun02.rsw"] = {displayName = "아마쯔 지하 숲 전장", notifyEnter = true, 
signName = {mainTitle = "아마쯔 지하 숲 전장"}
, backgroundBmp = "dungeon_s2"}
, 
["ama_dun01.rsw"] = {displayName = "아마쯔 다다미 미궁", notifyEnter = true, 
signName = {mainTitle = "아마쯔 다다미 미궁"}
, backgroundBmp = "dungeon_s2"}
, 
["ama_fild01.rsw"] = {displayName = "아마쯔 필드", notifyEnter = true, 
signName = {mainTitle = "아마쯔 필드"}
, backgroundBmp = "field_s2"}
, 
["ama_in02.rsw"] = {displayName = "천수각 내부"}
, 
["ama_in01.rsw"] = {displayName = "아마쯔 내부"}
, 
["amatsu.rsw"] = {displayName = "천수의 나라 아마쯔", notifyEnter = true, 
signName = {subTitle = "천수의 나라", mainTitle = "아마쯔"}
, backgroundBmp = "village"}
, 
["alde_alche.rsw"] = {displayName = "알케미스트 전직소"}
, 
["yuno_in05.rsw"] = {displayName = "이미르의 심장 동력실", notifyEnter = true, 
signName = {mainTitle = "이미르의 심장 동력실"}
, backgroundBmp = "noname_s2"}
, 
["yuno_in04.rsw"] = {displayName = "공화국 도서관", notifyEnter = true, 
signName = {mainTitle = "공화국 도서관"}
, backgroundBmp = "noname_s2"}
, 
["job_duncer.rsw"] = {displayName = "코모도 소극장"}
, 
["job_sage.rsw"] = {displayName = "세이지 전직 시험장"}
, 
["job_cru.rsw"] = {displayName = "크루세이더 전직 시험장"}
, 
["job_monk.rsw"] = {displayName = "성 카피톨리나 수도원"}
, 
["monk_test.rsw"] = {displayName = "성 카피톨리나 수도원"}
, 
["in_rogue.rsw"] = {displayName = "로그 길드 내부"}
, 
["mag_dun02.rsw"] = {displayName = "유노 노그로드 2층", notifyEnter = true, 
signName = {mainTitle = "유노 노그로드 2층"}
, backgroundBmp = "dungeon_s2"}
, 
["mag_dun01.rsw"] = {displayName = "유노 노그로드 1층", notifyEnter = true, 
signName = {mainTitle = "유노 노그로드 1층"}
, backgroundBmp = "dungeon_s2"}
, 
["yuno_fild04.rsw"] = {displayName = "엘메스 플레투", notifyEnter = true, 
signName = {mainTitle = "엘메스 플레투"}
, backgroundBmp = "field_s2"}
, 
["yuno_fild03.rsw"] = {displayName = "엘메스 플레투", notifyEnter = true, 
signName = {mainTitle = "엘메스 플레투"}
, backgroundBmp = "field_s2"}
, 
["yuno_fild02.rsw"] = {displayName = "킬 하이르의 별장", notifyEnter = true, 
signName = {mainTitle = "킬 하이르의 별장"}
, backgroundBmp = "field_s2"}
, 
["yuno_fild01.rsw"] = {displayName = "슈발츠발드 국경 검문소", notifyEnter = true, 
signName = {mainTitle = "슈발츠발드 국경 검문소"}
, backgroundBmp = "field_s2"}
, 
["yuno_in03.rsw"] = {displayName = "유노 내부"}
, 
["yuno_in02.rsw"] = {displayName = "세이지 케슬내부"}
, 
["yuno_in01.rsw"] = {displayName = "유노 내부"}
, 
["yuno.rsw"] = {displayName = "슈발츠발드 공화국 수도 유노", notifyEnter = true, 
signName = {subTitle = "슈발츠발드 공화국 수도", mainTitle = "유노"}
, backgroundBmp = "village"}
, 
["job_wiz.rsw"] = {displayName = "위저드 전직 시험장"}
, 
["job_prist.rsw"] = {displayName = "프리스트 전직 시험장"}
, 
["job_knt.rsw"] = {displayName = "나이트 전직 시험장"}
, 
["job_hunte.rsw"] = {displayName = "헌터 전직 시험장"}
, 
["gld_dun04.rsw"] = {displayName = "브리토리아 지하 던전 1층", notifyEnter = true, 
signName = {subTitle = "브리토리아", mainTitle = "길드 지하 던전 1층"}
, backgroundBmp = "dungeon"}
, 
["gld_dun03.rsw"] = {displayName = "발키리 렐름 지하 던전", notifyEnter = true, 
signName = {subTitle = "발키리 렐름", mainTitle = "길드 지하 던전 1층"}
, backgroundBmp = "dungeon"}
, 
["gld_dun02.rsw"] = {displayName = "루이나 지하 던전", notifyEnter = true, 
signName = {subTitle = "루이나", mainTitle = "길드 지하 던전 1층"}
, backgroundBmp = "dungeon"}
, 
["gld_dun01.rsw"] = {displayName = "청림호수 지하 던전", notifyEnter = true, 
signName = {subTitle = "청림호수", mainTitle = "길드 지하 던전 1층"}
, backgroundBmp = "dungeon"}
, 
["payg_cas05.rsw"] = {displayName = "죽림현(竹林峴)", notifyEnter = true, 
signName = {subTitle = "청림호수", mainTitle = "죽림현(竹林峴)"}
, backgroundBmp = "siege"}
, 
["payg_cas04.rsw"] = {displayName = "홍루(紅樓)", notifyEnter = true, 
signName = {subTitle = "청림호수", mainTitle = "홍루(紅樓)"}
, backgroundBmp = "siege"}
, 
["payg_cas03.rsw"] = {displayName = "불영(佛影)", notifyEnter = true, 
signName = {subTitle = "청림호수", mainTitle = "불영(佛影)"}
, backgroundBmp = "siege"}
, 
["payg_cas02.rsw"] = {displayName = "천단(天壇)", notifyEnter = true, 
signName = {subTitle = "청림호수", mainTitle = "천단(天壇)"}
, backgroundBmp = "siege"}
, 
["payg_cas01.rsw"] = {displayName = "명정(明亭)", notifyEnter = true, 
signName = {subTitle = "청림호수", mainTitle = "명정(明亭)"}
, backgroundBmp = "siege"}
, 
["pay_gld.rsw"] = {displayName = "청림 호수", notifyEnter = true, 
signName = {subTitle = "페이욘", mainTitle = "청림 호수"}
, backgroundBmp = "siege"}
, 
["aldeg_cas05.rsw"] = {displayName = "로텐부르크", notifyEnter = true, 
signName = {subTitle = "루이나", mainTitle = "로텐부르크"}
, backgroundBmp = "siege"}
, 
["aldeg_cas04.rsw"] = {displayName = "뷔르츠부르크", notifyEnter = true, 
signName = {subTitle = "루이나", mainTitle = "뷔르츠부르크"}
, backgroundBmp = "siege"}
, 
["aldeg_cas03.rsw"] = {displayName = "뉘렌베르크", notifyEnter = true, 
signName = {subTitle = "루이나", mainTitle = "뉘렌베르크"}
, backgroundBmp = "siege"}
, 
["aldeg_cas02.rsw"] = {displayName = "호헨슈반가우", notifyEnter = true, 
signName = {subTitle = "루이나", mainTitle = "호헨슈반가우"}
, backgroundBmp = "siege"}
, 
["aldeg_cas01.rsw"] = {displayName = "노이슈반스타인", notifyEnter = true, 
signName = {subTitle = "루이나", mainTitle = "노이슈반스타인"}
, backgroundBmp = "siege"}
, 
["alde_gld.rsw"] = {displayName = "알데바란 위성도시 루이나", notifyEnter = true, 
signName = {subTitle = "알데바란 위성도시", mainTitle = "루이나"}
, backgroundBmp = "siege"}
, 
["gefg_cas05.rsw"] = {displayName = "멜세스데츠", notifyEnter = true, 
signName = {subTitle = "브리토리아", mainTitle = "멜세스데츠"}
, backgroundBmp = "siege"}
, 
["gefg_cas04.rsw"] = {displayName = "베르겔", notifyEnter = true, 
signName = {subTitle = "브리토리아", mainTitle = "베르겔"}
, backgroundBmp = "siege"}
, 
["gefg_cas03.rsw"] = {displayName = "이스넬프", notifyEnter = true, 
signName = {subTitle = "브리토리아", mainTitle = "이스넬프"}
, backgroundBmp = "siege"}
, 
["gefg_cas02.rsw"] = {displayName = "욜브리거", notifyEnter = true, 
signName = {subTitle = "브리토리아", mainTitle = "욜브리거"}
, backgroundBmp = "siege"}
, 
["gefg_cas01.rsw"] = {displayName = "레프리온", notifyEnter = true, 
signName = {subTitle = "브리토리아", mainTitle = "레프리온"}
, backgroundBmp = "siege"}
, 
["prtg_cas05.rsw"] = {displayName = "괸들", notifyEnter = true, 
signName = {subTitle = "발키리 렐름", mainTitle = "괸들"}
, backgroundBmp = "siege"}
, 
["prtg_cas04.rsw"] = {displayName = "스쾨굴", notifyEnter = true, 
signName = {subTitle = "발키리 렐름", mainTitle = "스쾨굴"}
, backgroundBmp = "siege"}
, 
["prtg_cas03.rsw"] = {displayName = "라즈리그스", notifyEnter = true, 
signName = {subTitle = "발키리 렐름", mainTitle = "라즈리그스"}
, backgroundBmp = "siege"}
, 
["prtg_cas02.rsw"] = {displayName = "스반힐트", notifyEnter = true, 
signName = {subTitle = "발키리 렐름", mainTitle = "스반힐트"}
, backgroundBmp = "siege"}
, 
["prtg_cas01.rsw"] = {displayName = "크림힐트", notifyEnter = true, 
signName = {subTitle = "발키리 렐름", mainTitle = "크림힐트"}
, backgroundBmp = "siege"}
, 
["prt_gld.rsw"] = {displayName = "발키리 렐름", notifyEnter = true, 
signName = {subTitle = "프론테라", mainTitle = "발키리 렐름"}
, backgroundBmp = "siege"}
, 
["tur_dun01.rsw"] = {displayName = "거북이 섬", notifyEnter = true, 
signName = {mainTitle = "거북이 섬"}
, backgroundBmp = "field_s2"}
, 
["tur_dun02.rsw"] = {displayName = "거북이 섬 던전", notifyEnter = true, 
signName = {mainTitle = "거북이 섬 던전"}
, backgroundBmp = "dungeon_s2"}
, 
["tur_dun03.rsw"] = {displayName = "양거촌", notifyEnter = true, 
signName = {mainTitle = "양거촌"}
, backgroundBmp = "dungeon_s2"}
, 
["tur_dun04.rsw"] = {displayName = "구양궁", notifyEnter = true, 
signName = {mainTitle = "구양궁"}
, backgroundBmp = "dungeon_s2"}
, 
["tur_dun05.rsw"] = {displayName = "지하 늪 지대", notifyEnter = true, 
signName = {mainTitle = "지하 늪 지대"}
, backgroundBmp = "dungeon_s2"}
, 
["tur_dun06.rsw"] = {displayName = "지하 늪 지대", notifyEnter = true, 
signName = {mainTitle = "지하 늪 지대"}
, backgroundBmp = "dungeon_s2"}
, 
["guild_vs5.rsw"] = {displayName = "길드 대항 경기장", notifyEnter = true, 
signName = {mainTitle = "길드 대항 경기장"}
, backgroundBmp = "noname_s2"}
, 
["guild_vs4.rsw"] = {displayName = "길드 대항 경기장", notifyEnter = true, 
signName = {mainTitle = "길드 대항 경기장"}
, backgroundBmp = "noname_s2"}
, 
["guild_vs3.rsw"] = {displayName = "길드 대항 경기장", notifyEnter = true, 
signName = {mainTitle = "길드 대항 경기장"}
, backgroundBmp = "noname_s2"}
, 
["guild_vs2.rsw"] = {displayName = "길드 대항 경기장", notifyEnter = true, 
signName = {mainTitle = "길드 대항 경기장"}
, backgroundBmp = "noname_s2"}
, 
["guild_vs1.rsw"] = {displayName = "길드 대항 경기장", notifyEnter = true, 
signName = {mainTitle = "길드 대항 경기장"}
, backgroundBmp = "noname_s2"}
, 
["guild_room.rsw"] = {displayName = "길드 대항 경기장 대기실", notifyEnter = true, 
signName = {mainTitle = "길드 대항 경기장 대기실"}
, backgroundBmp = "noname_s2"}
, 
["quiz_00.rsw"] = {displayName = "퀴즈 경기장", notifyEnter = true, 
signName = {mainTitle = "퀴즈 경기장"}
, backgroundBmp = "noname_s2"}
, 
["quiz_01.rsw"] = {displayName = "퀴즈 경기장", notifyEnter = true, 
signName = {mainTitle = "퀴즈 경기장"}
, backgroundBmp = "noname_s2"}
, 
["gef_fild13.rsw"] = {displayName = "브리토리아", notifyEnter = true, 
signName = {subTitle = "게펜 필드", mainTitle = "브리토리아"}
, backgroundBmp = "noname"}
, 
["cmd_in02.rsw"] = {displayName = "코모도 내부"}
, 
["cmd_in01.rsw"] = {displayName = "코모도 내부"}
, 
["comodo.rsw"] = {displayName = "해변도시 코모도", notifyEnter = true, 
signName = {subTitle = "룬-미드가츠 왕국 해변도시", mainTitle = "코모도"}
, backgroundBmp = "village"}
, 
["beach_dun.rsw"] = {displayName = "코모도 서쪽 동굴 카루", notifyEnter = true, 
signName = {subTitle = "코모도", mainTitle = "서쪽 동굴 카루"}
, backgroundBmp = "dungeon"}
, 
["beach_dun2.rsw"] = {displayName = "코모도 북쪽 동굴 루안다", notifyEnter = true, 
signName = {subTitle = "코모도", mainTitle = "북쪽 동굴 루안다"}
, backgroundBmp = "dungeon"}
, 
["beach_dun3.rsw"] = {displayName = "코모도 동쪽 동굴 마오", notifyEnter = true, 
signName = {subTitle = "코모도", mainTitle = "동쪽 동굴 마오"}
, backgroundBmp = "dungeon"}
, 
["cmd_fild01.rsw"] = {displayName = "코모도 파푸치카 숲", notifyEnter = true, 
signName = {subTitle = "코모도", mainTitle = "코모도 파푸치카 숲"}
, backgroundBmp = "field"}
, 
["cmd_fild02.rsw"] = {displayName = "코모도 코코모 해변", notifyEnter = true, 
signName = {subTitle = "코모도", mainTitle = "코코모 해변"}
, backgroundBmp = "field"}
, 
["cmd_fild03.rsw"] = {displayName = "코모도 지나이 늪", notifyEnter = true, 
signName = {subTitle = "코모도", mainTitle = "지나이 늪"}
, backgroundBmp = "field"}
, 
["cmd_fild04.rsw"] = {displayName = "코모도 코코모 해변", notifyEnter = true, 
signName = {subTitle = "코모도", mainTitle = "코코모 해변"}
, backgroundBmp = "field"}
, 
["cmd_fild06.rsw"] = {displayName = "요새도시 산다르만 서쪽 지역", notifyEnter = true, 
signName = {mainTitle = "요새도시 산다르만 서부"}
, backgroundBmp = "field_s2"}
, 
["cmd_fild07.rsw"] = {displayName = "파로스 등대섬", notifyEnter = true, 
signName = {mainTitle = "파로스 등대섬"}
, backgroundBmp = "field_s2"}
, 
["cmd_fild08.rsw"] = {displayName = "요새도시 산다르만 동쪽 지역", notifyEnter = true, 
signName = {mainTitle = "요새도시 산다르만 동부"}
, backgroundBmp = "field_s2"}
, 
["cmd_fild09.rsw"] = {displayName = "요새도시 산다르만 남쪽 지역", notifyEnter = true, 
signName = {mainTitle = "요새도시 산다르만 남부"}
, backgroundBmp = "field_s2"}
, 
["xmas_in.rsw"] = {displayName = "루티에 내부"}
, 
["xmas_dun02.rsw"] = {displayName = "루티에 장난감 분류소", notifyEnter = true, 
signName = {subTitle = "루티에", mainTitle = "장난감 분류소"}
, backgroundBmp = "dungeon"}
, 
["xmas_dun01.rsw"] = {displayName = "루티에 장난감 공장 창고", notifyEnter = true, 
signName = {subTitle = "루티에", mainTitle = "장난감 공장 창고"}
, backgroundBmp = "dungeon"}
, 
["xmas_fild01.rsw"] = {displayName = "루티에 필드", notifyEnter = true, 
signName = {mainTitle = "루티에 필드"}
, backgroundBmp = "field_s2"}
, 
["xmas.rsw"] = {displayName = "눈의 마을 루티에(Lutie)", notifyEnter = true, 
signName = {subTitle = "눈의 마을", mainTitle = "루티에"}
, backgroundBmp = "village"}
, 
["mjolnir_01.rsw"] = {displayName = "묘르닐 산맥 북쪽 지역", notifyEnter = true, 
signName = {mainTitle = "묘르닐 산맥 북쪽 지역"}
, backgroundBmp = "field_s2"}
, 
["mjolnir_02.rsw"] = {displayName = "묘르닐 산맥 북쪽 지역", notifyEnter = true, 
signName = {mainTitle = "묘르닐 산맥 북쪽 지역"}
, backgroundBmp = "field_s2"}
, 
["mjolnir_03.rsw"] = {displayName = "묘르닐 산맥 북쪽 지역", notifyEnter = true, 
signName = {mainTitle = "묘르닐 산맥 북쪽 지역"}
, backgroundBmp = "field_s2"}
, 
["mjolnir_04.rsw"] = {displayName = "묘르닐 산맥 북쪽 지역", notifyEnter = true, 
signName = {mainTitle = "묘르닐 산맥 북쪽 지역"}
, backgroundBmp = "field_s2"}
, 
["mjolnir_05.rsw"] = {displayName = "묘르닐 산맥 북쪽 지역", notifyEnter = true, 
signName = {mainTitle = "묘르닐 산맥 북쪽 지역"}
, backgroundBmp = "field_s2"}
, 
["mjolnir_06.rsw"] = {displayName = "묘르닐 산맥 남쪽 지역", notifyEnter = true, 
signName = {mainTitle = "묘르닐 산맥 남쪽 지역"}
, backgroundBmp = "field_s2"}
, 
["mjolnir_07.rsw"] = {displayName = "묘르닐 산맥 남쪽 지역", notifyEnter = true, 
signName = {mainTitle = "묘르닐 산맥 남쪽 지역"}
, backgroundBmp = "field_s2"}
, 
["mjolnir_08.rsw"] = {displayName = "묘르닐 산맥 남쪽 지역", notifyEnter = true, 
signName = {mainTitle = "묘르닐 산맥 남쪽 지역"}
, backgroundBmp = "field_s2"}
, 
["mjolnir_09.rsw"] = {displayName = "묘르닐 산맥 남쪽 산기슭", notifyEnter = true, 
signName = {mainTitle = "묘르닐 산맥 남쪽 산기슭"}
, backgroundBmp = "field_s2"}
, 
["mjolnir_10.rsw"] = {displayName = "묘르닐 산맥 남쪽 지역", notifyEnter = true, 
signName = {mainTitle = "묘르닐 산맥 남쪽 지역"}
, backgroundBmp = "field_s2"}
, 
["mjolnir_11.rsw"] = {displayName = "묘르닐 산맥 남쪽 지역", notifyEnter = true, 
signName = {mainTitle = "묘르닐 산맥 남쪽 지역"}
, backgroundBmp = "field_s2"}
, 
["mjolnir_12.rsw"] = {displayName = "묘르닐 산맥 북쪽 산기슭", notifyEnter = true, 
signName = {mainTitle = "묘르닐 산맥 북쪽 산기슭"}
, backgroundBmp = "field_s2"}
, 
["prt_fild00.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_fild01.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_fild02.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_fild03.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_fild04.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_fild05.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_fild06.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_fild07.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_fild08.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_fild09.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_fild10.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_fild11.rsw"] = {displayName = "프론테라 필드", notifyEnter = true, 
signName = {mainTitle = "프론테라 필드"}
, backgroundBmp = "field_s2"}
, 
["prt_monk.rsw"] = {displayName = "성 카피톨리나 수도원", notifyEnter = true, 
signName = {mainTitle = "성 카피톨리나 수도원"}
, backgroundBmp = "noname_s2"}
, 
["gef_fild00.rsw"] = {displayName = "게펜 필드", notifyEnter = true, 
signName = {mainTitle = "게펜 필드"}
, backgroundBmp = "field_s2"}
, 
["gef_fild00.rsw"] = {displayName = "게펜 필드", notifyEnter = true, 
signName = {mainTitle = "게펜 필드"}
, backgroundBmp = "field_s2"}
, 
["gef_fild01.rsw"] = {displayName = "게펜 필드", notifyEnter = true, 
signName = {mainTitle = "게펜 필드"}
, backgroundBmp = "field_s2"}
, 
["gef_fild02.rsw"] = {displayName = "게펜 필드", notifyEnter = true, 
signName = {mainTitle = "게펜 필드"}
, backgroundBmp = "field_s2"}
, 
["gef_fild03.rsw"] = {displayName = "게펜 필드", notifyEnter = true, 
signName = {mainTitle = "게펜 필드"}
, backgroundBmp = "field_s2"}
, 
["gef_fild04.rsw"] = {displayName = "게펜 필드", notifyEnter = true, 
signName = {mainTitle = "게펜 필드"}
, backgroundBmp = "field_s2"}
, 
["gef_fild05.rsw"] = {displayName = "집시 마을", notifyEnter = true, 
signName = {subTitle = "게펜 필드", mainTitle = "집시 마을"}
, backgroundBmp = "field"}
, 
["gef_fild06.rsw"] = {displayName = "게펜 필드", notifyEnter = true, 
signName = {mainTitle = "게펜 필드"}
, backgroundBmp = "field_s2"}
, 
["gef_fild07.rsw"] = {displayName = "게펜 필드", notifyEnter = true, 
signName = {mainTitle = "게펜 필드"}
, backgroundBmp = "field_s2"}
, 
["gef_fild08.rsw"] = {displayName = "게펜 필드", notifyEnter = true, 
signName = {mainTitle = "게펜 필드"}
, backgroundBmp = "field_s2"}
, 
["gef_fild09.rsw"] = {displayName = "게펜 필드", notifyEnter = true, 
signName = {mainTitle = "게펜 필드"}
, backgroundBmp = "field_s2"}
, 
["gef_fild10.rsw"] = {displayName = "오크 마을", notifyEnter = true, 
signName = {subTitle = "게펜 필드", mainTitle = "오크 마을"}
, backgroundBmp = "field"}
, 
["in_orcs01.rsw"] = {displayName = "오크 마을 실내"}
, 
["gef_fild11.rsw"] = {displayName = "게펜 필드", notifyEnter = true, 
signName = {mainTitle = "게펜 필드"}
, backgroundBmp = "field_s2"}
, 
["moc_fild01.rsw"] = {displayName = "소그라트 사막", notifyEnter = true, 
signName = {mainTitle = "소그라트 사막"}
, backgroundBmp = "field_s2"}
, 
["moc_fild02.rsw"] = {displayName = "소그라트 사막", notifyEnter = true, 
signName = {mainTitle = "소그라트 사막"}
, backgroundBmp = "field_s2"}
, 
["moc_fild03.rsw"] = {displayName = "소그라트 사막", notifyEnter = true, 
signName = {mainTitle = "소그라트 사막"}
, backgroundBmp = "field_s2"}
, 
["moc_fild07.rsw"] = {displayName = "소그라트 사막", notifyEnter = true, 
signName = {mainTitle = "소그라트 사막"}
, backgroundBmp = "field_s2"}
, 
["moc_fild11.rsw"] = {displayName = "소그라트 사막", notifyEnter = true, 
signName = {mainTitle = "소그라트 사막"}
, backgroundBmp = "field_s2"}
, 
["moc_fild12.rsw"] = {displayName = "소그라트 사막", notifyEnter = true, 
signName = {mainTitle = "소그라트 사막"}
, backgroundBmp = "field_s2"}
, 
["moc_fild13.rsw"] = {displayName = "소그라트 사막", notifyEnter = true, 
signName = {mainTitle = "소그라트 사막"}
, backgroundBmp = "field_s2"}
, 
["moc_fild16.rsw"] = {displayName = "소그라트 사막", notifyEnter = true, 
signName = {mainTitle = "소그라트 사막"}
, backgroundBmp = "field_s2"}
, 
["in_moc_16.rsw"] = {displayName = "어새신 길드", notifyEnter = true, 
signName = {subTitle = "어쌔신 길드", mainTitle = "소그라트 사막"}
, backgroundBmp = "field"}
, 
["moc_fild17.rsw"] = {displayName = "소그라트 사막", notifyEnter = true, 
signName = {mainTitle = "소그라트 사막"}
, backgroundBmp = "field_s2"}
, 
["moc_fild18.rsw"] = {displayName = "소그라트 사막", notifyEnter = true, 
signName = {mainTitle = "소그라트 사막"}
, backgroundBmp = "field_s2"}
, 
["moc_fild19.rsw"] = {displayName = "소그라트 사막", notifyEnter = true, 
signName = {mainTitle = "소그라트 사막"}
, backgroundBmp = "field_s2"}
, 
["pay_fild01.rsw"] = {displayName = "페이욘 숲 속", notifyEnter = true, 
signName = {mainTitle = "페이욘 숲 속"}
, backgroundBmp = "field_s2"}
, 
["pay_fild02.rsw"] = {displayName = "페이욘 숲 속", notifyEnter = true, 
signName = {mainTitle = "페이욘 숲 속"}
, backgroundBmp = "field_s2"}
, 
["pay_fild03.rsw"] = {displayName = "페이욘 숲 속", notifyEnter = true, 
signName = {mainTitle = "페이욘 숲 속"}
, backgroundBmp = "field_s2"}
, 
["pay_fild04.rsw"] = {displayName = "소그라트 사막", notifyEnter = true, 
signName = {mainTitle = "소그라트 사막"}
, backgroundBmp = "field_s2"}
, 
["pay_fild06.rsw"] = {displayName = "페이욘 숲 속", notifyEnter = true, 
signName = {mainTitle = "페이욘 숲 속"}
, backgroundBmp = "field_s2"}
, 
["pay_fild07.rsw"] = {displayName = "페이욘 숲 속", notifyEnter = true, 
signName = {mainTitle = "페이욘 숲 속"}
, backgroundBmp = "field_s2"}
, 
["pay_fild08.rsw"] = {displayName = "페이욘 숲 속", notifyEnter = true, 
signName = {mainTitle = "페이욘 숲 속"}
, backgroundBmp = "field_s2"}
, 
["pay_fild09.rsw"] = {displayName = "페이욘 숲 속", notifyEnter = true, 
signName = {mainTitle = "페이욘 숲 속"}
, backgroundBmp = "field_s2"}
, 
["pay_fild10.rsw"] = {displayName = "페이욘 숲 속", notifyEnter = true, 
signName = {mainTitle = "페이욘 숲 속"}
, backgroundBmp = "field_s2"}
, 
["new_1-1.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_2-1.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_3-1.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_4-1.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_5-1.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_1-2.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_2-2.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_3-2.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_4-2.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_5-2.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_1-3.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_2-3.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_3-3.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_4-3.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_5-3.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_1-4.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_2-4.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_3-4.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["new_4-4.rsw"] = {displayName = "초보자 수련장", notifyEnter = true, 
signName = {mainTitle = "초보자 수련장"}
, backgroundBmp = "field_s2"}
, 
["anthell01.rsw"] = {displayName = "모로크 개미지옥 던전 1층", notifyEnter = true, 
signName = {subTitle = "소그라트 사막", mainTitle = "개미지옥 1층"}
, backgroundBmp = "dungeon"}
, 
["anthell02.rsw"] = {displayName = "모로크 개미지옥 던전 2층", notifyEnter = true, 
signName = {subTitle = "소그라트 사막", mainTitle = "개미지옥 2층"}
, backgroundBmp = "dungeon"}
, 
["gef_dun00.rsw"] = {displayName = "게펜 지하 던전 1층", notifyEnter = true, 
signName = {mainTitle = "게펜 지하 1층"}
, backgroundBmp = "dungeon_s2"}
, 
["gef_dun01.rsw"] = {displayName = "게펜 지하 던전 2층", notifyEnter = true, 
signName = {mainTitle = "게펜 지하 2층"}
, backgroundBmp = "dungeon_s2"}
, 
["gef_dun02.rsw"] = {displayName = "게펜 지하 던전 3층", notifyEnter = true, 
signName = {mainTitle = "게펜 지하 3층"}
, backgroundBmp = "dungeon_s2"}
, 
["gef_dun03.rsw"] = {displayName = "게페니아 던전", notifyEnter = true, 
signName = {subTitle = "게펜", mainTitle = "게페니아"}
, backgroundBmp = "dungeon"}
, 
["iz_dun00.rsw"] = {displayName = "이즈루드 해저동굴 던전 1층", notifyEnter = true, 
signName = {subTitle = "바이아란 섬", mainTitle = "이즈루드 해저동굴 1층"}
, backgroundBmp = "dungeon"}
, 
["iz_dun01.rsw"] = {displayName = "이즈루드 해저동굴 던전 2층", notifyEnter = true, 
signName = {subTitle = "바이아란 섬", mainTitle = "이즈루드 해저동굴 2층"}
, backgroundBmp = "dungeon"}
, 
["iz_dun02.rsw"] = {displayName = "이즈루드 해저동굴 던전 3층", notifyEnter = true, 
signName = {subTitle = "바이아란 섬", mainTitle = "이즈루드 해저동굴 3층"}
, backgroundBmp = "dungeon"}
, 
["iz_dun03.rsw"] = {displayName = "이즈루드 해저동굴 던전 4층", notifyEnter = true, 
signName = {subTitle = "바이아란 섬", mainTitle = "이즈루드 해저동굴 4층"}
, backgroundBmp = "dungeon"}
, 
["iz_dun04.rsw"] = {displayName = "이즈루드 해저동굴 던전 5층", notifyEnter = true, 
signName = {subTitle = "바이아란 섬", mainTitle = "이즈루드 해저동굴 5층"}
, backgroundBmp = "dungeon"}
, 
["in_sphinx1.rsw"] = {displayName = "모로크 스핑크스 지하 1층", notifyEnter = true, 
signName = {subTitle = "소그라트 사막", mainTitle = "스핑크스 지하 1층"}
, backgroundBmp = "dungeon"}
, 
["in_sphinx2.rsw"] = {displayName = "모로크 스핑크스 지하 2층", notifyEnter = true, 
signName = {subTitle = "소그라트 사막", mainTitle = "스핑크스 지하 2층"}
, backgroundBmp = "dungeon"}
, 
["in_sphinx3.rsw"] = {displayName = "모로크 스핑크스 지하 3층", notifyEnter = true, 
signName = {subTitle = "소그라트 사막", mainTitle = "스핑크스 지하 3층"}
, backgroundBmp = "dungeon"}
, 
["in_sphinx4.rsw"] = {displayName = "모로크 스핑크스 지하 4층", notifyEnter = true, 
signName = {subTitle = "소그라트 사막", mainTitle = "스핑크스 지하 4층"}
, backgroundBmp = "dungeon"}
, 
["in_sphinx5.rsw"] = {displayName = "모로크 스핑크스 지하 5층", notifyEnter = true, 
signName = {subTitle = "소그라트 사막", mainTitle = "스핑크스 지하 5층"}
, backgroundBmp = "dungeon"}
, 
["moc_pryd01.rsw"] = {displayName = "모로크 피라미드 1층", notifyEnter = true, 
signName = {subTitle = "모로크", mainTitle = "피라미드 1층"}
, backgroundBmp = "dungeon"}
, 
["moc_pryd02.rsw"] = {displayName = "모로크 피라미드 2층", notifyEnter = true, 
signName = {subTitle = "모로크", mainTitle = "피라미드 2층"}
, backgroundBmp = "dungeon"}
, 
["moc_pryd03.rsw"] = {displayName = "모로크 피라미드 3층", notifyEnter = true, 
signName = {subTitle = "모로크", mainTitle = "피라미드 3층"}
, backgroundBmp = "dungeon"}
, 
["moc_pryd04.rsw"] = {displayName = "모로크 피라미드 4층", notifyEnter = true, 
signName = {subTitle = "모로크", mainTitle = "피라미드 4층"}
, backgroundBmp = "dungeon"}
, 
["moc_pryd05.rsw"] = {displayName = "모로크 피라미드 지하 1층", notifyEnter = true, 
signName = {subTitle = "모로크", mainTitle = "피라미드 지하 1층"}
, backgroundBmp = "dungeon"}
, 
["moc_pryd06.rsw"] = {displayName = "모로크 피라미드 지하 2층", notifyEnter = true, 
signName = {subTitle = "모로크", mainTitle = "피라미드 지하 2층"}
, backgroundBmp = "dungeon"}
, 
["moc_prydb1.rsw"] = {displayName = "도둑 길드", notifyEnter = true, 
signName = {subTitle = "모로크", mainTitle = "도둑 길드"}
, backgroundBmp = "noname"}
, 
["mjo_dun01.rsw"] = {displayName = "묘르닐 폐광 1층", notifyEnter = true, 
signName = {subTitle = "묘르닐 산맥 북쪽", mainTitle = "폐광 1층"}
, backgroundBmp = "dungeon"}
, 
["mjo_dun02.rsw"] = {displayName = "묘르닐 폐광 2층", notifyEnter = true, 
signName = {subTitle = "묘르닐 산맥 북쪽", mainTitle = "폐광 2층"}
, backgroundBmp = "dungeon"}
, 
["mjo_dun03.rsw"] = {displayName = "묘르닐 폐광 3층", notifyEnter = true, 
signName = {subTitle = "묘르닐 산맥 북쪽", mainTitle = "폐광 3층"}
, backgroundBmp = "dungeon"}
, 
["orcsdun01.rsw"] = {displayName = "게펜 오크 지하 동굴 1층", notifyEnter = true, 
signName = {subTitle = "오크 마을", mainTitle = "오크 지하 동굴 1층"}
, backgroundBmp = "dungeon"}
, 
["orcsdun02.rsw"] = {displayName = "게펜 오크 지하 동굴 2층", notifyEnter = true, 
signName = {subTitle = "오크 마을", mainTitle = "오크 지하 동굴 2층"}
, backgroundBmp = "dungeon"}
, 
["pay_dun00.rsw"] = {displayName = "페이욘 동굴 1층", notifyEnter = true, 
signName = {subTitle = "페이욘 궁수마을", mainTitle = "페이욘 동굴 1층"}
, backgroundBmp = "dungeon"}
, 
["pay_dun01.rsw"] = {displayName = "페이욘 동굴 2층", notifyEnter = true, 
signName = {subTitle = "페이욘 궁수마을", mainTitle = "페이욘 동굴 2층"}
, backgroundBmp = "dungeon"}
, 
["pay_dun02.rsw"] = {displayName = "페이욘 동굴 3층", notifyEnter = true, 
signName = {subTitle = "페이욘 궁수마을", mainTitle = "페이욘 동굴 3층"}
, backgroundBmp = "dungeon"}
, 
["pay_dun03.rsw"] = {displayName = "페이욘 동굴 4층(폐가촌)", notifyEnter = true, 
signName = {subTitle = "페이욘 궁수마을", mainTitle = "페이욘 동굴 4층 폐가촌"}
, backgroundBmp = "dungeon"}
, 
["pay_dun04.rsw"] = {displayName = "페이욘 동굴 5층(폐가촌)", notifyEnter = true, 
signName = {subTitle = "페이욘 궁수마을", mainTitle = "페이욘 동굴 5층 폐가촌"}
, backgroundBmp = "dungeon"}
, 
["prt_maze01.rsw"] = {displayName = "프론테라 미궁 숲 1층", notifyEnter = true, 
signName = {subTitle = "프론테라 필드", mainTitle = "미궁 숲 1층"}
, backgroundBmp = "dungeon"}
, 
["prt_maze02.rsw"] = {displayName = "프론테라 미궁 숲 2층", notifyEnter = true, 
signName = {subTitle = "프론테라 필드", mainTitle = "미궁 숲 2층"}
, backgroundBmp = "dungeon"}
, 
["prt_maze03.rsw"] = {displayName = "프론테라 미궁 숲 3층", notifyEnter = true, 
signName = {subTitle = "프론테라 필드", mainTitle = "미궁 숲 3층"}
, backgroundBmp = "dungeon"}
, 
["prt_sewb1.rsw"] = {displayName = "프론테라 지하 수로 1층", notifyEnter = true, 
signName = {subTitle = "프론테라 필드", mainTitle = "지하수로 1층"}
, backgroundBmp = "dungeon"}
, 
["prt_sewb2.rsw"] = {displayName = "프론테라 지하 수로 2층", notifyEnter = true, 
signName = {subTitle = "프론테라 필드", mainTitle = "지하수로 2층"}
, backgroundBmp = "dungeon"}
, 
["prt_sewb3.rsw"] = {displayName = "프론테라 지하 수로 3층", notifyEnter = true, 
signName = {subTitle = "프론테라 필드", mainTitle = "지하수로 3층"}
, backgroundBmp = "dungeon"}
, 
["prt_sewb4.rsw"] = {displayName = "프론테라 지하 수로 4층", notifyEnter = true, 
signName = {subTitle = "프론테라 필드", mainTitle = "지하수로 4층"}
, backgroundBmp = "dungeon"}
, 
["treasure01.rsw"] = {displayName = "알베르타 침몰선 1층", notifyEnter = true, 
signName = {subTitle = "알베르타", mainTitle = "난파선 1층"}
, backgroundBmp = "dungeon"}
, 
["treasure02.rsw"] = {displayName = "알베르타 침몰선 2층", notifyEnter = true, 
signName = {subTitle = "알베르타", mainTitle = "난파선 2층"}
, backgroundBmp = "dungeon"}
, 
["hunter_1-1.rsw"] = {displayName = "헌터 전직소"}
, 
["hunter_2-1.rsw"] = {displayName = "헌터 전직소"}
, 
["hunter_3-1.rsw"] = {displayName = "헌터 전직소"}
, 
["in_hunter.rsw"] = {displayName = "헌터 길드", notifyEnter = true, 
signName = {mainTitle = "헌터 길드"}
, backgroundBmp = "noname_s2"}
, 
["knight_1-1.rsw"] = {displayName = "나이트 전직소"}
, 
["knight_2-1.rsw"] = {displayName = "나이트 전직소"}
, 
["knight_3-1.rsw"] = {displayName = "나이트 전직소"}
, 
["priest_1-1.rsw"] = {displayName = "프리스트 전직소"}
, 
["priest_2-1.rsw"] = {displayName = "프리스트 전직소"}
, 
["priest_3-1.rsw"] = {displayName = "프리스트 전직소"}
, 
["sword_3-1.rsw"] = {displayName = "검사 전직소"}
, 
["job_thief1.rsw"] = {displayName = "도둑 전직소"}
, 
["wizard_1-1.rsw"] = {displayName = "위자드 전직소"}
, 
["wizard_2-1.rsw"] = {displayName = "위자드 전직소"}
, 
["wizard_3-1.rsw"] = {displayName = "위자드 전직소"}
, 
["force_1-1.rsw"] = {displayName = "타임어택모드"}
, 
["force_2-1.rsw"] = {displayName = "타임어택모드"}
, 
["force_3-1.rsw"] = {displayName = "타임어택모드"}
, 
["force_1-2.rsw"] = {displayName = "타임어택모드"}
, 
["force_2-2.rsw"] = {displayName = "타임어택모드"}
, 
["force_3-2.rsw"] = {displayName = "타임어택모드"}
, 
["force_1-3.rsw"] = {displayName = "타임어택모드"}
, 
["force_2-3.rsw"] = {displayName = "타임어택모드"}
, 
["force_3-3.rsw"] = {displayName = "타임어택모드"}
, 
["ordeal_1-1.rsw"] = {displayName = "배틀오딜모드"}
, 
["ordeal_2-1.rsw"] = {displayName = "배틀오딜모드"}
, 
["ordeal_3-1.rsw"] = {displayName = "배틀오딜모드"}
, 
["ordeal_1-2.rsw"] = {displayName = "배틀오딜모드"}
, 
["ordeal_2-2.rsw"] = {displayName = "배틀오딜모드"}
, 
["ordeal_3-2.rsw"] = {displayName = "배틀오딜모드"}
, 
["ordeal_1-3.rsw"] = {displayName = "배틀오딜모드"}
, 
["ordeal_2-3.rsw"] = {displayName = "배틀오딜모드"}
, 
["ordeal_3-3.rsw"] = {displayName = "배틀오딜모드"}
, 
["ordeal_1-4.rsw"] = {displayName = "배틀오딜모드"}
, 
["ordeal_2-4.rsw"] = {displayName = "배틀오딜모드"}
, 
["ordeal_3-4.rsw"] = {displayName = "배틀오딜모드"}
, 
["alb_ship.rsw"] = {displayName = "알베르타 선박 내부"}
, 
["alberta.rsw"] = {displayName = "항구도시 알베르타", notifyEnter = true, 
signName = {subTitle = "룬-미드가츠 왕국 항구도시", mainTitle = "알베르타"}
, backgroundBmp = "village"}
, 
["alberta_in.rsw"] = {displayName = "알베르타 내부"}
, 
["alb2trea.rsw"] = {displayName = "침몰선 부근의 섬", notifyEnter = true, 
signName = {subTitle = "알베르타", mainTitle = "침몰선 부근의 섬"}
, backgroundBmp = "field"}
, 
["aldebaran.rsw"] = {displayName = "국경도시 알데바란", notifyEnter = true, 
signName = {subTitle = "룬-미드가츠 왕국 국경도시", mainTitle = "알데바란"}
, backgroundBmp = "village"}
, 
["aldeba_in.rsw"] = {displayName = "알데바란 내부"}
, 
["gef_tower.rsw"] = {displayName = "게펜 중앙탑", notifyEnter = true, 
signName = {subTitle = "게펜", mainTitle = "중앙탑"}
, backgroundBmp = "village"}
, 
["geffen.rsw"] = {displayName = "마법도시 게펜", notifyEnter = true, 
signName = {subTitle = "룬-미드가츠 왕국 마법도시", mainTitle = "게펜"}
, backgroundBmp = "village"}
, 
["geffen_in.rsw"] = {displayName = "게펜 내부"}
, 
["moc_ruins.rsw"] = {displayName = "모로크 유적지", notifyEnter = true, 
signName = {mainTitle = "모로크 유적지"}
, backgroundBmp = "village_s2"}
, 
["morocc.rsw"] = {displayName = "사막도시 모로크", notifyEnter = true, 
signName = {subTitle = "룬-미드가츠 왕국 사막도시", mainTitle = "모로크"}
, backgroundBmp = "village"}
, 
["morocc_in.rsw"] = {displayName = "모로크 내부"}
, 
["pay_arche.rsw"] = {displayName = "페이욘 궁수마을", notifyEnter = true, 
signName = {subTitle = "페이욘", mainTitle = "궁수마을"}
, backgroundBmp = "village"}
, 
["payon.rsw"] = {displayName = "산악도시 페이욘", notifyEnter = true, 
signName = {subTitle = "룬-미드가츠 왕국 산악도시", mainTitle = "페이욘"}
, backgroundBmp = "village"}
, 
["payon_in01.rsw"] = {displayName = "페이욘 내부"}
, 
["payon_in02.rsw"] = {displayName = "페이욘 내부"}
, 
["payon_in03.rsw"] = {displayName = "페이욘 내부"}
, 
["prontera.rsw"] = {displayName = "룬-미드가츠 왕국 수도 프론테라", notifyEnter = true, 
signName = {subTitle = "룬-미드가츠 왕국 수도", mainTitle = "프론테라"}
, backgroundBmp = "village"}
, 
["prt_in.rsw"] = {displayName = "프론테라 내부"}
, 
["prt_castle.rsw"] = {displayName = "프론테라 성 내부", notifyEnter = true, 
signName = {mainTitle = "프론테라 성"}
, backgroundBmp = "village_s2"}
, 
["prt_church.rsw"] = {displayName = "프론테라 성당 내부", notifyEnter = true, 
signName = {mainTitle = "프론테라 성당"}
, backgroundBmp = "village_s2"}
, 
["izlude.rsw"] = {displayName = "위성도시 이즈루드", notifyEnter = true, 
signName = {subTitle = "룬-미드가츠 왕국 프론테라 위성도시", mainTitle = "이즈루드"}
, backgroundBmp = "village"}
, 
["izlude_in.rsw"] = {displayName = "이즈루드 내부"}
, 
["izlu2dun.rsw"] = {displayName = "바이아란 섬", notifyEnter = true, 
signName = {subTitle = "이즈루드", mainTitle = "바이아란 섬"}
, backgroundBmp = "field"}
, 
["monk_in.rsw"] = {displayName = "성 카피톨리나 수도원 내부", notifyEnter = true, 
signName = {mainTitle = "성 카피톨리나 수도원"}
, backgroundBmp = "noname_s2"}
, 
["prt_are_in.rsw"] = {displayName = "아레나 대기실", notifyEnter = true, 
signName = {mainTitle = "아레나 대기실"}
, backgroundBmp = "noname_s2"}
, 
["arena_room.rsw"] = {displayName = "아레나 대기실", notifyEnter = true, 
signName = {mainTitle = "아레나 대기실"}
, backgroundBmp = "noname_s2"}
, 
["prt_arena01.rsw"] = {displayName = "아레나", notifyEnter = true, 
signName = {mainTitle = "아레나"}
, backgroundBmp = "noname_s2"}
, 
["prt_are01.rsw"] = {displayName = "아레나", notifyEnter = true, 
signName = {mainTitle = "아레나"}
, backgroundBmp = "noname_s2"}
, 
["glast_01.rsw"] = {displayName = "글래스트헤임", notifyEnter = true, 
signName = {mainTitle = "글래스트헤임"}
, backgroundBmp = "field_s2"}
, 
["alde_dun01.rsw"] = {displayName = "알데바란 시계탑 지하 1층", notifyEnter = true, 
signName = {subTitle = "알데바란", mainTitle = "시계탑 지하 1층"}
, backgroundBmp = "dungeon"}
, 
["alde_dun02.rsw"] = {displayName = "알데바란 시계탑 지하 2층", notifyEnter = true, 
signName = {subTitle = "알데바란", mainTitle = "시계탑 지하 2층"}
, backgroundBmp = "dungeon"}
, 
["alde_dun03.rsw"] = {displayName = "알데바란 시계탑 지하 3층", notifyEnter = true, 
signName = {subTitle = "알데바란", mainTitle = "시계탑 지하 3층"}
, backgroundBmp = "dungeon"}
, 
["alde_dun04.rsw"] = {displayName = "알데바란 시계탑 지하 4층", notifyEnter = true, 
signName = {subTitle = "알데바란", mainTitle = "시계탑 지하 4층"}
, backgroundBmp = "dungeon"}
, 
["c_tower1.rsw"] = {displayName = "알데바란 시계탑 지상 1층", notifyEnter = true, 
signName = {subTitle = "알데바란", mainTitle = "시계탑 1층"}
, backgroundBmp = "dungeon"}
, 
["c_tower2.rsw"] = {displayName = "알데바란 시계탑 지상 2층", notifyEnter = true, 
signName = {subTitle = "알데바란", mainTitle = "시계탑 2층"}
, backgroundBmp = "dungeon"}
, 
["c_tower3.rsw"] = {displayName = "알데바란 시계탑 지상 3층", notifyEnter = true, 
signName = {subTitle = "알데바란", mainTitle = "시계탑 3층"}
, backgroundBmp = "dungeon"}
, 
["c_tower4.rsw"] = {displayName = "알데바란 시계탑 지상 4층", notifyEnter = true, 
signName = {subTitle = "알데바란", mainTitle = "시계탑 4층"}
, backgroundBmp = "dungeon"}
, 
["gl_cas01.rsw"] = {displayName = "글래스트헤임 성 1층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "글래스트헤임 성 1층"}
, backgroundBmp = "dungeon"}
, 
["gl_cas02.rsw"] = {displayName = "글래스트헤임 성 2층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "글래스트헤임 성 2층"}
, backgroundBmp = "dungeon"}
, 
["gl_church.rsw"] = {displayName = "글래스트헤임 수도원", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "수도원"}
, backgroundBmp = "dungeon"}
, 
["gl_chyard.rsw"] = {displayName = "글래스트헤임 지하 묘지", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "지하 묘지"}
, backgroundBmp = "dungeon"}
, 
["gl_dun01.rsw"] = {displayName = "글래스트헤임 지하 동굴 1층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "지하 동굴 1층"}
, backgroundBmp = "dungeon"}
, 
["gl_dun02.rsw"] = {displayName = "글래스트헤임 지하 동굴 2층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "지하 동굴 2층"}
, backgroundBmp = "dungeon"}
, 
["gl_in01.rsw"] = {displayName = "글래스트헤임 실내", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "글래스트헤임 실내"}
, backgroundBmp = "dungeon"}
, 
["gl_knt01.rsw"] = {displayName = "글래스트헤임 기사단 1층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "기사단 1층"}
, backgroundBmp = "dungeon"}
, 
["gl_knt02.rsw"] = {displayName = "글래스트헤임 기사단 2층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "기사단 2층"}
, backgroundBmp = "dungeon"}
, 
["gl_prison.rsw"] = {displayName = "글래스트헤임 지하 감옥 1층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "지하 감옥 1층"}
, backgroundBmp = "dungeon"}
, 
["gl_prison1.rsw"] = {displayName = "글래스트헤임 지하 감옥 2층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "지하 감옥 2층"}
, backgroundBmp = "dungeon"}
, 
["gl_sew01.rsw"] = {displayName = "글래스트헤임 지하 수로 1층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "지하 수로 1층"}
, backgroundBmp = "dungeon"}
, 
["gl_sew02.rsw"] = {displayName = "글래스트헤임 지하 수로 2층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "지하 수로 2층"}
, backgroundBmp = "dungeon"}
, 
["gl_sew03.rsw"] = {displayName = "글래스트헤임 지하 수로 3층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "지하 수로 3층"}
, backgroundBmp = "dungeon"}
, 
["gl_sew04.rsw"] = {displayName = "글래스트헤임 지하 수로 4층", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "지하 수로 4층"}
, backgroundBmp = "dungeon"}
, 
["gl_step.rsw"] = {displayName = "글래스트헤임 계단 던전", notifyEnter = true, 
signName = {subTitle = "글래스트헤임", mainTitle = "계단 던전"}
, backgroundBmp = "dungeon"}
, 
["pvp_y_room.rsw"] = {displayName = "PvP : 대기실", notifyEnter = true, 
signName = {mainTitle = "PvP 대기실"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_room.rsw"] = {displayName = "PvP : 대기실", notifyEnter = true, 
signName = {mainTitle = "PvP 대기실"}
, backgroundBmp = "noname_s2"}
, 
["pvp_c_room.rsw"] = {displayName = "PvP : 대기실", notifyEnter = true, 
signName = {mainTitle = "PvP 대기실"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_1-1.rsw"] = {displayName = "PvP : 샌드위치 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 샌드위치 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_2-1.rsw"] = {displayName = "PvP : 샌드위치 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 샌드위치 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_3-1.rsw"] = {displayName = "PvP : 샌드위치 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 샌드위치 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_4-1.rsw"] = {displayName = "PvP : 샌드위치 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 샌드위치 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_5-1.rsw"] = {displayName = "PvP : 샌드위치 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 샌드위치 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_6-1.rsw"] = {displayName = "PvP : 샌드위치 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 샌드위치 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_7-1.rsw"] = {displayName = "PvP : 샌드위치 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 샌드위치 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_8-1.rsw"] = {displayName = "PvP : 샌드위치 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 샌드위치 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_1-2.rsw"] = {displayName = "PvP : 락 온 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 락 온 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_2-2.rsw"] = {displayName = "PvP : 락 온 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 락 온 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_3-2.rsw"] = {displayName = "PvP : 락 온 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 락 온 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_4-2.rsw"] = {displayName = "PvP : 락 온 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 락 온 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_5-2.rsw"] = {displayName = "PvP : 락 온 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 락 온 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_6-2.rsw"] = {displayName = "PvP : 락 온 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 락 온 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_7-2.rsw"] = {displayName = "PvP : 락 온 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 락 온 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_8-2.rsw"] = {displayName = "PvP : 락 온 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 락 온 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_1-3.rsw"] = {displayName = "PvP : 포 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 포 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_2-3.rsw"] = {displayName = "PvP : 포 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 포 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_3-3.rsw"] = {displayName = "PvP : 포 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 포 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_4-3.rsw"] = {displayName = "PvP : 포 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 포 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_5-3.rsw"] = {displayName = "PvP : 포 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 포 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_6-3.rsw"] = {displayName = "PvP : 포 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 포 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_7-3.rsw"] = {displayName = "PvP : 포 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 포 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_8-3.rsw"] = {displayName = "PvP : 포 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 포 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_1-4.rsw"] = {displayName = "PvP : 언더 크로스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 언더 크로스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_2-4.rsw"] = {displayName = "PvP : 언더 크로스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 언더 크로스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_3-4.rsw"] = {displayName = "PvP : 언더 크로스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 언더 크로스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_4-4.rsw"] = {displayName = "PvP : 언더 크로스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 언더 크로스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_5-4.rsw"] = {displayName = "PvP : 언더 크로스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 언더 크로스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_6-4.rsw"] = {displayName = "PvP : 언더 크로스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 언더 크로스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_7-4.rsw"] = {displayName = "PvP : 언더 크로스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 언더 크로스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_8-4.rsw"] = {displayName = "PvP : 언더 크로스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 언더 크로스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_1-5.rsw"] = {displayName = "PvP : 콤파스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 콤파스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_2-5.rsw"] = {displayName = "PvP : 콤파스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 콤파스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_3-5.rsw"] = {displayName = "PvP : 콤파스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 콤파스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_4-5.rsw"] = {displayName = "PvP : 콤파스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 콤파스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_5-5.rsw"] = {displayName = "PvP : 콤파스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 콤파스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_6-5.rsw"] = {displayName = "PvP : 콤파스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 콤파스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_7-5.rsw"] = {displayName = "PvP : 콤파스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 콤파스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_n_8-5.rsw"] = {displayName = "PvP : 콤파스 룸", notifyEnter = true, 
signName = {mainTitle = "PvP 콤파스 룸"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_1-1.rsw"] = {displayName = "PvP : 프론테라", notifyEnter = true, 
signName = {mainTitle = "PvP 프론테라"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_2-1.rsw"] = {displayName = "PvP : 프론테라", notifyEnter = true, 
signName = {mainTitle = "PvP 프론테라"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_3-1.rsw"] = {displayName = "PvP : 프론테라", notifyEnter = true, 
signName = {mainTitle = "PvP 프론테라"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_4-1.rsw"] = {displayName = "PvP : 프론테라", notifyEnter = true, 
signName = {mainTitle = "PvP 프론테라"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_5-1.rsw"] = {displayName = "PvP : 프론테라", notifyEnter = true, 
signName = {mainTitle = "PvP 프론테라"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_6-1.rsw"] = {displayName = "PvP : 프론테라", notifyEnter = true, 
signName = {mainTitle = "PvP 프론테라"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_7-1.rsw"] = {displayName = "PvP : 프론테라", notifyEnter = true, 
signName = {mainTitle = "PvP 프론테라"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_8-1.rsw"] = {displayName = "PvP : 프론테라", notifyEnter = true, 
signName = {mainTitle = "PvP 프론테라"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_1-2.rsw"] = {displayName = "PvP : 이즈루드", notifyEnter = true, 
signName = {mainTitle = "PvP 이즈루드"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_2-2.rsw"] = {displayName = "PvP : 이즈루드", notifyEnter = true, 
signName = {mainTitle = "PvP 이즈루드"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_3-2.rsw"] = {displayName = "PvP : 이즈루드", notifyEnter = true, 
signName = {mainTitle = "PvP 이즈루드"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_4-2.rsw"] = {displayName = "PvP : 이즈루드", notifyEnter = true, 
signName = {mainTitle = "PvP 이즈루드"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_5-2.rsw"] = {displayName = "PvP : 이즈루드", notifyEnter = true, 
signName = {mainTitle = "PvP 이즈루드"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_6-2.rsw"] = {displayName = "PvP : 이즈루드", notifyEnter = true, 
signName = {mainTitle = "PvP 이즈루드"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_7-2.rsw"] = {displayName = "PvP : 이즈루드", notifyEnter = true, 
signName = {mainTitle = "PvP 이즈루드"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_8-2.rsw"] = {displayName = "PvP : 이즈루드", notifyEnter = true, 
signName = {mainTitle = "PvP 이즈루드"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_1-3.rsw"] = {displayName = "PvP : 페이욘", notifyEnter = true, 
signName = {mainTitle = "PvP 페이욘"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_2-3.rsw"] = {displayName = "PvP : 페이욘", notifyEnter = true, 
signName = {mainTitle = "PvP 페이욘"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_3-3.rsw"] = {displayName = "PvP : 페이욘", notifyEnter = true, 
signName = {mainTitle = "PvP 페이욘"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_4-3.rsw"] = {displayName = "PvP : 페이욘", notifyEnter = true, 
signName = {mainTitle = "PvP 페이욘"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_5-3.rsw"] = {displayName = "PvP : 페이욘", notifyEnter = true, 
signName = {mainTitle = "PvP 페이욘"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_6-3.rsw"] = {displayName = "PvP : 페이욘", notifyEnter = true, 
signName = {mainTitle = "PvP 페이욘"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_7-3.rsw"] = {displayName = "PvP : 페이욘", notifyEnter = true, 
signName = {mainTitle = "PvP 페이욘"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_8-3.rsw"] = {displayName = "PvP : 페이욘", notifyEnter = true, 
signName = {mainTitle = "PvP 페이욘"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_1-4.rsw"] = {displayName = "PvP : 알베르타", notifyEnter = true, 
signName = {mainTitle = "PvP 알베르타"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_2-4.rsw"] = {displayName = "PvP : 알베르타", notifyEnter = true, 
signName = {mainTitle = "PvP 알베르타"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_3-4.rsw"] = {displayName = "PvP : 알베르타", notifyEnter = true, 
signName = {mainTitle = "PvP 알베르타"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_4-4.rsw"] = {displayName = "PvP : 알베르타", notifyEnter = true, 
signName = {mainTitle = "PvP 알베르타"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_5-4.rsw"] = {displayName = "PvP : 알베르타", notifyEnter = true, 
signName = {mainTitle = "PvP 알베르타"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_6-4.rsw"] = {displayName = "PvP : 알베르타", notifyEnter = true, 
signName = {mainTitle = "PvP 알베르타"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_7-4.rsw"] = {displayName = "PvP : 알베르타", notifyEnter = true, 
signName = {mainTitle = "PvP 알베르타"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_8-4.rsw"] = {displayName = "PvP : 알베르타", notifyEnter = true, 
signName = {mainTitle = "PvP 알베르타"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_1-5.rsw"] = {displayName = "PvP : 모로크", notifyEnter = true, 
signName = {mainTitle = "PvP 모로크"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_2-5.rsw"] = {displayName = "PvP : 모로크", notifyEnter = true, 
signName = {mainTitle = "PvP 모로크"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_3-5.rsw"] = {displayName = "PvP : 모로크", notifyEnter = true, 
signName = {mainTitle = "PvP 모로크"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_4-5.rsw"] = {displayName = "PvP : 모로크", notifyEnter = true, 
signName = {mainTitle = "PvP 모로크"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_5-5.rsw"] = {displayName = "PvP : 모로크", notifyEnter = true, 
signName = {mainTitle = "PvP 모로크"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_6-5.rsw"] = {displayName = "PvP : 모로크", notifyEnter = true, 
signName = {mainTitle = "PvP 모로크"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_7-5.rsw"] = {displayName = "PvP : 모로크", notifyEnter = true, 
signName = {mainTitle = "PvP 모로크"}
, backgroundBmp = "noname_s2"}
, 
["pvp_y_8-5.rsw"] = {displayName = "PvP : 모로크", notifyEnter = true, 
signName = {mainTitle = "PvP 모로크"}
, backgroundBmp = "noname_s2"}
, 
["pvp_2vs2.rsw"] = {displayName = "PvP : 이벤트 경기장", notifyEnter = true, 
signName = {mainTitle = "PvP 이벤트 경기장"}
, backgroundBmp = "noname_s2"}
}
main = function()
  -- function num : 0_0
  for name,info in pairs(mapTbl) do
    displayName = "알 수 없는 곳"
    if info.displayName ~= nil then
      displayName = info.displayName
    end
    notify_enter = false
    if info.notifyEnter ~= nil then
      notify_enter = info.notifyEnter
    end
    result = AddMapDisplayName(name, displayName, notify_enter)
    if info.signName ~= nil then
      subTitle = ""
      if (info.signName).subTitle ~= nil then
        subTitle = (info.signName).subTitle
      end
      mainTitle = ""
      if (info.signName).mainTitle ~= nil then
        mainTitle = (info.signName).mainTitle
      end
      result = AddMapSignName(name, subTitle, mainTitle)
    end
    if info.backgroundBmp ~= nil then
      result = AddMapBackgroundBmp(name, info.backgroundBmp)
    end
  end
  return result, msg
end


