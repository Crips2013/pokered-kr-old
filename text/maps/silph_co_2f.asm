_SilphCo2Text_59ded::
	text $0A,$F7,$07,$9D,$0B,$66; RAW DATA : 	text "히익!"
	line $06,$C8,$03,$25,$0B,$66,$7F,$07,$B1,$01,$C1,$0B,$66,$7F,$02,$A9,$01,$01,$07,$EB,$0B,$66; RAW DATA : 	line "안돼! 잠깐! 누가좀!"

 

	para $02,$6D,$7F,$03,$FE,$09,$2F,$02,$DC,$07,$9C,$7F,$06,$C6,$02,$CF,$01,$88,$02,$3A; RAW DATA : 	para "넌 로켓단이 아니구나"
	line $02,$3D,$7F,$03,$97,$0B,$6A,$0B,$6A; RAW DATA : 	line "난 또……"
	cont $04,$CC,$06,$C8,$7F,$07,$9C,$01,$25,$7F,$01,$01,$08,$26,$03,$F5,$0B,$66; RAW DATA : 	cont "미안 이거 가지렴!"
	prompt
	
_ReceivedTM36Text::
	text $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52, "는(은)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcf4b
	text $04,$36,$0B,$64,$07,$8B,$0B,$65,$7F,$06,$F2,$06,$FA,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	text "를(을) 얻었다!@@"



_TM36ExplanationText::
	text $01,$B2,$06,$2A,$04,$73,$06,$65,$F9,$FC,$07,$8A; RAW DATA : 	text "기술머신36은"
	line $07,$AA,$0A,$28,$0B,$66; RAW DATA : 	line "자폭!"

	para $01,$0D,$03,$F2,$0A,$6F,$08,$26,$04,$48,$7F,$05,$B7,$07,$4B,$0A,$71; RAW DATA : 	para "강력하지만 사용한"
	line $0A,$27,$09,$2F,$04,$93,$07,$8A,$7F,$01,$B2,$07,$CD,$0A,$78,$04,$F6,$03,$F1,$0B,$66; RAW DATA : 	line "포켓몬은 기절해버려!"
	cont $06,$65,$08,$0F,$0A,$F7,$7F,$05,$B7,$07,$4B,$0A,$78; RAW DATA : 	cont "신중히 사용해"
	Done

_TM36NoRoomText::
	text $02,$F5,$7F,$07,$9C,$05,$C3,$7F,$03,$49,$7F,$06,$26,$7F,$06,$F8,$06,$EE,$0B,$66; RAW DATA : 	text "더 이상 들 수 없어!"
	Done

_SilphCo2BattleText1::
	text $03,$15,$07,$2D,$08,$10,$0B,$66,$7F,$02,$3D,$7F,$06,$67,$0A,$61,$08,$06,$06,$64,$0A,$B8,$05,$B7; RAW DATA : 	text "도와줘! 난 실프주식회사"
	line $08,$27,$07,$68,$07,$9C,$06,$DF,$0B,$66; RAW DATA : 	line "직원이야!"
	Done

_SilphCo2EndBattleText1::
	text $02,$4B,$01,$01,$7F,$03,$FE,$09,$2F,$02,$DC,$07,$9C,$03,$C5,$01,$29; RAW DATA : 	text "내가 로켓단이란걸"
	line $06,$CB,$01,$4D,$7F,$07,$A6,$06,$FA,$02,$3A,$0B,$67; RAW DATA : 	line "알고 있었나?"
	prompt

_SilphCo2AfterBattleText1::
	text $02,$3D,$7F,$06,$67,$0A,$61,$08,$06,$06,$64,$0A,$B8,$05,$B7; RAW DATA : 	text "난 실프주식회사"
	line $08,$27,$07,$68,$07,$9C,$07,$AA,$7F,$03,$FE,$09,$2F,$02,$DC,$07,$9C,$08,$26,$0B,$66; RAW DATA : 	line "직원이자 로켓단이지!"
	done

_SilphCo2BattleText2::
	text $07,$09,$01,$B4,$7F,$07,$D6,$0A,$71,$01,$88,$07,$0A,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	text "여긴 제한구역이다!"
	line $03,$19,$06,$C6,$01,$01,$0B,$66; RAW DATA : 	line "돌아가!"
	done

 

_SilphCo2EndBattleText2::
	text $02,$6A,$7F,$07,$D6,$04,$FD,$07,$9C,$01,$8A; RAW DATA : 	text "너 제법이군"
	Prompt



_SilphCo2AfterBattleText2::
	text $07,$09,$01,$B2,$7F,$04,$CC,$01,$93,$07,$8B; RAW DATA : 	text "여기 미궁을"
	line $03,$19,$09,$F4,$0A,$72,$06,$26,$7F,$07,$A6,$07,$8B,$01,$BE,$0B,$67; RAW DATA : 	line "돌파할수 있을까?"
	done

 

_SilphCo2BattleText3::
	text $06,$D6,$03,$49,$07,$8A,$7F,$01,$01,$03,$C3,$0B,$66; RAW DATA : 	text "애들은 가라!"
	done



_SilphCo2EndBattleText3::
	text $01,$0D,$0A,$6F,$01,$8A,$0B,$66; RAW DATA : 	text "강하군!"
	prompt



_SilphCo2AfterBattleText3::
	text $02,$D9,$07,$9C,$06,$C6,$04,$93,$03,$45,$7F,$04,$90,$06,$E7,$7F,$09,$88,$07,$9F,$03,$49,$07,$8A; RAW DATA : 	text "다이아몬드 모양 타일들은"
	line $07,$66,$0A,$61,$7F,$09,$88,$07,$9F,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	line "워프 타일이다!"

	para $08,$D6,$08,$B7,$02,$DC,$7F,$06,$26,$06,$0B,$07,$B5,$09,$01,$03,$C5,$04,$4B,$06,$B8,$0B,$66; RAW DATA : 	para "최첨단 수송장치란말씀!"
	done



_SilphCo2BattleText4::
	text $06,$EE,$07,$9C,$7F,$01,$EF,$04,$6D,$07,$9C,$0B,$66; RAW DATA : 	text "어이 꼬맹이!"
	line $07,$09,$01,$B2,$05,$DD,$7F,$04,$B9,$0A,$6F,$02,$C2,$01,$25,$08,$26,$0B,$67; RAW DATA : 	line "여기서 뭐하는거지?"
	done

 

_SilphCo2EndBattleText4::
	text $02,$3A,$03,$C5,$7F,$04,$D9,$05,$18,$02,$80,$05,$DE,$0B,$66; RAW DATA : 	text "나란 바보녀석!"
	prompt



_SilphCo2AfterBattleText4::
	text $06,$67,$0A,$61,$08,$06,$06,$64,$0A,$B8,$05,$B7,$02,$C2; RAW DATA : 	text "실프주식회사는"
	line $03,$FE,$09,$2F,$02,$DC,$07,$01,$7F,$0A,$75,$05,$14,$03,$29,$01,$25,$02,$D9,$0B,$66; RAW DATA : 	line "로켓단에 합병될거다!"
	done

 
