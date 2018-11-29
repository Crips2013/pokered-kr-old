IF DEF(_YELLOW)
_RocketHideoutJessieJamesText1::
	text $01,$EF,$04,$46,$7F,$02,$80,$05,$DE; RAW DATA : 	text "꼬마 녀석"
	line $02,$F5,$02,$C2,$7F,$04,$98,$7F,$08,$26,$02,$3A,$01,$03,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	line "더는 못 지나간다!@@"

 

_RocketHideoutJessieJamesText2::
	text $02,$77,$01,$01,$7F,$02,$DE,$04,$62,$07,$9C,$05,$BA,$07,$01,$05,$DD; RAW DATA : 	text "네가 달맞이산에서"
	line $0A,$71,$08,$2E,$07,$8A,$7F,$07,$A8,$08,$26,$7F,$06,$CA,$06,$D2,$01,$3A,$08,$26,$0B,$66; RAW DATA : 	line "한짓은 잊지 않았겠지!"

 

	para $07,$9C,$07,$D6,$7F,$05,$19,$06,$26,$07,$97,$7F,$06,$63,$01,$03,$07,$9C,$02,$D9; RAW DATA : 	para "이제 복수의 시간이다"
	line $01,$EF,$04,$46,$0B,$66; RAW DATA : 	line "꼬마!"
	done

 

_RocketHideoutJessieJamesText3::
	text $06,$68,$07,$8A,$7F,$02,$C0,$02,$36,$0B,$68,$0B,$66,$0B,$66; RAW DATA : 	text "싫은 느낌-!!"
	prompt

_RocketHideoutJessieJamesText4::
	text $07,$4C,$04,$3E,$7F,$03,$FE,$09,$2F,$02,$DC,$03,$49,$07,$01,$01,$35,$7F,$06,$C6,$04,$37,$02,$D9,$07,$4E,$7F,$04,$CC,$03,$D1; RAW DATA : 	text "우리 로켓단들에겐 아름다운 미래"
	line $04,$E0,$07,$8A,$7F,$02,$4B,$07,$9F,$07,$9C,$7F,$01,$B2,$02,$D9,$04,$3E,$01,$4D,$7F,$07,$A6,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	line "밝은 내일이 기다리고 있다!@@"

ELSE
_RocketHideout4BattleText2::
	text "I know you! You"
	line "ruined our plans"
	cont "at MT.MOON!"
	done

_RocketHideout4EndBattleText2::
	text "Burned"
	line "again!"
	prompt

_RocketHide4AfterBattleText2::
	text "Do you have"
	line "something against"
	cont "TEAM ROCKET?"
	done

_RocketHideout4BattleText3::
	text "How can you not"
	line "see the beauty of"
	cont "our evil?"
	done

_RocketHideout4EndBattleText3::
	text "Ayaya!"
	prompt

_RocketHide4AfterBattleText3::
	text "BOSS! I'm sorry I"
	line "failed you!"
	done


ENDC

_RocketHideout4Text_4557a::
	text $01,$A7,$03,$D1,$0B,$66,$7F,$06,$06,$08,$27,$0A,$F7,$7F,$07,$09,$01,$B2,$01,$BE,$08,$26; RAW DATA : 	text "그래! 솔직히 여기까지"
	line $07,$22,$01,$27,$7F,$02,$8E,$03,$CA,$02,$D9,$01,$4D,$7F,$0A,$78,$06,$DF,$01,$3A,$01,$8A,$0B,$66; RAW DATA : 	line "온건 놀랐다고 해야겠군!"
	done

 

_RocketHideout4Text_4557f::
	text $04,$B9,$03,$C3,$01,$4D,$0B,$66; RAW DATA : 	text "뭐라고!"
	line $06,$EE,$03,$81,$01,$34,$7F,$07,$9C,$03,$E1,$07,$9F,$07,$9C,$0B,$66; RAW DATA : 	line "어떡게 이런일이!"
	prompt

_RocketHideout4Text_45584::
	text $05,$18,$06,$C6,$0A,$6F,$02,$CF,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B; RAW DATA : 	text "보아하니 포켓몬을"
	line $04,$65,$07,$4C,$7F,$07,$D4,$05,$EA,$03,$49,$07,$09,$7F,$09,$80,$07,$4E,$7F,$01,$2D,$7F,$01,$10,$01,$88,$02,$3A; RAW DATA : 	line "매우 정성들여 키운 것 같구나"

 

	para $02,$6A,$7F,$01,$10,$07,$8A,$7F,$01,$EF,$04,$46,$02,$C2,$7F,$02,$4B,$7F,$06,$DF,$04,$61,$07,$8B; RAW DATA : 	para "너 같은 꼬마는 내 야망을"
	line $07,$9C,$0A,$78,$0A,$6F,$08,$26,$7F,$04,$98,$0A,$6F,$01,$3A,$08,$26; RAW DATA : 	line "이해하지 못하겠지"

 

	para $07,$9C,$04,$F8,$07,$01,$02,$C2; RAW DATA : 	para "이번에는"
	line $0A,$71,$04,$DF,$7F,$04,$B0,$03,$DF,$02,$3A,$08,$06,$04,$46,$0B,$66; RAW DATA : 	line "한발 물러나주마!"



	para $02,$D9,$06,$63,$7F,$04,$48,$02,$3F,$7F,$02,$3F,$07,$8B; RAW DATA : 	para "다시 만날 날을"
	line $01,$B2,$02,$EB,$0A,$6F,$08,$26,$0B,$6A,$0B,$6A; RAW DATA : 	line "기대하지……"
	done

_RocketHideout4BattleText4::
	text $07,$04,$04,$3E,$05,$03,$07,$9C,$09,$9D,$01,$01,$7F,$04,$74,$09,$BB,$0B,$67; RAW DATA : 	text "엘리베이터가 먹통?"
	line $01,$AB,$06,$8A,$7F,$02,$A9,$01,$01,$7F,$07,$04,$03,$E9,$05,$03,$07,$9C,$09,$9D,$09,$80,$04,$36; RAW DATA : 	line "글쎄 누가 엘레베이터키를"
	cont $01,$01,$08,$26,$01,$4D,$7F,$07,$A6,$07,$8B,$01,$BE,$0B,$67; RAW DATA : 	cont "가지고 있을까?"
	done

_RocketHideout4EndBattleText4::
	text $06,$C8,$03,$25,$0B,$66; RAW DATA : 	text "안돼!"
	prompt



_RocketHideout4Text_455ec::
	text $07,$D8,$07,$B5,$0B,$66,$7F,$07,$04,$03,$E9,$05,$03,$07,$9C,$09,$9D,$09,$80,$04,$36; RAW DATA : 	text "젠장! 엘레베이터키를"
	line $03,$83,$06,$EE,$03,$AF,$03,$F1,$7F,$04,$F6,$03,$F8,$07,$AD,$06,$C6,$0B,$66; RAW DATA : 	line "떨어뜨려 버렸잖아!"
	done

 