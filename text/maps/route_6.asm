IF DEF(_YELLOW)
_Route6BattleText1::
	text $05,$B7,$03,$CB,$07,$8B,$7F,$07,$77,$0A,$78,$05,$DD,$0B,$66; RAW DATA : 	text "사랑을 위해서!"
	line $02,$3A,$0A,$71,$09,$A7,$7F,$04,$63,$01,$3C,$03,$36,$0B,$66; RAW DATA : 	line "나한테 맡겨둬!"
	done

 

_Route6EndBattleText1::
	text $07,$9C,$03,$E1,$01,$27,$7F,$01,$48,$05,$BA,$07,$01; RAW DATA : 	text "이런건 계산에"
	line $06,$F8,$06,$FA,$02,$C2,$03,$05,$0B,$6A,$0B,$6A; RAW DATA : 	line "없었는데……"
	prompt


_Route6AfterBattleText1::
	text $02,$4B,$7F,$05,$B7,$03,$CB,$07,$8A,$7F,$01,$46,$04,$8A,$0A,$6F,$04,$87; RAW DATA : 	text "내 사랑은 경멸하며"
	line $02,$3F,$7F,$03,$80,$02,$45,$06,$EE; RAW DATA : 	line "날 떠났어"
	Done

 
_Route6BattleText2::
	text $05,$B7,$03,$CB,$07,$8B,$7F,$07,$77,$0A,$71,$7F,$06,$26,$03,$F3,$08,$0F,$07,$9C,$06,$DF; RAW DATA : 	text "사랑을 위한 수련중이야"
	line $04,$E6,$0A,$78,$0A,$6F,$08,$26,$04,$46,$0B,$66; RAW DATA : 	line "방해하지마!"
	done


_Route6EndBattleText2::
	text $01,$83,$01,$6A,$05,$DD,$07,$01,$7F,$07,$9C,$03,$E1,$01,$27,$0B,$6A,$0B,$6A; RAW DATA : 	text "교과서에 이런건……"
	prompt


_Route6AfterBattleText2::
	text $07,$9C,$07,$D6,$7F,$0A,$27,$09,$2F,$04,$93,$07,$01,$01,$34,$7F,$06,$26,$0A,$70,$01,$68,$06,$64,$07,$9C; RAW DATA : 	text "이제 포켓몬에게 수학공식이"
	line $07,$CB,$07,$4B,$03,$27,$08,$26,$7F,$06,$CA,$02,$C2,$02,$D9,$02,$C2,$7F,$01,$29,$7F,$01,$CA,$02,$DE,$06,$D2,$06,$EE; RAW DATA : 	line "적용되지 않는다는 걸 깨달았어"
	Done

ELSE
_Route6BattleText1::
	text "Who's there?"
	line "Quit listening in"
	cont "on us!"
	done

_Route6EndBattleText1::
	text "I"
	line "just can't win!"
	prompt

_Route6AfterBattleText1::
	text "Whisper..."
	line "whisper..."
	done

_Route6BattleText2::
	text "Excuse me! This"
	line "is a private"
	cont "conversation!"
	done

_Route6EndBattleText2::
	text "Ugh!"
	line "I hate losing!"
	prompt
ENDC

_Route6BattleText3::
	text $07,$CA,$01,$B2,$07,$03,$7F,$04,$FA,$03,$E9,$01,$01; RAW DATA : 	text "저기엔 벌레가"
	line $05,$10,$03,$FE,$7F,$06,$F8,$06,$EE; RAW DATA : 	line "별로 없어"
	Done

 
_Route6EndBattleText3::
	text $06,$C6,$02,$CF,$06,$DF,$0B,$66; RAW DATA : 	text "아니야!"
	line $07,$9C,$03,$E2,$04,$3E,$01,$01,$7F,$06,$F8,$06,$EE,$0B,$66; RAW DATA : 	line "이럴리가 없어!"
	prompt

_Route6AfterBattleText3::
	text $04,$FA,$03,$E9,$7F,$07,$B2,$01,$4D,$7F,$06,$6D,$06,$EE,$05,$DD; RAW DATA : 	text "벌레 잡고 싶어서"
	line $05,$C3,$03,$FF,$06,$33,$07,$88,$03,$FE,$7F,$03,$19,$06,$C6,$01,$01,$02,$C2,$7F,$08,$0F,$07,$9C,$06,$FA,$06,$EE; RAW DATA : 	line "상록숲으로 돌아가는 중이었어"
	Done

_Route6BattleText4::
	text $07,$90,$0B,$67; RAW DATA : 	text "응?"
	line $01,$A7,$02,$69,$7F,$04,$4B,$0A,$6F,$01,$4D,$7F,$06,$6D,$07,$8B,$7F,$05,$A3,$07,$9C,$06,$FA,$02,$D9,$01,$4D,$0B,$67; RAW DATA : 	line "그냥 말하고 싶을 뿐이었다고?"
	done

_Route6EndBattleText4::
	text $02,$4B,$7F,$09,$8F,$07,$8A,$7F,$06,$C6,$02,$CF,$06,$DF,$0B,$66; RAW DATA : 	text "내 탓은 아니야!"
	prompt

_Route6AfterBattleText4::
	text $06,$C8,$07,$CC,$07,$8B,$7F,$07,$77,$0A,$78,$05,$DD; RAW DATA : 	text "안전을 위해서"
	line $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$07,$EB,$7F,$02,$F5,$7F,$04,$49,$07,$9C; RAW DATA : 	line "포켓몬을 좀 더 많이"
	cont $03,$05,$04,$3E,$01,$4D,$7F,$02,$D9,$02,$80,$06,$DF,$7F,$0A,$72,$01,$BE,$05,$21; RAW DATA : 	cont "데리고 다녀야 할까봐"
	Done

_Route6BattleText5::
	text $07,$90,$0B,$67,$7F,$02,$3A,$0B,$67,$7F,$01,$A7,$03,$D1,$0B,$66; RAW DATA : 	text "응? 나? 그래!"
	line $01,$10,$07,$9C,$7F,$02,$8E,$07,$AA,$0B,$66; RAW DATA : 	line "같이 놀자!"
	done

_Route6EndBattleText5::
	text $07,$CC,$0A,$94,$7F,$09,$BB,$0A,$6F,$08,$26,$7F,$06,$CA,$06,$C6,$0B,$66; RAW DATA : 	text "전혀 통하지 않아!"
	prompt



_Route6AfterBattleText5::
	text $02,$3A,$03,$15,$7F,$01,$0D,$0A,$78,$08,$26,$01,$4D,$7F,$06,$6D,$06,$EE,$0B,$66; RAW DATA : 	text "나도 강해지고 싶어!"
	line $02,$77,$7F,$05,$61,$01,$41,$07,$9C,$7F,$04,$B9,$06,$DF,$0B,$67; RAW DATA : 	line "네 비결이 뭐야?"
	done

_Route6BattleText6::
	text $08,$B3,$07,$8D,$7F,$05,$18,$02,$C2,$7F,$06,$F3,$01,$8C,$07,$9E,$03,$05,$0B,$66; RAW DATA : 	text "처음 보는 얼굴인데!"
	line $04,$E8,$09,$E2,$7F,$0A,$72,$7F,$08,$09,$07,$8A,$7F,$06,$C6,$02,$64,$0B,$67; RAW DATA : 	line "배틀 할 줄은 아냐?"
	done

_Route6EndBattleText6::
	text $01,$82,$07,$B5,$0A,$F7,$7F,$07,$AF,$0A,$71,$02,$D9,$0B,$66; RAW DATA : 	text "굉장히 잘한다!"
	prompt

_Route6AfterBattleText6::
	text $02,$4B,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$06,$E0,$0A,$71,$01,$29,$01,$BE; RAW DATA : 	text "내 포켓몬이 약한걸까"
	line $02,$4B,$7F,$06,$67,$03,$F2,$07,$9C,$7F,$02,$3A,$05,$AB,$01,$29,$01,$BE,$0B,$67; RAW DATA : 	line "내 실력이 나쁜걸까?"
	done

 

_Route6Text7::
	text $07,$09,$01,$B2,$05,$DD,$05,$2E,$09,$9D,$7F,$08,$26,$0A,$6F,$09,$BB,$03,$FE; RAW DATA : 	text "여기서부터 지하통로"
	line $05,$4D,$04,$17,$06,$63,$09,$EC,$7F,$0B,$6A,$0B,$6A,$7F,$01,$05,$05,$C6,$06,$63,$09,$EC; RAW DATA : 	line "블루시티 …… 갈색시티"
	done

