_Mansion1BattleText2::
	text $02,$A9,$01,$88,$06,$DF,$0B,$67; RAW DATA : 	text "누구야?"
	line $07,$09,$01,$B4,$7F,$0A,$74,$05,$2E,$03,$FE,$7F,$03,$49,$06,$EE,$07,$20,$04,$89,$7F,$06,$C8,$03,$25,$0B,$66; RAW DATA : 	line "여긴 함부로 들어오면 안돼!"
	done

_Mansion1EndBattleText2::
	text $06,$C6,$06,$DF,$0B,$68,$0B,$66; RAW DATA : 	text "아야-!"
	prompt

_Mansion1AfterBattleText2::
	text $05,$61,$04,$D0,$07,$97,$7F,$07,$0D,$06,$18,$03,$C3,$02,$CF,$0B,$67; RAW DATA : 	text "비밀의 열쇠라니?"
	line $02,$77,$01,$01,$7F,$08,$26,$01,$AD,$7F,$04,$AB,$06,$4C; RAW DATA : 	line "네가 지금 무슨"
	cont $04,$4B,$07,$8B,$7F,$0A,$6F,$02,$C2,$01,$27,$08,$26,$7F,$04,$90,$04,$33,$01,$3A,$01,$8A; RAW DATA : 	cont "말을 하는건지 모르겠군"
	done

_MansionSwitchText::
	text $05,$61,$04,$D0,$7F,$06,$4A,$07,$77,$09,$01,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	text "비밀 스위치이다!"
	line $07,$AB,$03,$1F,$06,$63,$09,$83,$01,$BE,$0B,$67; RAW DATA : 	line "작동시킬까?"
	done

_MansionSwitchPressedText::
	text $07,$F1,$06,$C6,$0B,$66,$7F,$07,$AB,$03,$1F,$06,$63,$09,$80,$07,$AA,$0B,$66; RAW DATA : 	text "좋아! 작동시키자!"
	prompt

_MansionSwitchNotPressedText::
	text $07,$AB,$03,$1F,$06,$63,$09,$80,$08,$26,$7F,$04,$4B,$07,$AA,$0B,$6A,$0B,$6A; RAW DATA : 	text "작동시키지 말자……"
	done
