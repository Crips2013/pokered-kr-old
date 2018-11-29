_RocketHideout3BattleText2::
	text $07,$4C,$04,$3E,$7F,$03,$FE,$09,$2F,$02,$DC,$07,$01,$01,$34; RAW DATA : 	text "우리 로켓단에게"
	line $01,$6C,$06,$69,$7F,$07,$EB,$7F,$01,$D8,$08,$09,$03,$D1,$0B,$67; RAW DATA : 	line "관심 좀 꺼줄래?"
	done

_RocketHideout3EndBattleText2::
	text $07,$D6,$01,$B6,$0B,$66; RAW DATA : 	text "제길!"
	line $02,$E7,$0A,$7F,$02,$D9,$0B,$66; RAW DATA : 	line "당했다!"
	prompt

_RocketHideout3AfterBattleTxt2::
	text $06,$67,$0A,$61,$7F,$06,$4A,$09,$3A,$0A,$61,$0B,$67; RAW DATA : 	text "실프 스코프?"
	line $05,$18,$06,$4A,$01,$01,$7F,$0A,$C9,$09,$03,$7F,$01,$B2,$01,$48,$04,$4B,$07,$9C,$08,$26; RAW DATA : 	line "보스가 훔친 기계말이지"
	cont $07,$09,$01,$B2,$7F,$06,$EE,$03,$60,$7F,$07,$A6,$01,$B4,$0A,$72,$01,$25,$06,$DF; RAW DATA : 	cont "여기 어디 있긴할거야"
	Done

  

_RocketHideout3BattleTxt::
	text $02,$77,$01,$01,$7F,$07,$20,$01,$4D,$7F,$07,$A6,$02,$D9,$02,$C2,$01,$27; RAW DATA : 	text "네가 오고 있다는건"
	line $07,$9C,$04,$CC,$7F,$06,$CB,$01,$4D,$07,$A6,$06,$FA,$02,$D9,$0B,$66; RAW DATA : 	line "이미 알고있었다!"
	done

 

_RocketHideout3EndBattleText3::
	text $04,$B9,$0B,$67; RAW DATA : 	text "뭐?"
	line $02,$4B,$01,$01,$7F,$08,$28,$01,$25,$06,$DF,$0B,$67,$7F,$06,$C6,$02,$64,$0B,$66; RAW DATA : 	line "내가 진거야? 아냐!"
	prompt

_RocketHide3AfterBattleText3::
	text $01,$05,$02,$EB,$03,$FE,$7F,$01,$01,$05,$21,$03,$C3,$0B,$66; RAW DATA : 	text "갈대로 가봐라!"
	line $0A,$6F,$08,$26,$04,$48,$7F,$07,$04,$03,$E9,$05,$03,$07,$9C,$09,$9D,$09,$80,$01,$01,$7F,$06,$F8,$02,$D9,$04,$89; RAW DATA : 	line "하지만 엘레베이터키가 없다면"
	cont $07,$04,$04,$3E,$05,$03,$07,$9C,$09,$9D,$02,$C2,$7F,$05,$B7,$07,$4B,$0A,$6F,$08,$26,$7F,$04,$98,$0A,$6F,$08,$26,$0B,$66; RAW DATA : 	cont "엘리베이터는 사용하지 못하지!"
	done
