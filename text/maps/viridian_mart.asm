_ViridianMartText1::
	text $07,$F1,$06,$D2,$06,$EE,$0B,$66; RAW DATA : 	text "좋았어!"
	line $07,$20,$04,$DA,$05,$B7,$02,$D4,$07,$01,$01,$34,$7F,$06,$C8,$05,$2E,$7F,$07,$EB,$7F,$07,$CC,$0A,$78,$08,$06,$03,$F5,$0B,$66; RAW DATA : 	line "오박사님에게 안부 좀 전해주렴!"
	done

_ViridianMartText4::
	text $07,$9C,$05,$21,$0B,$66; RAW DATA : 	text "이봐!"
	line $09,$92,$08,$CA,$04,$46,$07,$8B,$07,$01,$05,$DD,$7F,$07,$22,$01,$25,$06,$DF,$0B,$67; RAW DATA : 	line "태초마을에서 온거야?"
	done

ViridianMartParcelQuestText::
	text $02,$6A,$7F,$07,$20,$04,$DA,$05,$B7,$02,$D4,$0A,$6F,$01,$4D; RAW DATA : 	text "너 오박사님하고"
	line $06,$C6,$02,$C2,$05,$B7,$07,$9C,$7F,$04,$62,$08,$26,$0B,$67; RAW DATA : 	line "아는사이 맞지?"

	para $07,$20,$04,$DA,$05,$B7,$02,$D4,$7F,$08,$06,$04,$AE,$0A,$6F,$06,$65,$01,$27,$03,$05; RAW DATA : 	para "오박사님 주문하신건데"
	line $07,$9C,$01,$29,$7F,$07,$CC,$02,$DE,$0A,$78,$08,$09,$06,$26,$7F,$07,$A6,$01,$3A,$02,$CF,$0B,$67; RAW DATA : 	line "이걸 전달해줄수 있겠니?"

	para $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	para $52, "는(은)"
	line $07,$20,$04,$DA,$05,$B7,$07,$97,$7F,$06,$02,$0A,$27,$04,$36,$7F,$06,$F2,$06,$FA,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	line "오박사의 소포를 얻었다!@@"
IF DEF(_YELLOW)
_ViridianMartText2::
	text $07,$9C,$7F,$0A,$61,$03,$EB,$03,$49,$04,$3E,$06,$23,$07,$01,$05,$DD,$02,$C2; RAW DATA : 	text "이 프렌들리숍에서는"
	line $01,$02,$07,$EE,$7F,$05,$C3,$09,$92,$07,$9C,$05,$C3,$7F,$09,$01,$04,$11,$07,$D6,$04,$36; RAW DATA : 	line "각종 상태이상 치료제를"
	cont $09,$F8,$01,$4D,$7F,$07,$A6,$06,$EE; RAW DATA : 	cont "팔고 있어"
	done

_ViridianMartText3::
	text $0A,$61,$03,$EB,$03,$49,$04,$3E,$06,$23,$07,$01,$7F,$04,$46,$09,$07; RAW DATA : 	text "프렌들리숍에 마침"
	line $05,$C3,$08,$B3,$06,$E0,$7F,$07,$B7,$01,$4D,$01,$01,$7F,$06,$E0,$01,$03,$7F,$07,$A6,$02,$77; RAW DATA : 	line "상처약 재고가 약간 있네"
	done

ELSE
_ViridianMartText2::
	text "This shop sells"
	line "many ANTIDOTEs."
	done

_ViridianMartText3::
	text "No! POTIONs are"
	line "all sold out."
	done

ENDC

