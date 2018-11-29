_SilphCo10Text_5a1d3::
	text $07,$4C,$07,$01,$07,$01,$07,$08,$0B,$66; RAW DATA : 	text"우에에엥!"
IF DEF(_YELLOW)
	line $04,$AB,$05,$DD,$07,$66,$0B,$66; RAW DATA : 	line "무서워!"
ELSE
	cont $04,$AB,$05,$DD,$07,$66,$0B,$66; RAW DATA : 	line "무서워!"
ENDC
	done

_SilphCo10Text_5a1d8::
	text $02,$4B,$01,$01,$7F,$07,$4F,$06,$FA,$02,$F8,$01,$27; RAW DATA : 	text "내가 울었던건"
	line $05,$61,$04,$D0,$03,$FE,$7F,$0A,$78,$08,$10,$0B,$66; RAW DATA : 	line "비밀로 해줘!"
	done

 

_SilphCo10BattleText1::
	text $F7,$F6,$08,$FE,$07,$01,$7F,$07,$20,$06,$65,$01,$29,$7F,$0A,$AF,$07,$15,$0A,$75,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	text "10층에 오신걸 환영합니다!"
	line $05,$E1,$04,$B0,$07,$8A,$7F,$08,$06,$04,$74,$07,$9C,$07,$19,$07,$44,$0B,$66; RAW DATA : 	line "선물은 주먹이예요!"
	done

_SilphCo10EndBattleText1::
	text $02,$4B,$01,$01,$7F,$04,$62,$06,$C6,$04,$F6,$03,$F8,$02,$77,$0B,$66; RAW DATA : 	text "내가 맞아버렸네!"
	prompt

_SilphCo10AfterBattleText1::
	text $07,$D6,$04,$FD,$07,$9C,$08,$26,$04,$48,$7F,$07,$9C,$05,$B7,$0A,$B8,$06,$67,$07,$8A; RAW DATA : 	text "제법이지만 이사회실은"
	line $06,$C6,$08,$27,$7F,$0A,$71,$08,$FE,$7F,$02,$42,$06,$D2,$02,$D9,$0B,$66; RAW DATA : 	line "아직 한층 남았다!"
	done

 

_SilphCo10BattleText2::
	text $02,$77,$7F,$06,$FB,$09,$9D,$04,$3E,$7F,$01,$34,$07,$A3,$03,$15; RAW DATA : 	text "네 엉터리 게임도"
	line $07,$09,$01,$B2,$01,$BE,$08,$26,$02,$D9,$0B,$66; RAW DATA : 	line "여기까지다!"
	done

 

_SilphCo10EndBattleText2::
	text $02,$42,$07,$8A,$7F,$04,$91,$06,$2B,$7F,$06,$F8,$06,$EE,$0B,$67; RAW DATA : 	text "남은 목숨 없어?"
	prompt



_SilphCo10AfterBattleText2::
	text $02,$3F,$7F,$07,$9C,$01,$3C,$05,$DD,$7F,$01,$B2,$05,$AA,$02,$64,$0B,$67; RAW DATA : 	text "날 이겨서 기쁘냐?"
	line $01,$A7,$03,$E3,$7F,$03,$19,$06,$C6,$01,$01,$0B,$66; RAW DATA : 	line "그럼 돌아가!"
	done
IF DEF(_YELLOW)
_SilphCoJessieJamesText1::
	text $04,$78,$08,$E7,$03,$C3,$7F,$01,$EF,$04,$46,$7F,$02,$80,$05,$DE,$0B,$66,$50,$50; RAW DATA : 	text "멈춰라 꼬마 녀석!@@"

_SilphCoJessieJamesText2::
	text $07,$4C,$04,$3E,$7F,$05,$18,$06,$4A,$02,$C2,$7F,$08,$0F,$07,$44,$0A,$71; RAW DATA : 	text "우리 보스는 중요한"
	line $0A,$B8,$07,$97,$08,$0F,$07,$9C,$06,$63,$03,$C3,$01,$4D,$0B,$66; RAW DATA : 	line "회의중이시라고!"

	para $04,$E6,$0A,$78,$0A,$6F,$01,$34,$7F,$03,$31,$06,$28,$7F,$06,$F8,$08,$26,$0B,$66; RAW DATA : 	para "방해하게 둘순 없지!"
	done



_SilphCoJessieJamesText3::
	text $06,$68,$07,$8A,$7F,$02,$C0,$02,$36,$0B,$68,$0B,$66,$0B,$66; RAW DATA : 	text "싫은 느낌-!!"
	prompt

_SilphCoJessieJamesText4::
	text $07,$4C,$04,$3E,$7F,$03,$FE,$09,$2F,$02,$DC,$03,$49,$07,$01,$01,$35,$7F,$06,$C6,$04,$37,$02,$D9,$07,$4E,$7F,$04,$CC,$03,$D1; RAW DATA : 	text "우리 로켓단들에겐 아름다운 미래"
	line $04,$E0,$07,$8A,$7F,$02,$4B,$07,$9F,$07,$9C,$7F,$01,$B2,$02,$D9,$04,$3E,$01,$4D,$7F,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "밝은 내일이 기다리고 있다!"

	para $06,$C6,$04,$46,$03,$15,$0B,$6A,$50,$50; RAW DATA : 	para "아마도…@@"
ENDC
