_DaisyInitialText::
	text $06,$C8,$02,$87,$7F; RAW DATA : 	text "안녕 "
	db $52,$01,$8A,$0B,$66; RAW DATA : 	db $52,"군!"
	line $53,$02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	line $53,"는(은)"
	cont $0A,$72,$06,$C6,$04,$F6,$08,$26,$7F,$07,$0C,$01,$88,$06,$02,$07,$01,$7F,$07,$A6,$06,$EE; RAW DATA : 	cont "할아버지 연구소에 있어"
	done

_DaisyOfferMapText::
	text $0A,$72,$06,$C6,$04,$F6,$08,$26,$01,$01,$7F,$02,$6A,$0A,$71,$09,$A7; RAW DATA : 	text "할아버지가 너한테"
	line $05,$2E,$09,$89,$0A,$72,$01,$34,$7F,$07,$A6,$02,$D9,$01,$4D,$7F,$04,$B0,$06,$EE,$05,$23,$02,$D9,$04,$89,$05,$DD,$0B,$67; RAW DATA : 	line "부탁할게 있다고 물어봤다면서?"
	
	para $07,$09,$01,$B2,$7F,$07,$9C,$01,$34; RAW DATA : 	para "여기 이게"
	line $03,$15,$07,$62,$07,$9C,$7F,$03,$29,$01,$25,$06,$DF; RAW DATA : 	line "도움이 될거야"
	prompt

_GotMapText::
	text $52,$02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52,"는(은)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcf4b
	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text "를(을)"
	cont $06,$F2,$06,$FA,$02,$D9,$0B,$66,$0B,$66,$50,$50; RAW DATA : 	cont "얻었다!!@@"

_DaisyBagFullText::
	text $01,$01,$04,$E6,$07,$9C,$7F,$01,$01,$03,$46,$7F,$08,$99,$7F,$01,$2D,$7F,$01,$10,$01,$88,$02,$3A,$0B,$66; RAW DATA : 	text "가방이 가득 찬 것 같구나!"
	done

_DaisyUseMapText::
	text $09,$88,$07,$4E,$04,$6A,$07,$88,$03,$FE,$7F,$02,$77,$01,$01,$7F,$08,$26,$01,$AD; RAW DATA : 	text "타운맵으로 네가 지금"
	line $06,$EE,$03,$60,$07,$01,$7F,$07,$A6,$02,$C2,$08,$26,$7F,$06,$CB,$06,$26,$7F,$07,$A6,$06,$EE; RAW DATA : 	line "어디에 있는지 알수 있어"
	done

_BluesHouseText2::
	text "#MON are living"
	line "things! If they"
	cont "get tired, give"
	cont "them a rest!"
	done

_BluesHouseText3::
	text $09,$7B,$7F,$08,$26,$03,$15,$02,$D9; RAW DATA : 	text "큰 지도다"
	line $01,$82,$07,$B5,$0A,$F7,$7F,$07,$7F,$07,$4B,$0A,$72,$01,$2D,$7F,$01,$10,$02,$D9; RAW DATA : 	line "굉장히 유용할것 같다"
	done
