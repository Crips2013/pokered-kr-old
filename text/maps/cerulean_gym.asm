_CeruleanGymText_5c7be::
	text $06,$C8,$02,$87,$0B,$66; RAW DATA : 	text "안녕!"
	line $07,$4C,$04,$3E,$7F,$05,$DD,$03,$FE,$7F,$08,$B3,$07,$8D,$05,$18,$08,$26,$0B,$67; RAW DATA : 	line "우리 서로 처음보지?"
IF DEF(_YELLOW)
	para $02,$6A,$02,$C2,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$07,$CC,$03,$DB,$07,$8B; RAW DATA : 	para "너는 포켓몬 전략을"
	line $06,$EE,$03,$81,$01,$34,$7F,$08,$3E,$02,$CF,$0B,$67; RAW DATA : 	line "어떡게 짰니?"	
ELSE
	para "Trainers who want"
	line "to turn pro have"
	cont "to have a policy"
	cont "about #MON!"

	para "What is your"
	line "approach when you"
	cont "catch #MON?"
ENDC
	para $02,$4B,$7F,$04,$E6,$09,$07,$07,$8A; RAW DATA : 	para "내 방침은"
	line $04,$B0,$09,$88,$07,$A4,$7F,$0A,$27,$09,$2F,$04,$93,$01,$6A,$7F,$0A,$74,$01,$E2,$0A,$6F,$02,$C2; RAW DATA : 	line "물타입 포켓몬과 함께하는"
	cont $07,$CC,$03,$F2,$7F,$01,$68,$01,$3D,$07,$9C,$06,$DF,$0B,$66; RAW DATA : 	cont "전력 공격이야!"

IF DEF(_YELLOW)
	para $05,$EC,$01,$48,$7F,$07,$D6,$07,$9F,$07,$97,$7F,$04,$CC,$02,$80,$7F,$07,$9C,$06,$4D,$07,$9C,$01,$01; RAW DATA : 	para "세계 제일의 미녀 이슬이가"
	line $07,$20,$02,$C3,$7F,$02,$77,$7F,$05,$C3,$02,$EB,$03,$C3,$01,$88,$0B,$66; RAW DATA : 	line "오늘 네 상대라구!"

	para $08,$08,$05,$61,$03,$26,$02,$CF; RAW DATA : 	para "준비됐니"
	line $01,$9D,$07,$10,$03,$35,$07,$9C,$06,$DF,$0B,$67; RAW DATA : 	line "귀염둥이야?"
ENDC
	done
_CeruleanGymText_5c7c3::
	text $01,$B2,$06,$2A,$04,$73,$06,$65,$F7,$F7,$7F,$06,$C8,$07,$01,$02,$C2; RAW DATA : 	text "기술머신11 안에는"
	line $01,$25,$0A,$40,$01,$74,$05,$E1,$07,$9C,$7F,$03,$49,$06,$EE,$07,$A6,$06,$EE,$0B,$66; RAW DATA : 	line "거품광선이 들어있어!"

	para $04,$B0,$07,$01,$7F,$05,$B7,$02,$C2,$7F,$0A,$27,$09,$2F,$04,$93,$07,$01,$01,$34; RAW DATA : 	para "물에 사는 포켓몬에게"
	line $05,$B7,$07,$4B,$0A,$78,$05,$18,$05,$21,$0B,$66; RAW DATA : 	line "사용해보봐!"
	done

_CeruleanGymText_5c7c8::
	text $05,$4D,$04,$17,$04,$E8,$08,$26,$02,$C2,$7F,$F9,$F6,$03,$E9,$05,$07,$01,$BE,$08,$26,$07,$97; RAW DATA : 	text "블루배지는 30레벨까지의"
	line $04,$90,$03,$47,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$02,$6E,$7F,$03,$6B,$04,$33,$01,$34,$7F,$0A,$78,$08,$10,$0B,$66; RAW DATA : 	line "모든 포켓몬이 널 따르게 해줘!"
	
	para $01,$A7,$04,$3E,$01,$4D,$7F,$06,$F0,$07,$D6,$03,$47,$08,$26,$7F,$0A,$3E,$05,$03,$01,$B2,$04,$36; RAW DATA : 	para "그리고 언제든지 풀베기를"
	line $05,$B7,$07,$4B,$7F,$0A,$72,$7F,$06,$26,$7F,$07,$A6,$01,$34,$7F,$0A,$78,$08,$10,$0B,$66; RAW DATA : 	line "사용 할 수 있게 해줘!"

	para $01,$B6,$07,$8B,$7F,$04,$47,$02,$C2,$7F,$07,$AB,$07,$8A,$7F,$02,$3A,$04,$AB,$07,$D4,$03,$15,$02,$C2; RAW DATA : 	para "길을 막는 작은 나무정도는"
	line $07,$AF,$03,$C3,$02,$4E,$7F,$06,$26,$7F,$07,$A6,$06,$EE,$0B,$66; RAW DATA : 	line "잘라낼 수 있어!"

	para $01,$A7,$04,$3E,$01,$4D,$7F,$07,$9C,$7F,$01,$B2,$06,$2A,$04,$73,$06,$65,$03,$15,$7F,$08,$09,$01,$34,$0B,$66; RAW DATA : 	para "그리고 이 기술머신도 줄게!"
	done


_ReceivedTM11Text::
	text $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52, "는(은)"
	line $01,$B2,$06,$2A,$04,$73,$06,$65,$F7,$F7,$04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	line "기술머신11를(을)"
	cont $04,$DE,$06,$D2,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	cont "받았다!@@"

_CeruleanGymText_5c7d3::
	text $01,$01,$04,$E6,$07,$8B,$7F,$05,$61,$07,$4C,$01,$4D,$7F,$02,$D9,$06,$63,$07,$20,$03,$F5,$0B,$66; RAW DATA : 	text "가방을 비우고 다시오렴!"
	done
	
_CeruleanGymText_5c7d8::
IF DEF(_YELLOW)
	text $04,$4B,$03,$15,$7F,$06,$C8,$03,$25,$0B,$66; RAW DATA : 	text "말도 안돼!"
	line $02,$4B,$01,$01,$7F,$07,$E3,$02,$DC,$04,$4B,$07,$9C,$06,$DF,$0B,$67; RAW DATA : 	line "내가 졌단말이야?"
ELSE
	text "Wow!"
	line "You're too much!"
ENDC
	para $07,$F1,$06,$C6,$0B,$66; RAW DATA : 	para "좋아!"

	para $02,$6D,$7F,$02,$3F,$7F,$07,$9C,$01,$45,$02,$D9,$02,$C2,$7F,$08,$25,$0A,$35,$07,$9E; RAW DATA : 	para "넌 날 이겼다는 증표인"
	line $05,$4D,$04,$17,$04,$E8,$08,$26,$04,$36,$7F,$01,$01,$08,$2A,$7F,$07,$AA,$01,$3D,$07,$9C,$7F,$07,$A6,$06,$EE,$0B,$66; RAW DATA : 	line "블루배지를 가질 자격이 있어!"
	prompt

_CeruleanGymBattleText1::
	text $05,$18,$06,$C6,$0A,$6F,$02,$CF; RAW DATA : 	text "보아하니"
	line $0A,$71,$08,$9C,$7F,$04,$90,$07,$AA,$03,$C5,$7F,$01,$2D,$7F,$01,$10,$02,$77,$0B,$66; RAW DATA : 	line "한참 모자란 것 같네!"

	para $07,$9C,$06,$4D,$07,$9C,$02,$D4,$07,$9C,$7F,$02,$3A,$05,$E3,$7F,$0A,$6A,$07,$44,$03,$15,$7F,$06,$F8,$06,$EE,$0B,$66; RAW DATA : 	para "이슬이님이 나설 필요도 없어!"
	done

_CeruleanGymEndBattleText1::
	text $02,$6A,$7F,$07,$D4,$04,$4B; RAW DATA : 	text "너 정말"
	line $02,$EB,$02,$DC,$0A,$6F,$01,$88,$02,$3A,$0B,$66; RAW DATA : 	line "대단하구나!"
	prompt

_CeruleanGymAfterBattleText1::
	text $02,$D9,$04,$35,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$03,$49,$01,$6A,$7F,$06,$6E,$07,$66,$05,$DD; RAW DATA : 	text "다른 트레이너들과 싸워서"
	line $07,$EB,$02,$F5,$7F,$06,$67,$03,$F2,$07,$8B,$7F,$09,$80,$07,$66,$05,$21; RAW DATA : 	line "좀더 실력을 키워봐"
	done

_CeruleanGymBattleText2::
	text $06,$EE,$0A,$3A,$0B,$66; RAW DATA : 	text "어푸!"

	para $04,$75,$07,$CA,$7F,$02,$4B,$01,$01,$7F,$05,$C3,$02,$EB,$02,$D9,$0B,$66; RAW DATA : 	para "먼저 내가 상대다!"
	line $02,$FD,$05,$0D,$03,$C3,$0B,$66; RAW DATA : 	line "덤벼라!"
	done

_CeruleanGymEndBattleText2::
	text $07,$9C,$03,$E2,$04,$3E; RAW DATA : 	text "이럴리"
	line $06,$F8,$02,$C2,$03,$05,$0B,$66; RAW DATA : 	line "없는데!"
	prompt


_CeruleanGymAfterBattleText2::
	text $07,$9C,$06,$4D,$07,$9C,$02,$C2,$7F,$06,$26,$03,$F3,$07,$8B; RAW DATA : 	text "이슬이는 수련을"
	line $01,$34,$07,$8B,$04,$3E,$7F,$0A,$6F,$08,$26,$7F,$06,$CA,$06,$D2,$02,$DC,$02,$D9,$0B,$66; RAW DATA : 	line "게을리 하지 않았단다!"

	para $02,$6A,$7F,$01,$10,$07,$8A,$7F,$06,$D6,$06,$0B,$07,$9C,$0A,$71,$09,$A7,$02,$C2; RAW DATA : 	para "너 같은 애송이한테는"
	line $08,$26,$08,$26,$7F,$06,$CA,$07,$8B,$01,$29,$0B,$66; RAW DATA : 	line "지지 않을걸!"
	done

_CeruleanGymText_5c82a::
	text $04,$CC,$03,$D1,$07,$97,$7F,$08,$A8,$0A,$67,$06,$F0,$0B,$66; RAW DATA : 	text "미래의 챔피언!"

	para $02,$4B,$01,$01,$7F,$08,$E6,$01,$4D,$7F,$0A,$6F,$02,$3A,$7F,$0A,$78,$08,$09,$01,$34,$0B,$66; RAW DATA : 	para "내가 충고 하나 해줄게!"

	para $07,$9C,$01,$67,$07,$97,$7F,$01,$6C,$07,$B5,$7F,$07,$9C,$06,$4D,$07,$9C,$02,$C2; RAW DATA : 	para "이곳의 관장 이슬이는"
	line $04,$B0,$09,$88,$07,$A4,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$07,$CC,$04,$AE,$01,$01,$06,$DF,$0B,$66; RAW DATA : 	line "물타입 포켓몬 전문가야!"

	para $0A,$3E,$09,$88,$07,$A4,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$05,$B7,$07,$4B,$0A,$78,$05,$DD; RAW DATA : 	para "풀타입 포켓몬을 사용해서"
	line $04,$B0,$07,$8B,$7F,$0A,$ED,$06,$26,$0A,$78,$04,$F6,$04,$3E,$02,$C2,$01,$34,$7F,$0A,$BF,$01,$6A,$07,$CB,$07,$9C,$08,$26,$0B,$66; RAW DATA : 	line "물을 흡수해버리는게 효과적이지!"

	para $06,$C6,$02,$CF,$04,$89,$7F,$07,$CC,$01,$B2,$03,$FE; RAW DATA : 	para "아니면 전기로"
	line $07,$D6,$06,$D0,$0A,$6F,$02,$C2,$01,$2D,$03,$15,$7F,$07,$F1,$06,$C6,$0B,$66; RAW DATA : 	line "제압하는것도 좋아!"
	done

_CeruleanGymText_5c82f::
	text $07,$9C,$06,$4D,$07,$9C,$04,$36,$7F,$07,$9C,$01,$45,$01,$88,$02,$3A,$0B,$66; RAW DATA : 	text "이슬이를 이겼구나!"
	line $02,$4B,$01,$01,$7F,$05,$18,$02,$C2,$7F,$02,$AB,$07,$9C,$7F,$07,$A6,$02,$D9,$02,$CF,$01,$BE,$0B,$66; RAW DATA : 	line "내가 보는 눈이 있다니까!"
	
	para $02,$6A,$03,$CB,$7F,$02,$3A; RAW DATA : 	para "너랑 나"
	line $01,$FF,$02,$3A,$7F,$07,$F1,$07,$8A,$7F,$09,$3E,$05,$61,$01,$01; RAW DATA : 	line "꽤나 좋은 콤비가"
	cont $03,$29,$06,$26,$07,$A6,$07,$8B,$7F,$01,$2D,$7F,$01,$10,$07,$8A,$03,$05,$0B,$66; RAW DATA : 	cont "될수있을 것 같은데!"
	done
