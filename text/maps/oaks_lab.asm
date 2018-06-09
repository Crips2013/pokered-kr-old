_OaksLabGaryText1::
	text $53,$0B,$62,$06,$EE,$07,$9C,$7F; RAW DATA : 	text $53,"『어이 "
	db $52,$0B,$66; RAW DATA : 	db $52,"!"
	line $0A,$72,$06,$C6,$04,$F6,$08,$26,$02,$C2,$7F,$07,$09,$01,$B2,$7F,$06,$C8,$7F,$01,$48,$05,$F5,$0B,$66; RAW DATA : 	line "할아버지는 여기 안 계셔!"
IF DEF(_YELLOW)
	para $02,$3A,$0A,$71,$09,$A7,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$08,$06,$06,$65,$02,$D9,$01,$4D,$7F,$0A,$6F,$05,$F5,$05,$DD; RAW DATA : 	para "나한테 포켓몬을 주신다고 하셔서"
	line $02,$DE,$03,$F1,$02,$3A,$07,$34,$02,$C2,$03,$05,$7F,$04,$4B,$07,$9C,$06,$DF; RAW DATA : 	line "달려나왔는데 말이야"
ENDC
	done

_OaksLabText40::
IF DEF(_YELLOW)
	text $53,$0B,$62,$0A,$EF,$0B,$66; RAW DATA : 	text $53,"『흥!"
	line $02,$4B,$01,$01,$7F,$02,$F5,$07,$F1,$07,$8A,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$01,$01,$08,$2A,$01,$25,$06,$DF,$0B,$66; RAW DATA : 	line "내가 더좋은 포켓몬을 가질거야!"
ELSE
	text "<RIVAL>: Heh, I"
	line "don't need to be"
	cont "greedy like you!"

	para "Go ahead and"
	line "choose, <PLAYER>!"
ENDC
	done

_OaksLabText41::
IF DEF(_YELLOW)
	text $53,$0B,$62,$0A,$8C,$07,$01,$0B,$68; RAW DATA : 	text $53,"『헤에-"
	line $02,$4B,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C; RAW DATA : 	line "내 포켓몬이"
	cont $04,$8E,$04,$E8,$02,$C2,$7F,$02,$F5,$7F,$06,$8A,$05,$18,$07,$9C,$02,$C2,$01,$29; RAW DATA : 	cont "몇배는 더 쎄보이는걸"
ELSE
	text $53,$0B,$62,$02,$4B,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C; RAW DATA : 	text $53,"『내 포켓몬이"
	line $04,$8E,$04,$E8,$02,$C2,$7F,$02,$F5,$7F,$06,$8A,$05,$18,$07,$9C,$02,$C2,$01,$29;line "몇배는 더 쎄보이는걸"
ENDC
	done

_OaksLabText39::
IF DEF(_YELLOW)
	text $0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$03,$49,$06,$EE,$07,$A6,$02,$C2; RAW DATA : 	text "포켓몬이 들어있는"
	line $04,$93,$06,$4A,$09,$9D,$7F,$05,$1C,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	line "몬스터 볼이다!"
ELSE
	text "Those are #"
	line "BALLs. They"
	cont "contain #MON!"
ENDC
	done
IF DEF(_YELLOW)
_OaksLabPikachuText::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$04,$DE,$07,$88,$03,$F5,$0B,$66; RAW DATA : 	text "오박사『받으렴!"
	line $07,$9C,$01,$27,$7F,$02,$77,$01,$2D,$07,$9C,$03,$C5,$02,$D9,$0B,$66; RAW DATA : 	line "이건 네것이란다!"
	done

ELSE
_OaksLabCharmanderText::
	text "So! You want the"
	line "fire #MON,"
	cont "CHARMANDER?"
	done

_OaksLabSquirtleText::
	text "So! You want the"
	line "water #MON,"
	cont "SQUIRTLE?"
	done

_OaksLabBulbasaurText::
	text "So! You want the"
	line "plant #MON,"
	cont "BULBASAUR?"
	done

_OaksLabMonEnergeticText::
	text "This #MON is"
	line "really energetic!"
	prompt

_OaksLabReceivedMonText::
	text "<PLAYER> received"
	line "a @"
	TX_RAM wcd6d
	text "!@@"

_OaksLabLastMonText::
	text "That's PROF.OAK's"
	line "last #MON!"
	done

_OaksLabText_1d2f0::
	text "OAK: Now, <PLAYER>,"
	line "which #MON do"
	cont "you want?"
	done
ENDC
_OaksLabText_1d2f5::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$06,$DF,$05,$CD,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$02,$3A,$09,$88,$02,$3D,$02,$D9,$04,$89; RAW DATA : 	text "오박사『야생 포켓몬이 나타난다면"
	line $02,$77,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$02,$EB,$06,$65,$7F,$06,$6E,$07,$66,$08,$09,$01,$25,$03,$C5,$02,$D9,$0B,$66; RAW DATA : 	line "네 포켓몬이 대신 싸워줄거란다!"
IF DEF(_YELLOW)
	para $02,$3A,$08,$0F,$07,$01,$7F,$02,$D9,$07,$8D,$7F,$04,$46,$07,$8B,$03,$FE; RAW DATA : 	para "나중에 다음 마을로"
	line $08,$E2,$04,$DF,$0A,$6F,$03,$F5; RAW DATA : 	line "출발하렴"
ENDC
	done

_OaksLabText_1d2fa::
IF DEF(_YELLOW)
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$0A,$71,$04,$F8,$7F,$04,$4B,$07,$8B,$7F,$01,$29,$06,$EE,$05,$21,$05,$DD; RAW DATA : 	text "오박사『한번 말을 걸어봐서"
	line $01,$B2,$05,$30,$07,$9C,$7F,$06,$EE,$03,$82,$08,$26,$7F,$0A,$AE,$07,$9E,$0A,$78,$05,$18,$03,$F5; RAW DATA : 	line "기분이 어떤지 확인해보렴"
ELSE
	text "OAK: <PLAYER>,"
	line "raise your young"
	cont "#MON by making"
	cont "it fight!"

ENDC
	done

_OaksLabDeliverParcelText1::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$06,$C6; RAW DATA : 	text "오박사『아"
	line $52,$01,$8A,$0B,$66; RAW DATA : 	line $52,"군!"

	para $02,$77,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8A,$7F,$06,$EE,$03,$81,$02,$CF,$0B,$67; RAW DATA : 	para "네 포켓몬은 어떡니?"

	para $02,$6E,$7F,$04,$49,$07,$9C,$7F,$07,$F1,$06,$C6,$0A,$6F,$02,$C2,$7F,$01,$2D,$7F,$01,$10,$06,$C6; RAW DATA : 	para "널 많이 좋아하는 것 같아"
	line $02,$D9,$0A,$80,$07,$9C,$01,$88,$02,$3A; RAW DATA : 	line "다행이구나"



	para $05,$30,$04,$8D,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$07,$97,$7F,$07,$B7,$02,$C9,$07,$8B; RAW DATA : 	para "분명 포켓몬 트레이너의 재능을"
	line $01,$01,$08,$26,$01,$4D,$7F,$07,$A6,$02,$C2,$7F,$01,$25,$01,$3A,$08,$26,$0B,$66; RAW DATA : 	line "가지고 있는 거겠지!"



	para $07,$8D,$0B,$67; RAW DATA : 	para "음?"
	line $07,$CC,$0A,$78,$08,$09,$7F,$04,$B0,$01,$27,$0B,$67; RAW DATA : 	line "전해줄 물건?"

	para $52,$02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	para $52,"는(은)"
	line $07,$20,$04,$DA,$05,$B7,$07,$97,$7F,$06,$02,$0A,$27,$04,$36,$7F,$07,$CC,$0A,$78,$08,$11,$02,$D9,$50,$50; RAW DATA : 	line "오박사의 소포를 전해줬다@@"

_OaksLabDeliverParcelText2::
	text ""
	para $06,$C6,$0B,$66,$7F,$07,$CC,$07,$01,$7F,$08,$06,$04,$AE,$0A,$71; RAW DATA : 	para "아! 전에 주문한"
	line $04,$62,$08,$E3,$0A,$9C,$7F,$04,$93,$06,$4A,$09,$9D,$7F,$05,$1C,$07,$9C,$01,$88,$02,$3A,$0B,$66; RAW DATA : 	line "맞춤형 몬스터 볼이구나!"
IF DEF(_YELLOW)
	cont $01,$4D,$04,$4F,$01,$88,$02,$3A,$7F; RAW DATA : 	cont "고맙구나 "
	db $52, $01,$8A,$0B,$66; RAW DATA : 	db $52, "군!"


	para $01,$A7,$02,$3A,$07,$CA,$02,$3A,$7F,$05,$2E,$09,$89,$0A,$6F,$01,$4D,$7F,$06,$6D,$07,$8A,$7F,$01,$34; RAW DATA : 	para "그나저나 부탁하고 싶은 게"
	line $07,$A6,$02,$DC,$02,$D9; RAW DATA : 	line "있단다"
ELSE
	cont $01,$4D,$04,$4F,$01,$88,$02,$3A,$7F,$0B,$66; RAW DATA : 	cont "고맙구나!"
ENDC
	done

_OaksLabAroundWorldText::
	text $01,$67,$01,$67,$07,$97,$7F,$0A,$27,$09,$2F,$04,$93,$03,$49,$07,$9C; RAW DATA : 	text "곳곳의 포켓몬들이"
	line $02,$6A,$04,$36,$7F,$01,$B2,$02,$D9,$04,$3E,$01,$4D,$7F,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "너를 기다리고 있다!"
	done

_OaksLabGivePokeballsText1::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$05,$1B,$7F,$01,$2D,$04,$48,$07,$88,$03,$FE,$02,$C2; RAW DATA : 	text "오박사『포켓몬을 본 것만으로는"
	line $07,$D4,$0A,$AE,$0A,$71,$7F,$07,$D4,$05,$18,$04,$36,$7F,$06,$CB,$06,$C6,$02,$4E,$06,$26,$7F,$06,$F8,$02,$DC,$02,$D9; RAW DATA : 	line "정확한 정보를 알아낼수 없단다"

	para $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$07,$B2,$06,$C6,$06,$DF,$7F,$07,$D4,$0A,$AE,$0A,$71,$7F,$07,$D4,$05,$18,$04,$36; RAW DATA : 	para "포켓몬을 잡아야 정확한 정보를"
	line $06,$CB,$06,$C6,$02,$4E,$7F,$06,$26,$7F,$07,$A6,$02,$DC,$02,$D9,$0B,$66; RAW DATA : 	line "알아낼 수 있단다!"
	cont $07,$9C,$01,$29,$03,$FE,$7F,$06,$DF,$05,$CD,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$07,$B2,$07,$88,$03,$F5,$0B,$66; RAW DATA : 	cont "이걸로 야생 포켓몬을 잡으렴!"

	para $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	para $52, "는(은)"
	line $04,$93,$06,$4A,$09,$9D,$05,$1C,$7F,$FB,$01,$13,$04,$36,$7F,$06,$F2,$06,$FA,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	line "몬스터볼 5개를 얻었다!@@"

_OaksLabGivePokeballsText2::
	text ""
	para $06,$DF,$05,$CD,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$02,$3A,$09,$88,$02,$3A,$04,$89; RAW DATA : 	para "야생 포켓몬이 나타나면"
	line $01,$A7,$03,$77,$05,$2E,$09,$9D,$7F,$06,$63,$07,$AB,$07,$9C,$03,$C5,$02,$D9; RAW DATA : 	line "그때부터 시작이란다"
IF DEF(_YELLOW)
	para $02,$4B,$01,$01,$7F,$05,$18,$07,$09,$08,$11,$02,$F8,$7F,$01,$2D,$08,$B3,$03,$E3; RAW DATA : 	para "내가 보여줬던 것처럼"
	line $04,$93,$06,$4A,$09,$9D,$05,$1C,$07,$8B,$7F,$02,$F8,$07,$DE,$05,$DD,$7F,$07,$B2,$02,$C2,$01,$25,$08,$26,$0B,$66; RAW DATA : 	line "몬스터볼을 던져서 잡는거지!"
ELSE
	para $04,$93,$06,$4A,$09,$9D,$05,$1C,$07,$8B,$7F,$02,$F8,$07,$DE,$05,$DD,$7F,$07,$B2,$02,$C2,$01,$25,$08,$26,$0B,$66; RAW DATA : 	line "몬스터볼을 던져서 잡는거지!"

ENDC
	para $04,$B0,$04,$00,$7F,$0A,$77,$05,$C3,$7F,$07,$B2,$0A,$F7,$02,$C2,$01,$27,$7F,$06,$C6,$02,$CF,$03,$C5,$02,$D9; RAW DATA : 	para "물론 항상 잡히는건 아니란다"

	para $09,$F8,$09,$F8,$0A,$71,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8A; RAW DATA : 	para "팔팔한 포켓몬은"
	line $03,$15,$04,$61,$09,$05,$7F,$06,$26,$03,$15,$7F,$07,$A6,$07,$88,$02,$CF; RAW DATA : 	line "도망칠 수도 있으니"
	cont $07,$4E,$03,$15,$7F,$03,$6B,$03,$C3,$08,$10,$06,$DF,$0A,$71,$02,$DC,$02,$D9,$0B,$66; RAW DATA : 	cont "운도 따라줘야한단다!"
	done

_OaksLabPleaseVisitText::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$01,$01,$02,$2B,$7F,$07,$2D,$05,$DD; RAW DATA : 	text "오박사『가끔 와서"
	line $06,$F3,$01,$8C,$7F,$07,$EB,$7F,$05,$61,$09,$01,$03,$F1,$04,$AB,$02,$3A; RAW DATA : 	line "얼굴 좀 비치려무나"

	para $02,$77,$7F,$03,$15,$01,$08,$07,$9C,$7F,$06,$F3,$04,$46,$02,$3A,$7F,$07,$2F,$05,$EA,$03,$27,$01,$01,$02,$C2,$08,$26,$03,$15; RAW DATA : 	para "네 도감이 얼마나 완성되가는지도"
	line $01,$93,$01,$AD,$0A,$6F,$02,$CF,$01,$BE; RAW DATA : 	line "궁금하니까"
	Done

_OaksLabText_1d31d::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$07,$20,$03,$D3,$04,$48,$07,$9C,$01,$88,$02,$3A,$0B,$66; RAW DATA : 	text "오박사『오랜만이구나!"
	line $03,$15,$01,$08,$08,$A4,$07,$4C,$01,$B2,$02,$C2,$7F,$07,$AF,$03,$27,$01,$01,$02,$CF,$0B,$67; RAW DATA : 	line "도감채우기는 잘되가니?"
	cont $06,$EE,$03,$60,$7F,$0A,$71,$04,$F8,$7F,$05,$18,$07,$09,$08,$06,$03,$F5,$0B,$66; RAW DATA : 	cont "어디 한번 보여주렴!"

	prompt

_OaksLabText_1d32c::
	text $05,$B7,$07,$CC,$08,$B3,$03,$E3,$7F,$05,$18,$07,$9C,$08,$26,$04,$48; RAW DATA : 	text "사전처럼 보이지만"
	line $05,$63,$09,$0D,$09,$C5,$05,$EA,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	line "빈칸투성이다!"
	done

_OaksLabText8::
	text $0B,$67; RAW DATA : 	text "?"
	done

_OaksLabText_1d340::
	text $07,$20,$04,$DA,$05,$B7,$02,$D4,$07,$8A; RAW DATA : 	text "오박사님은"
	line $0A,$27,$09,$2F,$04,$93,$07,$97,$7F,$01,$97,$07,$77,$07,$AA,$06,$DF,$0B,$66; RAW DATA : 	line "포켓몬의 권위자야!"

	para $06,$26,$04,$49,$07,$8A,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$03,$49,$07,$97; RAW DATA : 	para "수많은 포켓몬 트레이너들의"
	line $07,$4C,$05,$C3,$07,$9C,$08,$26,$0B,$66; RAW DATA : 	line "우상이지!"
	done

_OaksLabRivalWaitingText::
	text "<RIVAL>: Gramps!"
	line "I'm fed up with"
	cont "waiting!"
	done

_OaksLabChooseMonText::
IF DEF(_YELLOW)
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$07,$8D,$0B,$67,$7F; RAW DATA : 	text "오박사『음? "
	db $53,$0B,$67; RAW DATA : 	db $53,"?"
	line $07,$36,$7F,$04,$FA,$06,$81,$7F,$07,$22,$01,$25,$02,$CF,$0B,$67; RAW DATA : 	line "왜 벌써 온거니?"

	para $07,$EB,$7F,$07,$A6,$02,$D9,$7F,$07,$20,$03,$C3,$01,$4D,$7F,$0A,$7F,$02,$C2,$03,$05,$0B,$6A,$0B,$6A; RAW DATA : 	para "좀 있다 오라고 했는데……"

	para $04,$B9,$7F,$05,$C3,$01,$6C,$06,$F8,$08,$26,$0B,$66; RAW DATA : 	para "뭐 상관없지!"
	line $01,$25,$01,$B2,$05,$DD,$7F,$07,$E6,$01,$AD,$04,$48,$7F,$01,$B2,$02,$D9,$04,$3E,$03,$F5,$0B,$66; RAW DATA : 	line "거기서 조금만 기다리렴!"

	para $07,$CA,$01,$B6,$05,$18,$03,$F5,$7F; RAW DATA : 	para "저길보렴 "
	db $52,$01,$8A,$0B,$66; RAW DATA : 	db $52,"군!"
	line $08,$A5,$05,$C3,$7F,$07,$77,$07,$01,$7F,$02,$95,$07,$9E,$7F,$05,$1C,$07,$9C,$7F,$05,$18,$07,$9C,$02,$CF,$0B,$67; RAW DATA : 	line "책상 위에 놓인 볼이 보이니?"
	
	para $07,$CA,$01,$27,$7F,$04,$93,$06,$4A,$09,$9D,$7F,$05,$1C,$07,$9C,$03,$C5,$02,$D9; RAW DATA : 	para "저건 몬스터 볼이란다"
	line $06,$C8,$07,$01,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$03,$49,$06,$EE,$07,$A6,$08,$26; RAW DATA : 	line "안에 포켓몬이 들어있지"

	para $07,$9C,$07,$D6,$7F,$07,$CA,$01,$27,$7F,$02,$77,$7F,$01,$2D,$07,$9C,$03,$C5,$02,$D9,$0B,$66; RAW DATA : 	para "이제 저건 네 것이란다!"
	line $05,$B7,$06,$E7,$0A,$6F,$08,$26,$04,$4B,$01,$4D,$7F,$01,$01,$08,$26,$03,$F5,$0B,$66; RAW DATA : 	line "사양하지말고 가지렴!"
ELSE
	text "OAK: <RIVAL>?"
	line "Let me think..."

	para "Oh, that's right,"
	line "I told you to"
	cont "come! Just wait!"

	para "Here, <PLAYER>!"

	para "There are 3"
	line "#MON here!"

	para "Haha!"

	para "They are inside"
	line "the # BALLs."

	para "When I was young,"
	line "I was a serious"
	cont "#MON trainer!"

	para "In my old age, I"
	line "have only 3 left,"
	cont "but you can have"
	cont "one! Choose!"
ENDC
	done
_OaksLabRivalInterjectionText::
	text $53,$0B,$62,$07,$B1,$01,$C1,$0B,$66; RAW DATA : 	text $53,"『잠깐!"
	line $0A,$72,$06,$C6,$04,$F6,$08,$26,$0B,$66,$7F,$02,$3A,$02,$C2,$0B,$67; RAW DATA : 	line "할아버지! 나는?"
	done

_OaksLabBePatientText::
IF DEF(_YELLOW)
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$07,$EB,$7F,$01,$B2,$02,$D9,$04,$3E,$03,$F5; RAW DATA : 	text "오박사『좀 기다리렴"
	line $53, $7F,$02,$77,$7F,$01,$2D,$03,$15,$7F,$07,$A6,$02,$DC,$02,$D9; RAW DATA : 	line $53, " 네 것도 있단다"
ELSE
	text "OAK: Be patient!"
	line "<RIVAL>, you can"
	cont "have one too!"
ENDC
	done
IF DEF(_YELLOW)
_OaksLabRivalTakesText1::
	text $53, $0B,$62,$06,$C8,$03,$25,$0B,$66; RAW DATA : 	text $53, "『안돼!"
	line $52, $7F,$02,$3D,$7F,$08,$B3,$07,$8D,$05,$2E,$09,$9D; RAW DATA : 	line $52, " 난 처음부터"
	cont $07,$9C,$7F,$02,$80,$05,$DE,$07,$9C,$7F,$04,$46,$07,$8D,$07,$01,$7F,$03,$49,$06,$FA,$02,$D9,$01,$4D,$0B,$66; RAW DATA : 	cont "이 녀석이 마음에 들었다고!"
	prompt


_OaksLabRivalTakesText2::
	text $53,$0B,$64,$07,$9C,$0B,$65,$01,$01; RAW DATA : 	text $53,"(이)가"
	line $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$01,$01,$03,$FE,$08,$AB,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	line "포켓몬을 가로챘다!@@"

_OaksLabRivalTakesText3::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62; RAW DATA : 	text "오박사『"
	db $53,$0B,$66; RAW DATA : 	db $53,"!"
	line $04,$B9,$0A,$6F,$02,$C2,$01,$25,$02,$64,$0B,$66; RAW DATA : 	line "뭐하는거냐!"
	prompt

_OaksLabRivalTakesText4::
	text $53,$0B,$62,$0A,$72,$06,$C6,$04,$F6,$08,$26,$0B,$66; RAW DATA : 	text $53,"『할아버지!"
	line $02,$3A,$7F,$07,$D4,$04,$4B,$7F,$06,$EA,$01,$01,$7F,$04,$46,$07,$8D,$07,$01,$7F,$03,$49,$06,$FA,$02,$D9,$01,$4D,$0B,$66; RAW DATA : 	line "나 정말 얘가 마음에 들었다고!"
	prompt

_OaksLabRivalTakesText5::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$0A,$6F,$08,$26,$04,$48,$0B,$6A,$0B,$6A,$7F,$01,$A7,$03,$D1; RAW DATA : 	text "오박사『하지만…… 그래"
	line $06,$CB,$06,$D2,$02,$D9; RAW DATA : 	line "알았다"
	cont $01,$A7,$03,$E3,$7F,$01,$A7,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8A,$7F,$02,$77,$01,$01,$7F,$01,$01,$08,$26,$03,$F5; RAW DATA : 	cont "그럼 그 포켓몬은 네가 가지렴"

	para $02,$6A,$0A,$71,$09,$A7,$03,$15,$7F,$0A,$71,$04,$46,$04,$3E,$7F,$08,$06,$01,$B2,$03,$FE; RAW DATA : 	para "너한테도 한마리 주기로"
	line $06,$E0,$06,$03,$0A,$7F,$06,$FA,$07,$88,$02,$CF,$0B,$6A,$0B,$6A; RAW DATA : 	line "약속했었으니……"

	para $52, $01,$8A; RAW DATA : 	para $52, "군"
	line $07,$9C,$04,$3E,$7F,$07,$20,$03,$F5; RAW DATA : 	line "이리 오렴"
	done

_OaksLabOakGivesText::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62; RAW DATA : 	text "오박사『"
	db $52,$01,$8A,$7F,$07,$9C,$01,$27,$7F,$02,$4B,$01,$01; RAW DATA : 	db $52,"군 이건 내가"
	line $06,$C6,$01,$BE,$7F,$07,$B2,$07,$8A,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C,$03,$C5,$02,$D9; RAW DATA : 	line "아까 잡은 포켓몬이란다"

	para $02,$77,$07,$01,$01,$34,$02,$C2,$7F,$07,$9C,$01,$2D,$07,$8B,$7F,$08,$06,$01,$3A,$02,$D9; RAW DATA : 	para "네에게는 이것을 주겠다"
	line $06,$C6,$08,$27,$7F,$01,$B6,$03,$49,$07,$09,$08,$26,$08,$28,$7F,$06,$CA,$06,$D2,$07,$8B,$7F,$01,$2D,$07,$9C,$03,$C5,$02,$D9; RAW DATA : 	line "아직 길들여지진 않았을 것이란다"
	prompt

_OaksLabReceivedText::
	text $52,$02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52,"는(은)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcd6d
	text $04,$36,$0B,$64,$07,$8B,$0B,$65,$7F,$04,$DE,$06,$D2,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	text "를(을) 받았다!@@"

ELSE



_OaksLabRivalPickingMonText::
	text "<RIVAL>: I'll take"
	line "this one, then!"
	done

_OaksLabRivalReceivedMonText::
	text "<RIVAL> received"
	line "a @"
	TX_RAM wcd6d
	text "!@@"
ENDC
_OaksLabLeavingText::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$07,$B1,$01,$C1,$0B,$66; RAW DATA : 	text "오박사『잠깐!"
	line $06,$C6,$08,$27,$7F,$01,$01,$08,$26,$7F,$04,$4B,$01,$25,$03,$C3,$0B,$66; RAW DATA : 	line "아직 가지 말거라!"
	done

_OaksLabRivalChallengeText::
	text $53,$0B,$62,$06,$EE,$07,$9C,$0B,$66; RAW DATA : 	text $53,"『어이!"
	line $52,$0B,$66; RAW DATA : 	line $52,"!"
	cont $07,$4C,$04,$3E,$7F,$05,$DD,$03,$FE,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$02,$EB,$01,$41,$0A,$78,$05,$18,$07,$AA,$0B,$66; RAW DATA : 	cont "우리 서로 포켓몬 대결해보자!"

	para $03,$15,$04,$61,$09,$01,$08,$26,$7F,$04,$4B,$01,$4D,$0B,$66; RAW DATA : 	para "도망치지 말고!"
	line $0A,$71,$04,$F8,$7F,$0A,$78,$05,$18,$07,$AA,$01,$4D,$0B,$66; RAW DATA : 	line "한번 해보자고!"
	done

_OaksLabText_1d3be::
	text $04,$B9,$0B,$67; RAW DATA : 	text "뭐?"
	line $04,$4B,$03,$15,$7F,$06,$C8,$03,$25,$0B,$66; RAW DATA : 	line "말도 안돼!"
	cont $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$07,$AF,$04,$98,$7F,$01,$4D,$04,$35,$7F,$01,$2D,$7F,$01,$10,$06,$C6,$0B,$66; RAW DATA : 	cont "포켓몬을 잘못 고른 것 같아!"
	prompt

_OaksLabText_1d3c3::
	text $53,$0B,$62,$01,$A7,$03,$E8,$08,$26,$0B,$66; RAW DATA : 	text $53,"『그렇지!"
	line $07,$0A,$06,$63,$7F,$02,$3D,$7F,$02,$EB,$02,$DC,$0A,$78,$0B,$66; RAW DATA : 	line "역시 난 대단해!"
	prompt


_OaksLabRivalToughenUpText::
	text $53,$0B,$62,$07,$F1,$06,$C6,$0B,$66; RAW DATA : 	text $53,"『좋아!"
	line $01,$A7,$03,$E3,$7F,$07,$0D,$06,$69,$0A,$F7,$7F,$06,$6E,$07,$66,$05,$DD,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B; RAW DATA : 	line "그럼 열심히 싸워서 포켓몬을"
	cont $02,$F5,$7F,$01,$0D,$0A,$6F,$01,$34,$7F,$04,$48,$03,$49,$06,$EE,$06,$DF,$7F,$01,$3A,$06,$EE,$0B,$66; RAW DATA : 	cont "더 강하게 만들어야 겠어!"

	para $52, $0B,$66,$7F,$0A,$72,$06,$C6,$04,$F6,$08,$26,$0B,$66; RAW DATA : 	para $52, "! 할아버지!"
	line $04,$D9,$07,$9C,$05,$61,$0B,$66; RAW DATA : 	line "바이비!"
	done

IF DEF(_YELLOW)
_OaksLabPikachuDislikesPokeballsText1::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$07,$90,$0B,$67; RAW DATA : 	text "오박사『응?"
	done


_OaksLabPikachuDislikesPokeballsText2::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62,$07,$9C,$01,$2D,$7F,$07,$EB,$7F,$05,$18,$03,$F5,$0B,$66; RAW DATA : 	text "오박사『이것 좀 보렴!"

	para $07,$9C,$05,$C3,$0A,$71,$7F,$07,$9F,$07,$9C,$01,$88,$02,$3A; RAW DATA : 	para "이상한 일이구나"
	line $06,$C6,$04,$AB,$03,$D1,$03,$15,$7F,$02,$77,$7F,$0A,$67,$09,$0B,$08,$F2,$01,$01; RAW DATA : 	line "아무래도 네 피카츄가"
	cont $04,$93,$06,$4A,$09,$9D,$05,$1C,$07,$8B,$7F,$06,$68,$06,$EE,$0A,$6F,$02,$C2,$7F,$01,$2D,$7F,$01,$10,$01,$88,$02,$3A; RAW DATA : 	cont "몬스터볼을 싫어하는 것 같구나"

	para $05,$1C,$7F,$06,$C8,$07,$01,$7F,$02,$76,$02,$C2,$7F,$01,$2D,$7F,$05,$18,$02,$D9,$02,$C2; RAW DATA : 	para "볼 안에 넣는 것 보다는"
	line $03,$05,$04,$3E,$01,$4D,$7F,$02,$D9,$02,$CF,$02,$C2,$7F,$0A,$1D,$07,$9C; RAW DATA : 	line "데리고 다니는 편이"
	cont $02,$F5,$7F,$07,$F1,$07,$8B,$7F,$01,$2D,$7F,$01,$10,$01,$88,$02,$3A,$0B,$66; RAW DATA : 	cont "더 좋을 것 같구나!"

	para $09,$F4,$09,$0B,$08,$F2,$07,$97,$7F,$01,$B2,$05,$30,$07,$9C,$7F,$06,$EE,$03,$82,$08,$26,$7F,$0A,$AE,$07,$9E,$0A,$6F,$01,$4D; RAW DATA : 	para "파카츄의 기분이 어떤지 확인하고"
	line $06,$6D,$07,$88,$04,$89,$7F,$04,$4B,$07,$8B,$7F,$01,$29,$06,$EE,$05,$18,$03,$F5; RAW DATA : 	line "싶으면 말을 걸어보렴"
	done



ENDC
_OaksLabText21::
	text $53,$0B,$62,$0A,$72,$06,$C6,$04,$F6,$08,$26,$0B,$66; RAW DATA : 	text $53,"『할아버지!"
	done

_OaksLabText22::
IF DEF(_YELLOW)
	text $53,$0B,$62,$0A,$72,$06,$C6,$04,$F6,$08,$26,$0B,$66; RAW DATA : 	text $53,"『할아버지!"
	line $02,$4B,$7F,$0A,$27,$09,$2F,$04,$93,$07,$EB,$7F,$05,$21,$05,$21,$0B,$66; RAW DATA : 	line "내 포켓몬좀 봐봐!"
	cont $0A,$CE,$06,$C0,$7F,$02,$F5,$7F,$01,$0D,$0A,$78,$07,$E3,$06,$EE,$0B,$66; RAW DATA : 	cont "훨씬 더 강해졌어!"
ELSE
	text "<RIVAL>: What did"
	line "you call me for?"
ENDC
	done

_OaksLabText23::
IF DEF(_YELLOW)
	text $07,$20,$04,$DA,$05,$B7,$0B,$62; RAW DATA : 	text "오박사『"
	db $53,$0B,$66; RAW DATA : 	db $53,"!"
	line $03,$6C,$7F,$07,$F1,$07,$8A,$7F,$03,$77,$07,$01,$7F,$07,$34,$01,$88,$02,$3A,$0B,$66; RAW DATA : 	line "딱 좋은 때에 왔구나!"


	para $02,$6A,$0A,$F1,$7F,$03,$31,$07,$01,$01,$34,$7F,$05,$2E,$09,$89,$0A,$6F,$01,$4D; RAW DATA : 	para "너희 둘에게 부탁하고"
	line $06,$6D,$07,$8A,$01,$34,$7F,$07,$A6,$06,$FA,$01,$25,$03,$47,$0B,$66; RAW DATA : 	line "싶은게 있었거든!"
ELSE
	text "OAK: Oh right! I"
	line "have a request"
	cont "of you two."
ENDC
	done

_OaksLabText24::
	text $08,$A5,$05,$C3,$7F,$07,$77,$07,$01,$7F,$07,$A6,$02,$C2; RAW DATA : 	text "책상 위에 있는"
	line $07,$CA,$7F,$04,$B0,$01,$27,$07,$8A; RAW DATA : 	line "저 물건은"
	cont $02,$4B,$7F,$01,$29,$07,$AB,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$03,$15,$01,$08,$07,$9C,$03,$C5,$02,$D9,$0B,$66; RAW DATA : 	cont "내 걸작 포켓몬 도감이란다!"

	para $04,$DF,$01,$3F,$0A,$71,$7F,$0A,$27,$09,$2F,$04,$93,$07,$97,$7F,$03,$05,$07,$9C,$09,$9D,$01,$01; RAW DATA : 	para "발견한 포켓몬의 데이터가"
	line $07,$AA,$03,$1F,$07,$CB,$07,$88,$03,$FE,$7F,$01,$B2,$03,$FF,$03,$27,$06,$EE,$07,$DE; RAW DATA : 	line "자동적으로 기록되어져"
	cont $0A,$14,$07,$9C,$08,$26,$01,$01,$7F,$02,$C3,$06,$EE,$02,$3A,$08,$26,$0B,$66; RAW DATA : 	cont "페이지가 늘어나지!"

	para $0A,$71,$04,$46,$03,$60,$03,$FE; RAW DATA : 	para "한마디로"
	line $0A,$6F,$07,$9C,$09,$A7,$09,$79,$7F,$03,$15,$01,$08,$07,$9C,$03,$C5,$02,$D9,$0B,$66; RAW DATA : 	line "하이테크 도감이란다!"
	done

_OaksLabText25::
	text $07,$20,$04,$DA,$05,$B7,$0B,$62; RAW DATA : 	text "오박사『"
	db $52,$7F,$01,$A7,$04,$3E,$01,$4D; RAW DATA : 	db $52," 그리고"
	line $53,$0B,$66; RAW DATA : 	line $53,"!"
	cont $0A,$6F,$02,$3A,$06,$BF,$7F,$01,$01,$08,$26,$03,$F5,$0B,$66; RAW DATA : 	cont "하나씩 가지렴!"

	para $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65,$7F,$07,$20,$04,$DA,$05,$B7,$03,$FE,$05,$2E,$09,$9D; RAW DATA : 	para $52, "는(은) 오박사로부터"
	line $0A,$27,$09,$2F,$04,$93,$7F,$03,$15,$01,$08,$07,$8B,$7F,$06,$F2,$06,$FA,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	line "포켓몬 도감을 얻었다!@@"

_OaksLabText26::
	text $07,$CC,$7F,$05,$EC,$01,$48,$7F,$04,$90,$03,$47,$7F,$0A,$27,$09,$2F,$04,$93,$07,$97; RAW DATA : 	text "전 세계 모든 포켓몬의"
	line $03,$15,$01,$08,$07,$8B,$7F,$07,$2F,$05,$EA,$0A,$6F,$02,$C2,$7F,$01,$2D,$0B,$6A,$0B,$6A; RAW DATA : 	line "도감을 완성하는 것……"

	para $01,$A7,$01,$34,$7F,$02,$4B,$7F,$02,$0E,$07,$9C,$06,$FA,$02,$DC,$02,$D9,$0B,$66; RAW DATA : 	para "그게 내 꿈이었단다!"

	para $0A,$6F,$08,$26,$04,$48,$7F,$01,$A7,$7F,$02,$0E,$07,$8B,$7F,$07,$9C,$04,$17,$01,$B2,$07,$03; RAW DATA : 	para "하지만 그 꿈을 이루기엔"
	line $02,$6A,$04,$AB,$7F,$02,$C4,$06,$EE,$04,$F6,$03,$F8,$02,$DC,$02,$D9,$0B,$66; RAW DATA : 	line "너무 늙어버렸단다!"

	para $01,$A7,$03,$DF,$04,$C7,$03,$FE,$7F,$02,$6A,$0A,$F1,$7F,$03,$31,$07,$9C; RAW DATA : 	para "그러므로 너희 둘이"
	line $02,$4B,$7F,$02,$0E,$07,$8B,$7F,$07,$9C,$06,$EE,$01,$0C,$07,$88,$04,$89,$7F,$0A,$71,$02,$D9,$0B,$66; RAW DATA : 	line "내 꿈을 이어갔으면 한다!"

	para $07,$AA,$0B,$66; RAW DATA : 	para "자!"
	line $07,$9C,$07,$D6,$7F,$05,$DD,$03,$2E,$04,$33,$03,$F5,$0B,$66; RAW DATA : 	line "이제 서두르렴!"

	para $07,$9C,$01,$27,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$07,$0A,$05,$B7,$05,$C3; RAW DATA : 	para "이건 포켓몬 역사상"
	line $06,$F6,$08,$BB,$02,$3D,$7F,$04,$DF,$07,$AA,$01,$89,$07,$9C,$7F,$03,$29,$01,$25,$06,$DF,$0B,$66; RAW DATA : 	line "엄청난 발자국이 될거야!"
	done


_OaksLabText27::
	text $53,$0B,$62,$01,$26,$07,$D4,$04,$4B,$03,$C3,$01,$4D; RAW DATA : 	text $53,"『걱정말라고"
	line $0A,$72,$06,$C6,$04,$F6,$08,$26,$0B,$66; RAW DATA : 	line "할아버지!"
	cont $02,$3A,$04,$48,$7F,$04,$CF,$06,$EE,$0B,$66; RAW DATA : 	cont "나만 믿어!"

	para $52,$7F,$01,$8B,$07,$9C,$7F,$04,$4B,$0A,$72,$7F,$0A,$6A,$07,$44,$03,$15; RAW DATA : 	para $52," 굳이 말할 필요도"
	line $06,$F8,$08,$26,$04,$48,$7F,$02,$6A,$02,$C2,$7F,$03,$15,$07,$2D,$08,$09,$7F,$0A,$6A,$07,$44,$7F,$06,$F8,$06,$EE,$0B,$66; RAW DATA : 	line "없지만 너는 도와줄 필요 없어!"

	para $01,$A7,$03,$D1,$0B,$66; RAW DATA : 	para "그래!"
	line $02,$A9,$02,$3A,$07,$01,$01,$34,$7F,$09,$88,$07,$4E,$04,$6A,$07,$8B,$7F,$05,$64,$03,$F1,$06,$DF,$08,$26,$0B,$66; RAW DATA : 	line "누나에게 타운맵을 빌려야지!"

	para $02,$6A,$0A,$71,$09,$A7,$02,$C2,$7F,$08,$06,$08,$26,$04,$4B,$03,$C3,$01,$4D,$7F,$0A,$72,$01,$25,$06,$DF,$0B,$66; RAW DATA : 	para "너한테는 주지말라고 할거야!"
	line $0A,$6F,$0A,$6F,$0A,$6F,$0B,$66; RAW DATA : 	line "하하하!"
	done

_OaksLabText_1d405::
	text $07,$CC,$7F,$07,$20,$04,$DA,$05,$B7,$07,$97,$7F,$07,$E6,$06,$26,$03,$FE; RAW DATA : 	text "전 오박사의 조수로"
	line $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$07,$0C,$01,$88,$0A,$6F,$01,$4D,$7F,$07,$A6,$06,$EE,$07,$44; RAW DATA : 	line "포켓몬을 연구하고 있어요"

IF DEF(_YELLOW)
	done
	
ELSE
	done

_OaksLabText_441cc::
	text "#DEX comp-"
	line "letion is:"

	para "@"
	TX_NUM hDexRatingNumMonsSeen, 1, 3
	text " #MON seen"
	line "@"
	TX_NUM hDexRatingNumMonsOwned, 1, 3
	text " #MON owned"

	para "PROF.OAK's"
	line "Rating:"
	prompt

_OaksLabText_44201::
	text "You still have"
	line "lots to do."
	cont "Look for #MON"
	cont "in grassy areas!"
	done

_OaksLabText_44206::
	text "You're on the"
	line "right track! "
	cont "Get a FLASH HM"
	cont "from my AIDE!"
	done

_OaksLabText_4420b::
	text "You still need"
	line "more #MON!"
	cont "Try to catch"
	cont "other species!"
	done

_OaksLabText_44210::
	text "Good, you're"
	line "trying hard!"
	cont "Get an ITEMFINDER"
	cont "from my AIDE!"
	done

_OaksLabText_44215::
	text "Looking good!"
	line "Go find my AIDE"
	cont "when you get 50!"
	done

_OaksLabText_4421a::
	text "You finally got at"
	line "least 50 species!"
	cont "Be sure to get"
	cont "EXP.ALL from my"
	cont "AIDE!"
	done

_OaksLabText_4421f::
	text "Ho! This is geting"
	line "even better!"
	done

_OaksLabText_44224::
	text "Very good!"
	line "Go fish for some"
	cont "marine #MON!"
	done

_OaksLabText_44229::
	text "Wonderful!"
	line "Do you like to"
	cont "collect things?"
	done

_OaksLabText_4422e::
	text "I'm impressed!"
	line "It must have been"
	cont "difficult to do!"
	done

_OaksLabText_44233::
	text "You finally got at"
	line "least 100 species!"
	cont "I can't believe"
	cont "how good you are!"
	done

_OaksLabText_44238::
	text "You even have the"
	line "evolved forms of"
	cont "#MON! Super!"
	done

_OaksLabText_4423d::
	text "Excellent! Trade"
	line "with friends to"
	cont "get some more!"
	done

_OaksLabText_44242::
	text "Outstanding!"
	line "You've become a"
	cont "real pro at this!"
	done

_OaksLabText_44247::
	text "I have nothing"
	line "left to say!"
	cont "You're the"
	cont "authority now!"
	done

_OaksLabText_4424c::
	text "Your #DEX is"
	line "entirely complete!"
	cont "Congratulations!"
	done

ENDC
