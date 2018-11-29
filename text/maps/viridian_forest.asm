_ViridianForestText1::
	text $09,$03,$01,$88,$03,$49,$0A,$6F,$01,$4D,$7F,$01,$10,$07,$9C,$7F,$07,$34,$06,$EE,$0B,$66; RAW DATA : 	text "친구들하고 같이 왔어!"

	para $01,$22,$03,$49,$07,$9C,$7F,$07,$68,$0A,$6F,$02,$C2,$01,$27; RAW DATA : 	para "걔들이 원하는건"
	line $0A,$27,$09,$2F,$04,$93,$7F,$04,$E8,$09,$E2,$07,$9C,$06,$DF,$0B,$66; RAW DATA : 	line "포켓몬 배틀이야!"
	done

_ViridianForestBattleText1::
	text $07,$9C,$05,$21,$0B,$66,$7F,$02,$FD,$05,$0D,$0B,$66; RAW DATA : 	text "이봐! 덤벼!"
	line $0A,$27,$09,$2F,$04,$93,$7F,$01,$01,$08,$26,$01,$4D,$7F,$07,$A6,$08,$26,$0B,$66; RAW DATA : 	line "포켓몬 가지고 있지!"
	cont $0A,$27,$09,$2F,$04,$93,$7F,$04,$E8,$09,$E2,$05,$A3,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	cont "포켓몬 배틀뿐이다!"
	done

_ViridianForestEndBattleText1::
	text $06,$C8,$03,$25,$0B,$66,$7F,$09,$13,$09,$9D,$0A,$67,$02,$C2; RAW DATA : 	text "안돼! 캐터피는"
	line $01,$A7,$01,$25,$7F,$04,$98,$7F,$07,$AA,$04,$35,$02,$D9,$01,$4D,$0B,$66; RAW DATA : 	line "그거 못 자른다고!"
	prompt

_ViridianFrstAfterBattleText1::
	text $06,$3C,$07,$A5,$0B,$66,$7F,$02,$6A,$03,$77,$04,$AE,$07,$01,$7F,$04,$FA,$03,$E9,$03,$49,$07,$9C; RAW DATA : 	text "쉬잇! 너때문에 벌레들이"
	line $01,$2C,$04,$74,$01,$4D,$7F,$02,$DE,$06,$C6,$02,$3A,$07,$AD,$06,$C6,$0B,$66; RAW DATA : 	line "겁먹고 달아나잖아!"
	done

_ViridianForestBattleText2::
	text $06,$EE,$07,$9C,$0B,$66,$7F,$02,$6A,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$08,$26,$0B,$66; RAW DATA : 	text "어이! 너 포켓몬 트레이너지!"
	line $01,$A7,$03,$E3,$7F,$03,$15,$04,$61,$7F,$04,$98,$09,$05,$08,$09,$7F,$06,$CB,$06,$C6,$0B,$66; RAW DATA : 	line "그럼 도망 못칠줄 알아!"
	done


_ViridianForestEndBattleText2::
	text $06,$EE,$03,$C3,$0B,$67; RAW DATA : 	text "어라?"
	line $0A,$27,$09,$2F,$04,$93,$7F,$02,$D9,$7F,$06,$88,$07,$AD,$06,$C6,$0B,$67; RAW DATA : 	line "포켓몬 다 썼잖아?"
	prompt

_ViridianFrstAfterBattleText2::
	text $07,$D8,$07,$B5,$0B,$66; RAW DATA : 	text "젠장!"
	line $07,$EB,$02,$F5,$7F,$01,$0D,$0A,$71,$01,$29,$03,$FE,$7F,$07,$B2,$06,$C6,$06,$DF,$7F,$0A,$7F,$06,$EE,$0B,$66; RAW DATA : 	line "좀더 강한걸로 잡아야 했어!"
	done

_ViridianForestBattleText3::
	text $06,$EE,$07,$9C,$7F,$01,$B2,$02,$D9,$03,$F1,$05,$21,$0B,$66; RAW DATA : 	text "어이 기다려봐!"
	line $04,$B9,$01,$01,$7F,$01,$A7,$03,$E8,$01,$34,$7F,$01,$AE,$0A,$78,$0B,$67; RAW DATA : 	line "뭐가 그렇게 급해?"
	done

_ViridianForestEndBattleText3::
	text $0A,$27,$01,$B2,$0A,$72,$03,$D1,$0B,$66; RAW DATA : 	text "포기할래!"
	line $02,$6A,$7F,$04,$E8,$09,$E2,$7F,$07,$AF,$7F,$0A,$6F,$02,$77,$0B,$66; RAW DATA : 	line "너 배틀 잘 하네!"
	prompt

_ViridianFrstAfterBattleText3::
	text $01,$01,$01,$AD,$06,$BF,$7F,$03,$75,$07,$01,$05,$DD,$7F,$04,$B0,$01,$27,$07,$8B; RAW DATA : 	text "가금씩 땅에서 물건을"
	line $08,$A3,$07,$8B,$06,$26,$7F,$07,$A6,$06,$EE,$0B,$66; RAW DATA : 	line "찾을수 있어!"

	para $02,$4B,$01,$01,$7F,$08,$26,$01,$AD,$7F,$08,$A3,$01,$4D,$7F,$07,$A6,$02,$C2,$01,$27; RAW DATA : 	para "내가 지금 찾고 있는건"
	line $02,$4B,$01,$01,$7F,$0A,$EA,$04,$40,$7F,$04,$B0,$01,$27,$07,$9C,$06,$DF,$0B,$66; RAW DATA : 	line "내가 흘린 물건이야!"
	done

IF DEF(_YELLOW)
_ViridianForestBattleTextPikaGirl::
	text $06,$C8,$02,$87,$7F,$02,$6A,$7F,$0A,$67,$09,$0B,$08,$F2; RAW DATA : 	text "안녕 너 피카츄"
	line $01,$01,$08,$26,$01,$4D,$7F,$07,$A6,$02,$CF,$0B,$67; RAW DATA : 	line "가지고 있니?"
	done

_ViridianForestEndBattleTextPikaGirl::
	text $07,$88,$06,$C7,$0B,$66; RAW DATA : 	text "으악!"
	line $07,$9C,$01,$34,$7F,$06,$67,$07,$D6,$05,$C3,$0A,$B2,$07,$9C,$03,$C3,$01,$4D,$0B,$67; RAW DATA : 	line "이게 실제상황이라고?"
	prompt

_ViridianForestAfterBattleTextPikaGirl::
	text $01,$48,$06,$03,$7F,$08,$A3,$06,$C6,$05,$23,$08,$26,$04,$48,$7F,$07,$09,$01,$B2,$05,$DD; RAW DATA : 	text "계속 찾아봤지만 여기서"
	line $0A,$67,$09,$0B,$08,$F2,$02,$C2,$7F,$01,$A7,$04,$42,$07,$AA,$03,$15,$7F,$04,$98,$7F,$05,$23,$06,$EE,$0B,$66; RAW DATA : 	line "피카츄는 그림자도 못 봤어!"
	done

_ViridianForestBattleTextSamurai::
	text $02,$3D,$7F,$08,$D6,$01,$4D,$07,$97,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$01,$01,$7F,$03,$29,$01,$25,$06,$DF; RAW DATA : 	text "난 최고의 트레이너가 될거야"
	line $01,$A7,$03,$DF,$02,$CF,$01,$C1,$7F,$02,$6A,$02,$C2,$7F,$02,$3A,$0A,$71,$09,$A7,$7F,$04,$98,$7F,$07,$9C,$01,$3C,$0B,$66; RAW DATA : 	line "그러니깐 너는 나한테 못 이겨!"
	done

_ViridianForestEndBattleTextSamurai::
	text $02,$3A,$03,$FE,$06,$83; RAW DATA : 	text "나로썬"
	line $04,$90,$03,$47,$01,$29,$7F,$02,$D9,$7F,$0A,$7F,$06,$EE,$0B,$6A,$0B,$6A; RAW DATA : 	line "모든걸 다 했어……"
	prompt

_ViridianForestAfterBattleTextSamurai::
	text $02,$DC,$03,$05,$01,$B2,$01,$01,$7F,$04,$7A,$08,$28,$01,$34; RAW DATA : 	text "단데기가 멋진게"
	line $01,$68,$01,$3D,$07,$9C,$7F,$01,$60,$7F,$04,$E6,$06,$EE,$01,$01,$7F,$03,$27,$07,$AD,$06,$C6,$0B,$66; RAW DATA : 	line "공격이 곧 방어가 되잖아!"
	done

ENDC

_ViridianForestText8::
	text $0A,$27,$09,$2F,$04,$93,$7F,$07,$B2,$02,$C0,$03,$C3,$01,$4D; RAW DATA : 	text "포켓몬 잡느라고"
	line $04,$93,$06,$4A,$09,$9D,$05,$1C,$07,$8B,$7F,$07,$CC,$05,$2E,$7F,$02,$D9,$06,$88,$06,$EE,$0B,$66; RAW DATA : 	line "몬스터볼을 전부 다썼어!"

	para $07,$09,$05,$30,$07,$8B,$7F,$01,$01,$08,$26,$01,$4D,$7F,$02,$D9,$02,$CF,$02,$C2,$01,$34; RAW DATA : 	para "여분을 가지고 다니는게"
	line $07,$F1,$07,$8B,$01,$29,$0B,$66; RAW DATA : 	line "좋을걸!"
	done

_ViridianForestText9::
	text $0B,$6A,$0B,$6A,$03,$46,$07,$9C,$7F,$03,$27,$02,$C2,$7F,$01,$34,$06,$63,$09,$F7,$0B,$66; RAW DATA : 	text "……득이 되는 게시판!"

	para $04,$E8,$09,$E2,$07,$8B,$7F,$0A,$67,$0A,$6F,$01,$4D,$7F,$06,$6D,$07,$88,$04,$89; RAW DATA : 	para "배틀을 피하고 싶으면"
	line $0A,$3E,$04,$E7,$07,$01,$7F,$03,$83,$06,$EE,$07,$DE,$05,$DD,$7F,$01,$01,$04,$89,$7F,$03,$2B,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "풀밭에 떨어져서 가면 됩니다!"
	done

_ViridianForestText10::
	text $03,$16,$07,$01,$7F,$01,$29,$04,$3E,$04,$89; RAW DATA : 	text "독에 걸리면"
	line $0A,$78,$03,$16,$07,$D6,$04,$36,$7F,$06,$81,$0B,$66; RAW DATA : 	line "해독제를 써!"
	cont $0A,$61,$03,$EB,$03,$49,$04,$3E,$06,$23,$07,$01,$05,$DD,$7F,$09,$F8,$06,$C6,$0B,$66; RAW DATA : 	cont "프렌들리숍에서 팔아!"
	done

_ViridianForestText11::
	text $0B,$6A,$0B,$6A,$03,$46,$07,$9C,$7F,$03,$27,$02,$C2,$7F,$01,$34,$06,$63,$09,$F7,$0B,$66; RAW DATA : 	text "……득이 되는 게시판!"

	para $09,$24,$0A,$4B,$09,$9D,$04,$36,$7F,$09,$BB,$0A,$78,$7F,$07,$20,$04,$DA,$05,$B7,$07,$2D,$7F,$07,$0C,$03,$C4,$0A,$78,$05,$DD; RAW DATA : 	para "컴퓨터를 통해 오박사와 연락해서"
	line $0A,$27,$09,$2F,$04,$93,$7F,$03,$15,$01,$08,$07,$8B,$7F,$0A,$22,$01,$01,$04,$DE,$07,$88,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	line "포켓몬 도감을 평가받으세요!"
	done

_ViridianForestText12::
	text $0B,$6A,$0B,$6A,$03,$46,$07,$9C,$7F,$03,$27,$02,$C2,$7F,$01,$34,$06,$63,$09,$F7,$0B,$66; RAW DATA : 	text "……득이 되는 게시판!"

	para $02,$D9,$04,$35,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$07,$01,$01,$34,$05,$DD; RAW DATA : 	para "다른 트레이너에게서"
	line $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$0A,$C9,$09,$05,$06,$26,$7F,$06,$F8,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "포켓몬을 훔칠수 없습니다!"
	cont $07,$20,$08,$27,$7F,$06,$DF,$05,$CD,$7F,$0A,$27,$09,$2F,$04,$93,$04,$48,$07,$9C; RAW DATA : 	cont "오직 야생 포켓몬만이"
	cont $0A,$27,$0A,$B9,$07,$9C,$7F,$01,$01,$02,$C9,$0A,$75,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	cont "포획이 가능합니다!"
	done

_ViridianForestText13::
	text $0B,$6A,$0B,$6A,$03,$46,$07,$9C,$7F,$03,$27,$02,$C2,$7F,$01,$34,$06,$63,$09,$F7,$0B,$66; RAW DATA : 	text "……득이 되는 게시판!"

	para $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$07,$B2,$01,$B2,$07,$CC,$7F,$08,$BC,$03,$F2,$07,$8B; RAW DATA : 	para "포켓몬을 잡기전 체력을"
	line $03,$83,$06,$EE,$03,$AF,$04,$3E,$01,$4D,$7F,$06,$63,$03,$15,$0A,$6F,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	line "떨어뜨리고 시도하세요!"

	para $08,$BC,$03,$F2,$07,$9C,$7F,$06,$7F,$06,$7F,$0A,$6F,$04,$89; RAW DATA : 	para "체력이 쌩쌩하면"
	line $09,$8B,$08,$E2,$0A,$72,$06,$26,$03,$15,$7F,$07,$A6,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "탈출할수도 있습니다!"
	done

_ViridianForestText14::
	text $07,$09,$01,$B2,$02,$C2,$7F,$05,$C3,$03,$FF,$06,$33; RAW DATA : 	text "여기는 상록숲"
	line $0A,$B8,$05,$C6,$06,$63,$09,$EC,$03,$FE,$7F,$01,$01,$02,$C2,$7F,$01,$B6; RAW DATA : 	line "회색시티로 가는 길"
	done
