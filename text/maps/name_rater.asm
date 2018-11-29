_NameRaterText_1dab3::
	text $02,$3A,$02,$C2,$7F,$07,$9C,$04,$37,$0A,$3E,$07,$9C,$7F,$07,$D1,$06,$2A,$01,$01; RAW DATA : 	text "나는 이름풀이 점술가"
	line $04,$4B,$0A,$6F,$07,$AA,$04,$89,$7F,$07,$9C,$04,$37,$07,$88,$03,$FE,$7F,$07,$D1,$07,$8B,$7F,$09,$08,$02,$CF,$02,$D9; RAW DATA : 	line "말하자면 이름으로 점을 칩니다"

	para $02,$77,$7F,$02,$E7,$06,$65,$7F,$0A,$27,$09,$2F,$04,$93,$07,$97; RAW DATA : 	para "네 당신 포켓몬의"
	line $05,$10,$04,$8D,$07,$88,$03,$FE,$7F,$07,$D1,$07,$8B,$7F,$05,$21,$7F,$08,$09,$01,$E2,$07,$44; RAW DATA : 	line "별명으로 점을 봐 줄께요"
	done

_NameRaterText_1dab8::
	text $06,$EE,$02,$C0,$7F,$0A,$27,$09,$2F,$04,$93,$07,$97; RAW DATA : 	text "어느 포켓몬의"
	line $05,$10,$04,$8D,$07,$8B,$7F,$07,$D1,$7F,$09,$05,$09,$A9,$01,$01,$0B,$67; RAW DATA : 	line "별명을 점 칠텐가?"
	prompt

_NameRaterText_1dabd::
	text $07,$4C,$07,$62,$7F,$50; RAW DATA : 	text "우움 @"
	TX_RAM wcd6d
	text $07,$9E,$01,$01,$0B,$6A,$0B,$6A; RAW DATA : 	text "인가……"
	line $01,$FF,$7F,$07,$F1,$07,$8A,$7F,$05,$10,$04,$8D,$07,$8B,$7F,$05,$39,$07,$14,$01,$8A; RAW DATA : 	line "꽤 좋은 별명을 붙였군"

	para $0A,$6F,$08,$26,$04,$48; RAW DATA : 	para "하지만"
	line $02,$F5,$7F,$07,$F1,$07,$8A,$7F,$07,$9C,$04,$37; RAW DATA : 	line "더 좋은 이름"
	cont $02,$4B,$01,$01,$7F,$05,$39,$07,$09,$08,$09,$01,$BE,$0B,$67; RAW DATA : 	cont "내가 붙여줄까?"

	para $06,$EE,$03,$82,$01,$01,$0B,$67; RAW DATA : 	para "어떤가?"
	done

_NameRaterText_1dac2::
	text $01,$A7,$03,$D1,$0B,$67,$7F,$01,$A7,$03,$E3; RAW DATA : 	text "그래? 그럼"
	line $06,$EE,$03,$82,$7F,$05,$10,$04,$8D,$07,$88,$03,$FE,$7F,$0A,$78,$7F,$05,$1C,$01,$BE; RAW DATA : 	line "어떤 별명으로 해 볼까"
	prompt

_NameRaterText_1dac7::
	TX_RAM wBuffer
	text $0B,$66; RAW DATA : 	text "!"


	para $07,$CC,$7F,$05,$18,$02,$D9,$03,$15,$7F,$07,$F1,$07,$8A,$7F,$07,$9C,$04,$37,$07,$9C,$08,$26,$7F,$06,$CA,$07,$8A,$01,$01; RAW DATA : 	para "전 보다도 좋은 이름이지 않은가"
	line $07,$AF,$03,$27,$06,$FA,$02,$77,$0B,$66; RAW DATA : 	line "잘되었네!"
	done

_NameRaterText_1dacc::
	text $06,$CB,$01,$3A,$02,$77,$7F,$03,$97,$7F,$07,$20,$01,$25,$03,$C3; RAW DATA : 	text "알겠네 또 오거라"
	done

_NameRaterText_1dad1::
	TX_RAM wcd6d
	text $0B,$66; RAW DATA : 	text "!"
	line $07,$9C,$01,$27,$7F,$02,$EB,$02,$DC,$0A,$71,$7F,$05,$10,$04,$8D,$07,$9C,$01,$8A; RAW DATA : 	line "이건 대단한 별명이군"
	cont $02,$3A,$05,$AB,$01,$27,$7F,$07,$E6,$01,$AD,$03,$15,$7F,$06,$F8,$01,$8A,$0B,$66; RAW DATA : 	cont "나쁜건 조금도 없군!"

	para $01,$48,$06,$03,$7F,$50; RAW DATA : 	para "계속 @"
	TX_RAM wcd6d
	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text "를(을)"
	line $01,$9D,$07,$09,$07,$66,$0A,$78,$7F,$08,$06,$01,$25,$03,$C3,$0B,$66; RAW DATA : 	line "귀여워해 주거라!"
	done
