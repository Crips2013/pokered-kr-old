_TM29PreReceiveText::
	text $0B,$6A,$0B,$6A,$7F,$0B,$6A,$0B,$6A,$7F,$0B,$6A,$0B,$6A; RAW DATA : 	text "…… …… ……"
	para $0B,$6A,$0B,$6A,$7F,$0B,$6A,$0B,$6A,$7F,$0B,$6A,$0B,$6A; RAW DATA : 	para "…… …… ……"
	para $0B,$6A,$0B,$6A,$7F,$0B,$6A,$0B,$6A,$7F,$0B,$6A,$0B,$6A; RAW DATA : 	para "…… …… ……"
	para $0B,$6A,$0B,$6A,$7F,$0B,$6A,$0B,$6A,$7F,$06,$CB,$01,$3A,$02,$D9,$0B,$66; RAW DATA : 	para "…… …… 알겠다!"
	para $07,$9C,$01,$2D,$07,$8B,$7F,$01,$01,$08,$26,$01,$4D,$06,$6D,$07,$8A,$01,$01,$0B,$66; RAW DATA : 	para "이것을 가지고싶은가!"
	prompt

_ReceivedTM29Text::
	text $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52, "는(은)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcf4b
	text $04,$36,$0B,$64,$07,$8B,$0B,$65,$7F,$06,$F2,$06,$FA,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	text "를(을) 얻었다!@@"

_TM29ExplanationText::
	text $0B,$6A,$0B,$6A,$7F,$06,$CB,$01,$4D,$7F,$07,$A6,$02,$C2,$01,$01,$0B,$67; RAW DATA : 	text "…… 알고 있는가?"
	line $01,$B2,$06,$2A,$04,$73,$06,$65,$F8,$FF,$02,$C2,$7F,$05,$B7,$07,$9C,$09,$3A,$09,$80,$02,$77,$06,$63,$06,$4A,$0B,$66; RAW DATA : 	line "기술머신29는 사이코키네시스!"

	para $0B,$6A,$0B,$6A,$7F,$7F,$07,$AF,$7F,$03,$27,$04,$89; RAW DATA : 	para "……  잘 되면"
	line $05,$C3,$02,$EB,$04,$E6,$07,$97,$7F,$09,$DF,$06,$26,$7F,$02,$C9,$03,$F2,$07,$8B; RAW DATA : 	line "상대방의 특수 능력을"
	cont $0A,$67,$0A,$72,$7F,$06,$26,$7F,$07,$A6,$07,$8B,$08,$26,$03,$15,$7F,$04,$90,$04,$33,$08,$26; RAW DATA : 	cont "피할 수 있을지도 모르지"
	done

_TM29NoRoomText::
	text $07,$9C,$01,$29,$7F,$06,$EE,$08,$8E,$0A,$72,$08,$26; RAW DATA : 	text "이걸 어찌할지"
	line $04,$AB,$06,$4C,$7F,$01,$48,$0A,$B9,$7F,$07,$A6,$06,$EE,$0B,$67; RAW DATA : 	line "무슨 계획 있어?"
	done
