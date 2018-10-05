_VictoryRoadGuardText1::
	text $07,$9C,$01,$67,$07,$8B,$7F,$08,$26,$02,$3A,$01,$01,$03,$F1,$04,$89; RAW DATA : 	text "이곳을 지나가려면"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcd6d
	text $0B,$64,$07,$9C,$0B,$65,$01,$01,$7F,$07,$A6,$06,$EE,$06,$DF,$7F,$0A,$75,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	text "(이)가 있어야 합니다!"

	para $50; RAW DATA : 	para "@"
	TX_RAM wcd6d
	text $0B,$64,$07,$9C,$0B,$65,$01,$01,$7F,$06,$C6,$08,$27,$07,$8A; RAW DATA : 	text "(이)가 아직은"
	line $06,$F8,$02,$C2,$01,$25,$7F,$01,$10,$01,$8A,$07,$44,$0B,$66; RAW DATA : 	line "없는거 같군요!"

	para $01,$A7,$01,$34,$7F,$07,$A6,$06,$EE,$06,$DF,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$04,$3E,$01,$A7,$07,$01; RAW DATA : 	para "그게 있어야 포켓몬 리그에"
	line $01,$05,$7F,$06,$26,$7F,$07,$A6,$06,$60,$02,$CF,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	line "갈 수 있습니다!@@"

_VictoryRoadGuardText2::
	text $07,$9C,$01,$67,$07,$8B,$7F,$08,$26,$02,$3A,$01,$01,$03,$F1,$04,$89; RAW DATA : 	text "이곳을 지나가려면"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcd6d
	text $0B,$64,$07,$9C,$0B,$65,$01,$01,$7F,$07,$A6,$06,$EE,$06,$DF,$7F,$0A,$75,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	text "(이)가 있어야 합니다!"
	
	para $06,$EE,$0B,$66,$7F,$01,$A7,$01,$27; RAW DATA : 	para "어! 그건"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcd6d
	text $07,$9C,$01,$8A,$07,$44,$0B,$66,$50,$50; RAW DATA : 	text "이군요!@@"

_VictoryRoadGuardText_513a3::
	db $0
	para $07,$F1,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	para "좋습니다!"
	line $08,$26,$02,$3A,$01,$01,$06,$63,$08,$02,$0B,$66; RAW DATA : 	line "지나가시죠!"
	done

_Route23Text8::
	text $08,$A8,$0A,$67,$06,$EE,$7F,$03,$FE,$03,$45,$7F,$01,$34,$07,$9C,$09,$DE; RAW DATA : 	text "챔피어 로드 게이트"
	line $0B,$6A,$0B,$6A,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$04,$3E,$01,$A7; RAW DATA : 	line "…… 포켓몬 리그"
	done
