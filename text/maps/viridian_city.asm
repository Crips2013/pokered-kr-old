_ViridianCityText_19219::
	text $07,$D6,$07,$9F,$7F,$08,$0F,$07,$44,$0A,$71,$01,$27; RAW DATA : 	text "제일 중요한건"
	line $06,$DF,$05,$CD,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$06,$E0,$0A,$6F,$01,$34,$7F,$04,$48,$03,$47,$02,$D9,$0B,$66; RAW DATA : 	line "야생 포켓몬을 약하게 만든다!"
	done

_ViridianCityText_1920a::
	text $07,$9C,$06,$DF,$0B,$68; RAW DATA : 	text "이야-"
	line $06,$2A,$07,$9C,$7F,$01,$CA,$02,$CF,$7F,$01,$B2,$05,$30,$07,$9C,$7F,$07,$F1,$01,$88,$02,$3A,$0B,$66; RAW DATA : 	line "술이 깨니 기분이 좋구나!"

	para $07,$F1,$06,$C6,$0B,$66; RAW DATA : 	para "좋아!"
	line $08,$26,$02,$3A,$01,$01,$03,$15,$7F,$07,$F1,$02,$DC,$02,$D9,$0B,$66; RAW DATA : 	line "지나가도 좋단다!"

IF DEF(_YELLOW)
	para $02,$6A,$04,$36,$7F,$04,$E6,$0A,$78,$0A,$71,$01,$27; RAW DATA : 	para "너를 방해한건"
	line $04,$CC,$06,$C8,$0A,$6F,$02,$D9,$0B,$66; RAW DATA : 	line "미안하다!"

	para $02,$77,$01,$01,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$03,$15,$01,$08,$07,$8B; RAW DATA : 	para "네가 포켓몬 도감을"
	line $05,$B7,$07,$4B,$0A,$6F,$02,$C2,$01,$29,$7F,$05,$23,$02,$DC,$02,$D9; RAW DATA : 	line "사용하는걸 봤단다"

	para $05,$B7,$01,$6A,$07,$97,$7F,$07,$97,$04,$CC,$03,$FE,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$06,$EE,$03,$81,$01,$34; RAW DATA : 	para "사과의 의미로 포켓몬을 어떡게"
	line $07,$B2,$02,$C2,$08,$26,$7F,$05,$18,$07,$09,$08,$06,$03,$15,$03,$FF,$7F,$0A,$6F,$04,$46; RAW DATA : 	line "잡는지 보여주도록 하마"
	done
	
ELSE
	para "Are you in a"
	line "hurry?"
	done
ENDC

_ViridianCityText_1920f::
	text $02,$77,$01,$01,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$03,$15,$01,$08,$07,$8B; RAW DATA : 	para "네가 포켓몬 도감을"
	line $05,$B7,$07,$4B,$0A,$6F,$02,$C2,$01,$29,$7F,$05,$23,$02,$DC,$02,$D9; RAW DATA : 	line "사용하는걸 봤단다"

	para "When you catch a"
	line "#MON, #DEX"
	cont "is automatically"
	cont "updated."

	para "What? Don't you"
	line "know how to catch"
	cont "#MON?"

	para "I'll show you"
	line "how to then."
	done
IF DEF(_YELLOW)
_OldManTextAfterBattle::
	text $07,$15,$7F,$07,$F1,$08,$26,$7F,$06,$CA,$01,$88,$04,$48,$0B,$66; RAW DATA : 	text "영 좋지 않구만!"
	line $02,$4B,$7F,$09,$21,$03,$60,$05,$F7,$07,$9C,$7F,$01,$FE,$07,$9C,$03,$FE,$01,$8A; RAW DATA : 	line "내 컨디션이 꽝이로군"

	para $02,$3A,$03,$15,$7F,$04,$93,$06,$4A,$09,$9D,$05,$1C,$07,$9C; RAW DATA : 	para "나도 몬스터볼이"
	line $03,$6C,$7F,$03,$83,$06,$EE,$07,$E3,$01,$88,$02,$3A; RAW DATA : 	line "딱 떨어졌구나"

	para $0A,$61,$03,$EB,$03,$49,$04,$3E,$06,$23,$07,$01,$05,$DD; RAW DATA : 	para "프렌들리숍에서"
	line $07,$EB,$7F,$05,$B7,$07,$2D,$06,$DF,$01,$3A,$01,$88,$02,$3A; RAW DATA : 	line "좀 사와야겠구나"
	done
ENDC

_ViridianCityText1::
	text $04,$93,$06,$4A,$09,$9D,$05,$1C,$07,$8B,$7F,$06,$81,$05,$DD; RAW DATA : 	text "몬스터볼을 써서"
	line $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$07,$B2,$06,$D2,$01,$88,$02,$3A,$0B,$66; RAW DATA : 	line "포켓몬을 잡았구나!"

	para $07,$9C,$01,$34,$7F,$08,$9C,$7F,$02,$EB,$02,$DC,$0A,$71,$01,$34; RAW DATA : 	para "이게 참 대단한게"
	line $07,$9C,$01,$29,$7F,$09,$BB,$0A,$78,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B; RAW DATA : 	line "이걸 통해 포켓몬을"
	cont $06,$B5,$7F,$06,$26,$7F,$07,$A6,$02,$C2,$7F,$01,$25,$03,$C5,$02,$D9,$0B,$66; RAW DATA : 	cont "쓸 수 있는 거란다!"
	done

_ViridianCityText_19122::
	text $07,$9C,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$08,$BC,$07,$80,$01,$6C,$07,$8A; RAW DATA : 	text "이 포켓몬 체육관은"
	line $06,$F0,$07,$D6,$02,$3A,$7F,$02,$DD,$0A,$94,$07,$A6,$06,$EE,$0B,$6C; RAW DATA : 	line "언제나 닫혀있어."

	para $01,$6C,$07,$B5,$07,$8A,$7F,$02,$EB,$08,$BC; RAW DATA : 	para "관장은 대체"
	line $06,$EE,$03,$82,$05,$B7,$03,$C7,$07,$9F,$01,$BE,$0B,$67; RAW DATA : 	line "어떤사람일까?"
	done

_ViridianCityText_19127::
	text $05,$C3,$03,$FF,$06,$63,$09,$EC,$7F,$08,$BC,$07,$80,$01,$6C,$7F,$01,$6C,$07,$B5,$07,$9C; RAW DATA : 	text "상록시티 체육관 관장이"
	line $03,$19,$06,$C6,$07,$34,$06,$EE,$0B,$66; RAW DATA : 	line "돌아왔어!"
	done

_ViridianCityText_1914d::
	text $06,$D6,$04,$FA,$03,$E9,$7F,$0A,$27,$09,$2F,$04,$93; RAW DATA : 	text "애벌레 포켓몬"
	line $F8,$07,$EE,$04,$29,$04,$36,$7F,$06,$CB,$01,$4D,$06,$6D,$02,$CF,$0B,$67; RAW DATA : 	line "2종류를 알고싶니?"
	done

_ViridianCityText_19152::
	text $07,$F1,$06,$C6,$7F,$01,$A7,$03,$DF,$04,$89,$0B,$66; RAW DATA : 	text "좋아 그러면!"
	done

_ViridianCityText_19157::
	text $09,$13,$09,$9D,$0A,$67,$0A,$71,$09,$A7,$02,$C2; RAW DATA : 	text "캐터피한테는"
	line $03,$16,$07,$9C,$7F,$06,$F8,$02,$C2,$03,$05; RAW DATA : 	line "독이 없는데"
	cont $05,$A4,$08,$E6,$07,$9C,$02,$C2,$7F,$07,$A6,$02,$DC,$02,$D9; RAW DATA : 	cont "뿔충이는 있단다"

	para $01,$22,$02,$77,$7F,$03,$16,$09,$07,$07,$8A; RAW DATA : 	para "걔네 독침은"
	line $07,$E6,$06,$69,$0A,$78,$06,$DF,$03,$25,$0B,$66; RAW DATA : 	line "조심해야돼!"
	done

_ViridianCityText_19175::
	text $06,$C6,$07,$9C,$01,$4D,$7F,$0A,$72,$06,$C6,$04,$F6,$08,$26,$0B,$66; RAW DATA : 	text "아이고 할아버지!"
	line $07,$09,$01,$B2,$05,$DD,$7F,$07,$9C,$03,$DF,$06,$63,$04,$89,$7F,$04,$CE,$0A,$23,$03,$C3,$01,$4D,$07,$44,$0B,$66; RAW DATA : 	line "여기서 이러시면 민폐라고요!"
	cont $04,$CC,$06,$C8,$0A,$78,$7F; RAW DATA : 	cont "미안해 "
	cont $0A,$72,$06,$C6,$04,$F6,$08,$26,$01,$01,$7F,$06,$2A,$07,$01,$7F,$08,$EB,$0A,$6F,$05,$F5,$05,$DD; RAW DATA : 	cont "할아버지가 술에 취하셔서"
	done

_ViridianCityText_1917a::
	text $0A,$B8,$05,$C6,$06,$63,$09,$EC,$07,$01,$7F,$07,$A6,$02,$C2; RAW DATA : 	text "회색시티에 있는"
	line $0A,$61,$03,$EB,$03,$49,$04,$3E,$06,$23,$07,$01,$7F,$01,$01,$03,$F1,$04,$89; RAW DATA : 	line "프렌들리숍에 가려면"
	cont $05,$C3,$03,$FF,$06,$33,$07,$8B,$7F,$01,$25,$08,$C4,$01,$01,$06,$DF,$03,$27; RAW DATA : 	cont "상록숲을 거쳐가야되"
	done

_ViridianCityText_19191::
	text $07,$09,$01,$B4,$7F,$08,$26,$02,$3A,$01,$05,$06,$26; RAW DATA : 	text "여긴 지나갈수"
	line $06,$F8,$06,$EE,$0B,$66; RAW DATA : 	line "없어!"

	para $07,$9C,$08,$6A,$07,$8A; RAW DATA : 	para "이쪽은"
	line $02,$4B,$7F,$03,$75,$07,$9C,$03,$C3,$01,$4D,$0B,$66; RAW DATA : 	line "내 땅이라고!"
	done

_ViridianCityText_191ca::
	text $0A,$E5,$06,$C6,$0A,$74,$0B,$66; RAW DATA : 	text "흐아함!"
	line $02,$3D,$7F,$0A,$78,$01,$01,$7F,$03,$80,$07,$A6,$07,$8B,$03,$77; RAW DATA : 	line "난 해가 떠있을때"
	cont $07,$B1,$07,$8B,$7F,$07,$AA,$06,$DF,$0A,$78; RAW DATA : 	cont "잠을 자야해"

	para $06,$4D,$04,$3E,$0A,$61,$01,$01,$7F,$02,$4B,$7F,$02,$0E,$07,$8B,$7F,$04,$74,$02,$C2; RAW DATA : 	para "슬리프가 내 꿈을 먹는"
	line $02,$0E,$07,$8B,$7F,$02,$15,$06,$EE; RAW DATA : 	line "꿈을 꿨어"
	cont $04,$B9,$06,$DF,$7F,$07,$9C,$01,$27,$0B,$67; RAW DATA : 	cont "뭐야 이건?"
	cont $07,$9C,$01,$34,$7F,$06,$EE,$03,$60,$05,$DD,$7F,$09,$D2,$06,$EE,$02,$3A,$07,$22; RAW DATA : 	cont "이게 어디서 튀어나온"
	cont $01,$B2,$06,$2A,$04,$73,$06,$65,$07,$9C,$08,$26,$0B,$67; RAW DATA : 	cont "기술머신이지?"

	para $06,$02,$04,$37,$03,$18,$06,$C6,$0B,$66; RAW DATA : 	para "소름돋아!"
	line $07,$9C,$7F,$01,$B2,$06,$2A,$04,$73,$06,$65,$7F,$02,$77,$01,$01,$7F,$01,$01,$07,$DE,$0B,$66; RAW DATA : 	line "이 기술머신 네가 가져!"
	prompt

_ReceivedTM42Text::
	text $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52, "는(은)"
	line $01,$B2,$06,$2A,$04,$73,$06,$65,$FA,$F8,$07,$8B,$7F,$06,$F2,$06,$FA,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	line "기술머신42을 얻었다!@@"

_TM42Explanation::
	text $01,$B2,$06,$2A,$04,$73,$06,$65,$FA,$F8,$07,$01,$7F,$03,$47,$01,$27; RAW DATA : 	text "기술머신42에 든건"
	line $02,$0E,$04,$74,$01,$B2,$0B,$6A,$0B,$6A; RAW DATA : 	line "꿈먹기……"
	cont $0B,$6A,$0B,$6A,$03,$45,$04,$33,$03,$E7,$0B,$6A,$0B,$6A; RAW DATA : 	cont "……드르렁……"
	done

_TM42NoRoomText::
	text $07,$9C,$7F,$07,$9C,$05,$C3,$7F,$03,$49,$7F,$06,$26,$7F,$06,$F8,$06,$EE,$0B,$66; RAW DATA : 	text "이 이상 들 수 없어!"
	done


IF DEF(_YELLOW)
_OldManAgainText1::
	text $07,$90,$0B,$67; RAW DATA : 	text "응?"
	line $0A,$27,$09,$2F,$04,$93,$7F,$06,$EE,$03,$81,$01,$34,$7F,$07,$B2,$02,$C2,$08,$26; RAW DATA : 	line "포켓몬 어떡게 잡는지"
	cont $02,$D9,$06,$63,$7F,$05,$18,$07,$09,$02,$DE,$03,$C3,$01,$4D,$0B,$67; RAW DATA : 	cont "다시 보여달라고?"
	done

_OldManAgainText2::
	text $06,$EE,$07,$9C,$7F,$01,$EF,$04,$46,$06,$DF,$0B,$66; RAW DATA : 	text "어이 꼬마야!"
	line $02,$4B,$01,$01,$7F,$0A,$6F,$02,$C2,$01,$29,$7F,$01,$01,$01,$BE,$07,$9C,$05,$DD,$7F,$05,$18,$03,$F1,$04,$AB,$02,$3A,$0B,$66; RAW DATA : 	line "내가 하는걸 가까이서 보려무나!"
	done

_OldManAgainText3::
	text $0A,$6F,$07,$9C,$01,$4D,$0B,$6A,$0B,$6A; RAW DATA : 	text "하이고……"
	line $02,$6A,$0A,$71,$09,$A7,$7F,$02,$F5,$7F,$01,$01,$04,$33,$09,$05,$01,$34,$7F,$06,$F8,$02,$DC,$02,$D9; RAW DATA : 	line "너한테 더 가르칠게 없단다"
	done

ELSE
_ViridianCityText_19214::
	text "Time is money..."
	line "Go along then."
	done

ENDC

_ViridianCityText8::
	text $07,$9C,$01,$67,$07,$8A,$7F,$05,$C3,$03,$FF,$06,$63,$09,$EC; RAW DATA : 	text "이곳은 상록시티"
	line $05,$C3,$03,$FF,$07,$8A,$7F,$02,$8C,$05,$C6,$7F,$07,$15,$07,$68,$0A,$71,$7F,$05,$C6,$01,$C2; RAW DATA : 	line "상록은 녹색 영원한 색깔"
	done
;출처 포켓몬 위키
_ViridianCityText9::
	text $0B,$6A,$0B,$6A,$7F,$03,$46,$07,$9C,$7F,$03,$27,$02,$C2,$7F,$01,$34,$06,$63,$09,$F7,$0B,$66; RAW DATA : 	text "…… 득이 되는 게시판!"

	para $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$07,$B2,$06,$C6,$05,$DD; RAW DATA : 	para "포켓몬을 잡아서"
	line $09,$F4,$09,$EC,$04,$36,$7F,$02,$C3,$03,$F1,$05,$18,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	line "파티를 늘려보세요!"

	para $04,$49,$07,$9C,$7F,$07,$B2,$07,$8B,$06,$26,$03,$FF; RAW DATA : 	para "많이 잡을수록"
	line $04,$E8,$09,$E2,$07,$8B,$7F,$07,$B7,$04,$CC,$07,$A6,$01,$34,$7F,$0A,$78,$08,$0D,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "배틀을 재미있게 해줍니다!"
	done

_ViridianCityText10::
	text $0B,$6A,$0B,$6A,$7F,$03,$46,$07,$9C,$7F,$03,$27,$02,$C2,$7F,$01,$34,$06,$63,$09,$F7,$0B,$66; RAW DATA : 	text "…… 득이 되는 게시판!"

	para $0A,$27,$09,$2F,$04,$93,$07,$97,$7F,$01,$B2,$06,$2A,$07,$8A,$7F,$8F,$8F,$03,$C3,$02,$C2; RAW DATA : 	para "포켓몬의 기술은 PP라는"
	line $0A,$BD,$06,$26,$7F,$07,$D6,$0A,$71,$07,$9C,$7F,$07,$E8,$07,$B7,$0A,$75,$02,$CF,$02,$D9; RAW DATA : 	line "횟수 제한이 존재합니다"

	para $8F,$8F,$04,$36,$7F,$05,$18,$08,$E6,$0A,$6F,$01,$B2,$7F,$07,$77,$0A,$78,$05,$DD,$02,$C2,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B; RAW DATA : 	para "PP를 보충하기 위해서는 포켓몬을"
	line $0A,$27,$09,$2F,$04,$93,$7F,$05,$EE,$09,$9D,$03,$FE,$7F,$03,$05,$03,$F1,$01,$01,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	line "포켓몬 센터로 데려가세요!"
	done

_ViridianCityText13::
	text $05,$C3,$03,$FF,$06,$63,$09,$EC,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$08,$BC,$07,$80,$01,$6C; RAW DATA : 	text "상록시티 포켓몬 체육관"
	line $01,$6C,$07,$B5,$7F,$0B,$6A,$0B,$6A; RAW DATA : 	line "관장 ……"
	cont $02,$D9,$07,$8D,$07,$8A,$7F,$01,$AB,$07,$8B,$7F,$07,$A0,$07,$8B,$7F,$06,$26,$7F,$06,$F8,$02,$D9,$0B,$66; RAW DATA : 	cont "다음은 글을 읽을 수 없다!"
	done

_ViridianCityText14::
	text $08,$BC,$07,$80,$01,$6C,$7F,$04,$AE,$07,$9C; RAW DATA : 	text "체육관 문이"
	line $07,$B1,$01,$3C,$07,$A6,$02,$D9,$0B,$6A,$0B,$6A; RAW DATA : 	line "잠겨있다……"
	done
