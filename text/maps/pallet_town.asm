_OakAppearsText::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$07,$B1,$01,$C1,$0B,$66,$7F,$01,$B2,$02,$D9,$04,$3E,$03,$F5,$0B,$66; RAW DATA : 	text "오박사『잠깐! 기다리렴!"
	line $0A,$74,$05,$2E,$03,$FE,$7F,$02,$3A,$01,$01,$08,$26,$04,$46,$03,$C3,$0B,$66,$50,$50; RAW DATA : 	line "함부로 나가지마라!@@"
IF DEF(_YELLOW)
_OakWalksUpText::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$07,$77,$0A,$88,$0A,$72,$7F,$05,$87,$0A,$7F,$02,$D9,$0B,$66; RAW DATA : 	text "오박사『위험할 뻔했다!"
	
	para $06,$26,$0A,$3E,$07,$01,$05,$DD,$02,$C2,$7F,$06,$DF,$05,$CD,$7F,$0A,$27,$09,$2F,$04,$93,$03,$49,$07,$9C; RAW DATA : 	para "수풀에서는 야생 포켓몬들이"
	line $02,$3A,$07,$22,$02,$DC,$02,$D9,$0B,$66; RAW DATA : 	line "나온단다!"
	done

_OakWhewText::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$0A,$DE,$0B,$6A,$0B,$6A; RAW DATA : 	text "오박사『휴……"
	done

_OakGrassText::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$06,$26,$0A,$3E,$7F,$06,$C8,$07,$01,$05,$E1,$7F,$06,$F0,$07,$D6,$03,$C3,$03,$15; RAW DATA : 	text "오박사『수풀 안에선 언제라도"
	line $0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$09,$D2,$06,$EE,$02,$3A,$07,$23,$06,$26,$7F,$07,$A6,$02,$DC,$02,$D9; RAW DATA : 	line "포켓몬이 튀어나올수 있단다"

ELSE
_OakWalksUpText::
	text "OAK: It's unsafe!"
	line "Wild #MON live"
	cont "in tall grass!"

ENDC

	para $06,$C6,$04,$AB,$03,$D1,$03,$15,$7F,$02,$6A,$04,$36,$7F,$07,$77,$0A,$78; RAW DATA : 	para "아무래도 너를 위해"
	line $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$08,$10,$06,$DF,$01,$3A,$01,$88,$02,$3A,$0B,$66; RAW DATA : 	line "포켓몬을 줘야겠구나!"
	
	para $07,$AA; RAW DATA : 	para "자"
	line $03,$6B,$03,$C3,$07,$20,$03,$F5,$0B,$66; RAW DATA : 	line "따라오렴!"
	done
_PalletTownText2::
	text $02,$3A,$03,$15; RAW DATA : 	text "나도"
	line $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$09,$80,$07,$4C,$01,$4D,$7F,$07,$A6,$06,$EE; RAW DATA : 	line "포켓몬을 키우고 있어"

	para $06,$EA,$02,$77,$03,$49,$07,$9C,$7F,$01,$0D,$0A,$78,$08,$26,$04,$89; RAW DATA : 	para "얘네들이 강해지면"
	line $02,$3F,$7F,$08,$26,$09,$31,$08,$06,$01,$3A,$08,$26,$0B,$67; RAW DATA : 	line "날 지켜주겠지?"
	done


_PalletTownText3::
	text $01,$6A,$0A,$70,$07,$97,$7F,$0A,$FB,$07,$9C,$03,$C5,$7F,$02,$EB,$02,$DC,$0A,$78,$0B,$66; RAW DATA : 	text "과학의 힘이란 대단해!"

	para $07,$9C,$07,$D6,$7F,$09,$24,$0A,$4B,$09,$9D,$7F,$09,$BB,$06,$65,$07,$8B,$7F,$09,$BB,$0A,$78; RAW DATA : 	para "이제 컴퓨터 통신을 통해"
	line $06,$C6,$07,$9C,$09,$AB,$01,$6A,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B; RAW DATA : 	line "아이템과 포켓몬을"
	cont $07,$CC,$06,$0B,$0A,$72,$7F,$06,$26,$7F,$07,$A6,$06,$EE,$0B,$66; RAW DATA : 	cont "전송할 수 있어!"
	done

_PalletTownText4::
	text $07,$9C,$01,$67,$07,$8A,$7F,$07,$20,$04,$DA,$05,$B7,$02,$D4,$07,$97; RAW DATA : 	text "이곳은 오박사님의"
	line $0A,$27,$09,$2F,$04,$93,$7F,$07,$0C,$01,$88,$06,$02; RAW DATA : 	line "포켓몬 연구소"
	done

_PalletTownText5::
	text $07,$9C,$01,$67,$07,$8A,$7F,$09,$92,$08,$CA,$04,$46,$07,$8B; RAW DATA : 	text "이곳은 태초마을"
	line $09,$92,$08,$CA,$02,$C2,$7F,$05,$C5,$0A,$6F,$06,$E1,$7F,$01,$A9,$07,$68,$07,$97,$7F,$05,$C6; RAW DATA : 	line "태초는 새하얀 근원의 색"
	done

_PalletTownText6::
	text $07,$9C,$01,$67,$07,$8A,$7F; RAW DATA : 	text "이곳은 "
	db $52,$07,$97,$7F,$08,$2D; RAW DATA : 	db $52,"의 집"
	done
	
_PalletTownText7::
	text $07,$9C,$01,$67,$07,$8A,$7F; RAW DATA : 	text "이곳은 "
	db $53,$07,$97,$7F,$08,$2D; RAW DATA : 	db $53,"의 집"
	done
