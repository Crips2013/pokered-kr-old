_SafariZoneEntranceText1::
	text $05,$B7,$09,$F4,$04,$3E,$07,$E8,$07,$01; RAW DATA : 	text "사파리존에"
	line $07,$20,$06,$65,$01,$29,$7F,$0A,$AF,$07,$15,$0A,$75,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "오신걸 환영합니다!"
	done

SafariZoneEntranceText_9e814::
	text $04,$FA,$06,$81,$7F,$01,$01,$06,$67,$7F,$01,$2D,$07,$9E,$01,$01,$07,$44,$0B,$67,$50,$50; RAW DATA : 	text "벌써 가실 것인가요?@@"

_SafariZoneEntranceText_753bb::
	text $02,$42,$07,$8A,$7F,$05,$B7,$09,$F4,$04,$3E,$05,$1C,$07,$8B; RAW DATA : 	text "남은 사파리볼을"
	line $04,$DD,$02,$43,$04,$D9,$03,$C8,$02,$CF,$02,$D9; RAW DATA : 	line "반납바랍니다"
	done

_SafariZoneEntranceText_753c0::
	text $0A,$80,$07,$4E,$07,$8B,$7F,$05,$67,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	text "행운을 빕니다!"
	done

_SafariZoneEntranceText_753c5::
	text $07,$F1,$07,$8A,$7F,$01,$41,$01,$6A,$01,$01,$7F,$07,$A6,$06,$FA,$02,$3A,$07,$44,$0B,$67; RAW DATA : 	text "좋은 결과가 있었나요?"
	line $02,$3A,$08,$0F,$07,$01,$7F,$03,$97,$7F,$07,$20,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	line "나중에 또 오세요!"
	done

SafariZoneEntranceText_9e6e4::
	text $02,$DC,$03,$17,$7F,$FB,$F6,$F6,$07,$68,$07,$88,$03,$FE,$7F,$07,$9C,$7F,$01,$68,$07,$68,$07,$01,$05,$DD; RAW DATA : 	text "단돈 500원으로 이 공원에서"
	line $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$04,$46,$07,$8D,$01,$DF,$7F,$07,$B2,$07,$8B,$06,$26,$7F,$07,$A6,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "포켓몬을 마음껏 잡을수 있습니다!"
	para $08,$9C,$07,$09,$0A,$6F,$06,$63,$01,$3A,$02,$3A,$07,$44,$0B,$67,$50,$50; RAW DATA : 	para "참여하시겠나요?@@"

SafariZoneEntranceText_9e747::
IF DEF(_YELLOW)
	text $07,$A4,$07,$B5,$04,$11,$7F,$50; RAW DATA : 	text "입장료 @"
	TX_BCD wPriceTemp, $c3
	text $07,$68; RAW DATA : 	text "원"
ELSE
	text $07,$A4,$07,$B5,$04,$11,$7F," 500", $07,$68
ENDC
	line $04,$DE,$06,$D2,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "받았습니다!"

	para $07,$CA,$0A,$F1,$08,$F8,$07,$01,$05,$DD,$7F,$07,$D6,$07,$AB,$0A,$71; RAW DATA : 	para "저희측에서 제작한"
	line $09,$DF,$06,$26,$0A,$71,$7F,$04,$93,$06,$4A,$09,$9D,$05,$1C,$07,$A4,$02,$CF,$02,$D9; RAW DATA : 	line "특수한 몬스터볼입니다"

	para $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	para $52, "는(은)"
	line $05,$B7,$09,$F4,$04,$3E,$05,$1C,$7F,$F9,$F6,$01,$13,$04,$36,$7F,$06,$F2,$06,$FA,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	line "사파리볼 30개를 얻었다!@@"

_SafariZoneEntranceText_75360::
	db $0
	para $05,$B7,$07,$4B,$06,$63,$01,$03,$07,$9C,$7F,$07,$EE,$04,$11,$03,$27,$01,$25,$02,$3A; RAW DATA : 	para "사용시간이 종료되거나"
	line $05,$B7,$09,$F4,$04,$3E,$05,$1C,$07,$9C,$7F,$06,$02,$08,$28,$03,$27,$04,$89; RAW DATA : 	line "사파리볼이 소진되면"
	cont $07,$CA,$0A,$F1,$08,$F8,$07,$01,$05,$DD,$7F,$06,$CB,$03,$F1,$03,$45,$04,$3E,$01,$3A,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	cont "저희측에서 알려드리겠습니다!"
	done

_SafariZoneEntranceText_75365::
	text $06,$CB,$01,$3A,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	text "알겠습니다!"
	line $02,$D9,$07,$8D,$07,$01,$7F,$03,$97,$7F,$03,$49,$03,$F1,$08,$06,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	line "다음에 또 들려주세요!"
	done

_SafariZoneEntranceText_7536a::
	text $07,$9C,$03,$E1,$0B,$66; RAW DATA : 	text "이런!"
	line $06,$02,$08,$26,$01,$AD,$07,$9C,$7F,$05,$2E,$07,$E7,$0A,$6F,$02,$77,$07,$44,$0B,$66; RAW DATA : 	line "소지금이 부족하네요!"
	done

_SafariZoneEntranceText_753e6::
	text $06,$EE,$05,$DD,$07,$20,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	text "어서오세요!"
	line $07,$9C,$01,$67,$07,$8A,$7F,$08,$B3,$07,$8D,$07,$9C,$06,$65,$01,$01,$07,$44,$0B,$67; RAW DATA : 	line "이곳은 처음이신가요?"
	done

_SafariZoneEntranceText_753eb::
	text $05,$B7,$09,$F4,$04,$3E,$07,$E8,$07,$01,$02,$C2; RAW DATA : 	text "사파리존에는"
	line $08,$D1,$7F,$FA,$7F,$01,$88,$07,$0A,$07,$9C,$7F,$07,$A6,$06,$60,$02,$CF,$02,$D9,$0B,$6C; RAW DATA : 	line "총 4 구역이 있습니다."

	para $01,$02,$7F,$01,$88,$07,$0A,$04,$46,$02,$D9,$7F,$02,$D9,$04,$35,$7F,$07,$EE,$04,$29,$07,$97; RAW DATA : 	para "각 구역마다 다른 종류의"
	line $0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$07,$A6,$07,$88,$04,$87; RAW DATA : 	line "포켓몬이 있으며"
	cont $05,$B7,$09,$F4,$04,$3E,$05,$1C,$03,$FE,$7F,$0A,$27,$0A,$B9,$0A,$72,$7F,$06,$26,$7F,$07,$A6,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	cont "사파리볼로 포획할 수 있습니다!"
	
	para $05,$B7,$07,$4B,$06,$63,$01,$03,$07,$9C,$7F,$07,$EE,$04,$11,$03,$27,$01,$25,$02,$3A; RAW DATA : 	para "사용시간이 종료되거나"
	line $05,$B7,$09,$F4,$04,$3E,$05,$1C,$07,$8B,$7F,$02,$D9,$7F,$06,$B2,$06,$63,$04,$89; RAW DATA : 	line "사파리볼을 다 쓰시면"
	cont $05,$DD,$05,$61,$06,$4A,$01,$01,$7F,$07,$EE,$04,$11,$03,$2B,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	cont "서비스가 종료됩니다!"

	para $08,$E2,$04,$DF,$0A,$6F,$06,$63,$01,$B2,$7F,$07,$CC,$07,$01; RAW DATA : 	para "출발하시기 전에"
	line $05,$B7,$07,$4B,$0A,$6F,$08,$26,$7F,$06,$CA,$07,$8A; RAW DATA : 	line "사용하지 않은"
	cont $0A,$27,$09,$2F,$04,$93,$7F,$04,$DA,$06,$4A,$03,$FE; RAW DATA : 	cont "포켓몬 박스로"
	cont $08,$26,$07,$D4,$0A,$6F,$06,$63,$01,$B2,$7F,$04,$D9,$03,$C8,$02,$CF,$02,$D9; RAW DATA : 	cont "지정하시기 바랍니다"
	done

_SafariZoneEntranceText_753f0::
	text $06,$67,$03,$FA,$0A,$75,$02,$CF,$02,$D9; RAW DATA : 	text "실례합니다"
	line $07,$9C,$01,$67,$07,$97,$7F,$02,$DC,$01,$61,$07,$9C,$06,$63,$01,$8A,$07,$44,$0B,$66; RAW DATA : 	line "이곳의 단골이시군요!"
	done

IF DEF(_YELLOW)
_SafariZoneLowCostText1::
	db 0
	para $07,$19,$7F,$04,$62,$06,$C6,$07,$44; RAW DATA : 	para "예 맞아요"
	line $01,$01,$08,$26,$01,$4D,$7F,$01,$48,$06,$65,$01,$25,$7F,$08,$06,$05,$F5,$06,$DF,$08,$02; RAW DATA : 	line "가지고 계신거 주셔야죠"
	prompt

_SafariZoneLowCostText2::
	text $01,$A7,$04,$3E,$01,$4D,$7F,$05,$1C,$7F,$F9,$F6,$01,$13,$04,$36; RAW DATA : 	text "그리고 볼 30개를"
	line $07,$CC,$05,$2E,$7F,$03,$45,$04,$41,$06,$26,$01,$01,$7F,$06,$F8,$06,$60,$02,$CF,$02,$D9,$0B,$6C; RAW DATA : 	line "전부 드릴수가 없습니다."
	done

_SafariZoneLowCostText3::
	db 0
	para $07,$D4,$04,$4B,$7F,$02,$26,$08,$2A,$01,$B2,$01,$8A,$07,$44; RAW DATA : 	para "정말 끈질기군요"
	line $01,$A7,$03,$E8,$01,$34,$7F,$03,$49,$06,$EE,$01,$01,$01,$4D,$7F,$06,$6D,$02,$3A,$07,$44,$0B,$67; RAW DATA : 	line "그렇게 들어가고 싶나요?"

	para $07,$F1,$06,$C6,$07,$44; RAW DATA : 	para "좋아요"
	line $07,$A4,$07,$B5,$0A,$6F,$05,$EC,$07,$44; RAW DATA : 	line "입장하세요"
	cont $0A,$6F,$08,$26,$04,$48,$7F,$07,$9C,$04,$F8,$05,$A3,$07,$A4,$02,$CF,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	cont "하지만 이번뿐입니다!@@"

_SafariZoneLowCostText4::
	db 0
	done

_SafariZoneLowCostText5::
	text $07,$FB,$06,$0B,$0A,$75,$02,$CF,$02,$D9,$04,$48; RAW DATA : 	text "죄송합니다만"
	line $07,$44,$01,$AD,$07,$8B,$7F,$02,$4B,$06,$DF; RAW DATA : 	line "요금을 내야"
	cont $07,$A4,$07,$B5,$07,$9C,$7F,$01,$01,$02,$C9,$0A,$75,$02,$CF,$02,$D9; RAW DATA : 	cont "입장이 가능합니다"
	done

_SafariZoneLowCostText6::
	text $07,$44,$01,$AD,$07,$8B,$7F,$06,$C8,$7F,$02,$4B,$04,$89; RAW DATA : 	text "요금을 안 내면"
	line $07,$A4,$07,$B5,$7F,$04,$98,$7F,$0A,$75,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "입장 못 합니다!"
	done

_SafariZoneLowCostText7::
	text $0A,$71,$7F,$04,$46,$03,$60,$0A,$6F,$08,$02,$0B,$6B; RAW DATA : 	text "한 마디하죠,"
	line $03,$17,$06,$F8,$07,$88,$04,$89,$7F,$04,$98,$7F,$03,$49,$06,$EE,$01,$09,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "돈없으면 못 들어갑니다!"
	done

_SafariZoneLowCostText8::
	text $07,$D6,$7F,$07,$A4,$7F,$05,$18,$05,$EC,$07,$44,$7F,$06,$C8,$7F,$03,$27,$07,$44,$0B,$66; RAW DATA : 	text "제 입 보세요 안 되요!"
	line $06,$CB,$01,$3A,$08,$02,$0B,$67; RAW DATA : 	line "알겠죠?"
	done

ENDC