IF DEF(_YELLOW)
_MtMoonJessieJamesText1::
	text $01,$25,$01,$B2,$7F,$03,$1F,$07,$AB,$7F,$01,$A7,$04,$48,$0B,$66,$50,$50; RAW DATA : 	text "거기 동작 그만!@@"

_MtMoonJessieJamesText2::
	text $01,$A7,$7F,$0A,$AD,$05,$DE; RAW DATA : 	text "그 화석"
	line $07,$4C,$04,$3E,$7F,$03,$FE,$09,$2F,$02,$DC,$07,$9C,$7F,$07,$D2,$06,$26,$0A,$6F,$01,$3A,$02,$D9,$0B,$66; RAW DATA : 	line "우리 로켓단이 접수하겠다!"

	para $06,$28,$06,$28,$0A,$F7,$7F,$02,$4B,$02,$95,$02,$F8,$08,$26; RAW DATA : 	para "순순히 내놓던지"
	line $06,$C6,$02,$CF,$04,$89,$7F,$01,$41,$09,$C5,$02,$D9,$0B,$66; RAW DATA : 	line "아니면 결투다!"
	done

_MtMoonJessieJamesText3::
	text $07,$4C,$04,$3E,$01,$01; RAW DATA : 	text "우리가"
	line $01,$EF,$04,$46,$02,$80,$05,$DE,$07,$01,$01,$34,$7F,$07,$E3,$02,$D9,$01,$4D,$0B,$67; RAW DATA : 	line "꼬마녀석에게 졌다고?"
	prompt

_MtMoonJessieJamesText4::
	text $03,$FE,$09,$2F,$02,$DC,$07,$8A,$7F,$04,$D9,$03,$C7,$08,$B3,$03,$E3; RAW DATA : 	text "로켓단은 바람처럼"
	line $07,$34,$02,$D9,$01,$01,$7F,$05,$6B,$07,$97,$7F,$06,$03,$03,$15,$03,$FE,$7F,$05,$B7,$03,$C3,$08,$28,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	line "왔다가 빛의 속도로 사라진다!@@"
ELSE
_MtMoon3BattleText2::
	text "TEAM ROCKET will"
	line "find the fossils,"
	cont "revive and sell"
	cont "them for cash!"
	done

_MtMoon3EndBattleText2::
	text "Urgh!"
	line "Now I'm mad!"
	prompt

_MtMoon3AfterBattleText2::
	text "You made me mad!"
	line "TEAM ROCKET will"
	cont "blacklist you!"
	done
ENDC
_MtMoon3Text_49f24::
	text $01,$DE,$08,$2A,$0A,$AD,$05,$DE,$07,$8B; RAW DATA : 	text "껍질화석을"
	line $05,$E1,$09,$93,$0A,$6F,$06,$63,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "선택하시겠습니까?"
	done

_MtMoon3Text_49f64::
	text $07,$E6,$01,$13,$0A,$AD,$05,$DE,$07,$8B; RAW DATA : 	text "조개화석을"
	line $05,$E1,$09,$93,$0A,$6F,$06,$63,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "선택하시겠습니까?"
	done

_MtMoon3Text_49f6f::
	text $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52, "는(은)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcf4b
	text $04,$36,$0B,$64,$07,$8B,$0B,$65,$7F,$06,$F2,$06,$FA,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	text "를(을) 얻었다!@@"

_MtMoon3Text_49f7f::
	text $07,$9C,$7F,$07,$9C,$05,$C3,$07,$8A; RAW DATA : 	text "이 이상은"
	line $03,$49,$7F,$06,$26,$7F,$06,$F8,$06,$EE,$0B,$66,$50,$50; RAW DATA : 	line "들 수 없어!@@"

_MtMoon3Text_49f85::
	text $07,$9C,$05,$21,$7F,$04,$78,$08,$E7,$0B,$66; RAW DATA : 	text "이봐 멈춰!"

	para $07,$9C,$7F,$0A,$AD,$05,$DE,$03,$49,$07,$8A; RAW DATA : 	para "이 화석들은"
	line $02,$4B,$01,$01,$7F,$04,$DF,$01,$8C,$0A,$7F,$02,$D9,$01,$88,$0B,$66; RAW DATA : 	line "내가 발굴했다구!"
	cont $01,$A7,$01,$27,$7F,$03,$31,$02,$D9,$7F,$02,$4B,$01,$D8,$06,$DF,$0B,$66; RAW DATA : 	cont "그건 둘다 내꺼야!"
	done

_MtMoon3Text_49f8a::
	text $06,$CB,$06,$D2,$06,$EE,$0B,$66; RAW DATA : 	text "알았어!"
	line $02,$3A,$02,$A9,$04,$89,$7F,$03,$27,$07,$AD,$06,$C6,$0B,$66; RAW DATA : 	line "나누면 되잖아!"
	prompt

_MtMoon3Text_49f8f::
	text $01,$02,$07,$AA,$7F,$F7,$01,$13,$06,$BF,$7F,$01,$0E,$07,$AA,$01,$4D,$0B,$66; RAW DATA : 	text "각자 1개씩 갖자고!"
	line $07,$45,$06,$69,$05,$2E,$04,$3E,$08,$26,$04,$46,$0B,$66; RAW DATA : 	line "욕심부리지마!"
	done

_MtMoon3Text_49f94::
	text $07,$CA,$04,$76,$04,$3E,$7F,$0A,$AB,$03,$F3,$05,$E6,$07,$01; RAW DATA : 	text "저멀리 홍련섬에"
	line $0A,$27,$09,$2F,$04,$93,$7F,$07,$0C,$01,$88,$06,$02,$01,$01,$7F,$07,$A6,$06,$EE; RAW DATA : 	line "포켓몬 연구소가 있어"

	para $01,$A7,$03,$49,$07,$9C,$7F,$07,$0C,$01,$88,$0A,$6F,$02,$C2,$01,$27; RAW DATA : 	para "그들이 연구하는건"
	line $0A,$AD,$05,$DE,$07,$8B,$7F,$05,$2E,$0A,$B0,$06,$63,$09,$80,$02,$C2,$01,$25,$06,$DF; RAW DATA : 	line "화석을 부활시키는거야"
	done

_MtMoon3Text_49f99::
	text $07,$9C,$07,$D6,$03,$26,$06,$EE; RAW DATA : 	text "이제됐어"
	line $07,$9C,$01,$27,$7F,$02,$4B,$01,$D8,$06,$DF,$0B,$66,$50,$50; RAW DATA : 	line "이건 내꺼야!@@"

_MtMoon3BattleText3::
	text $07,$4C,$04,$3E,$7F,$03,$FE,$09,$2F,$02,$DC,$07,$8A,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B; RAW DATA : 	text "우리 로켓단은 포켓몬을"
	line $07,$9C,$07,$4B,$0A,$6F,$02,$C2,$7F,$07,$E6,$08,$27,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	line "이용하는 조직이다!"
	done

_MtMoon3EndBattleText3::
	text $07,$2F,$07,$CC,$0A,$F7; RAW DATA : 	text "완전히"
	line $04,$61,$0A,$7F,$06,$EE,$0B,$66; RAW DATA : 	line "망했어!"
	prompt

_MtMoon3AfterBattleText3::
	text $07,$9C,$01,$25,$7F,$01,$4F,$03,$C5,$0A,$71,$03,$05,$0B,$66; RAW DATA : 	text "이거 곤란한데!"
	line $03,$1F,$04,$11,$03,$49,$07,$8B,$7F,$05,$1C,$02,$48,$07,$9C,$7F,$06,$F8,$06,$EE,$0B,$66; RAW DATA : 	line "동료들을 볼낯이 없어!"
	done

_MtMoon3BattleText4::
	text $07,$4C,$04,$3E,$02,$C2,$7F,$07,$09,$01,$B2,$05,$DD; RAW DATA : 	text "우리는 여기서"
	line $0A,$61,$03,$FE,$07,$D7,$09,$DE,$04,$36,$7F,$08,$DF,$08,$28,$08,$0F,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	line "프로젝트를 추진중이다!"
	cont $06,$D6,$03,$49,$07,$8A,$7F,$07,$CA,$04,$3E,$01,$01,$0B,$66; RAW DATA : 	cont "애들은 저리가!"
	done

_MtMoon3EndBattleText4::
	text $06,$EE,$7F,$01,$A7,$03,$D1; RAW DATA : 	text "어 그래"
	line $02,$6D,$7F,$01,$76,$08,$9A,$02,$D9; RAW DATA : 	line "넌 괜찮다"
	prompt

_MtMoon3AfterBattleText4::
	text $04,$48,$06,$E0,$7F,$0A,$AD,$05,$DE,$07,$8B,$7F,$08,$A3,$07,$88,$04,$89; RAW DATA : 	text "만약 화석을 찾으면"
	line $01,$A7,$01,$27,$7F,$02,$3A,$0A,$71,$09,$A7,$7F,$08,$06,$01,$4D; RAW DATA : 	line "그건 나한테 주고"
	cont $06,$82,$7F,$01,$D8,$07,$DE,$0B,$66; RAW DATA : 	cont "썩 꺼져!"
	done

_MtMoon3BattleText5::
	text $06,$C6,$07,$9C,$02,$C2,$7F,$07,$AA,$03,$C3,$05,$DD; RAW DATA : 	text "아이는 자라서"
	line $0A,$A6,$03,$FE,$05,$DD,$01,$B2,$04,$36,$7F,$0A,$78,$06,$DF,$0A,$78,$0B,$66; RAW DATA : 	line "홀로서기를 해야해!"
	done

_MtMoon3EndBattleText5::
	text $07,$9C,$01,$25; RAW DATA : 	text "이거"
	line $07,$0D,$04,$DE,$02,$77,$0B,$66; RAW DATA : 	line "열받네!"
	prompt

_MtMoon3AfterBattleText5::
	text $0A,$27,$09,$2F,$04,$93,$07,$8A,$7F,$05,$B7,$03,$C7,$07,$9C,$7F,$07,$20,$01,$B2,$07,$CC,$05,$2E,$09,$9D; RAW DATA : 	text "포켓몬은 사람이 오기전부터"
	line $07,$9C,$01,$67,$07,$01,$7F,$07,$20,$03,$D7,$03,$1F,$06,$C8,$7F,$07,$E8,$07,$B7,$0A,$78,$07,$34,$06,$EE; RAW DATA : 	line "이곳에 오랫동안 존재해왔어"
	done
