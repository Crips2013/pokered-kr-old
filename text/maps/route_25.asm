_Route25BattleText1::
	text $07,$9C,$7F,$08,$26,$07,$0A,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$03,$49,$07,$8A; RAW DATA : 	text "이 지역 트레이너들은"
	line $07,$09,$01,$B2,$07,$01,$05,$DD,$7F,$07,$0C,$06,$60,$0A,$6F,$08,$26,$0B,$66; RAW DATA : 	line "여기에서 연습하지!"
	done

_Route25EndBattleText1::
	text $02,$6A,$7F,$07,$D6,$04,$FD,$7F,$07,$9E,$01,$29; RAW DATA : 	text "너 제법 인걸"
	prompt

_Route25AfterBattleText1::
	text $04,$90,$03,$47,$7F,$0A,$27,$09,$2F,$04,$93,$07,$01,$01,$35,$7F,$06,$E0,$07,$D1,$07,$9C,$7F,$07,$A6,$08,$26; RAW DATA : 	text "모든 포켓몬에겐 약점이 있지"
	line $07,$09,$03,$DF,$7F,$07,$EE,$04,$29,$04,$36,$7F,$09,$80,$07,$66,$05,$21,$0B,$66; RAW DATA : 	line "여러 종류를 키워봐!"
	done

_Route25BattleText2::
	text $06,$C6,$04,$F6,$08,$26,$01,$01,$7F,$01,$05,$05,$C6,$06,$63,$09,$EC,$07,$01,$7F,$07,$A6,$02,$C2; RAW DATA : 	text "아버지가 갈색시티에 있는"
	line $05,$C3,$09,$DE,$06,$D3,$02,$C0,$0A,$A3,$7F,$05,$E1,$05,$C3,$7F,$09,$F4,$09,$EC,$07,$01; RAW DATA : 	line "상트앙느호 선상 파티에"
	cont $03,$05,$03,$F1,$01,$01,$08,$06,$05,$FC,$06,$EE,$0B,$66; RAW DATA : 	cont "데려가주셨어!"
	done

_Route25EndBattleText2::
	text $02,$3D,$7F,$08,$26,$01,$AD; RAW DATA : 	text "난 지금"
	line $09,$07,$08,$98,$0A,$6F,$02,$D9,$01,$4D,$0B,$66; RAW DATA : 	line "침착하다고!"
	prompt

_Route25AfterBattleText2::
	text $05,$C3,$09,$DE,$06,$D3,$02,$C0,$0A,$A3,$07,$01,$05,$DD,$7F,$07,$CC,$05,$EC,$01,$48,$07,$01,$05,$DD,$7F,$04,$90,$07,$9E; RAW DATA : 	text "상트앙느호에서 전세계에서 모인"
	line $09,$DE,$03,$E9,$07,$9C,$02,$6A,$03,$49,$07,$8B,$7F,$05,$23,$06,$EE; RAW DATA : 	line "트레이너들을 봤어"
	done

_Route25BattleText3::
	text $02,$3A,$02,$C2,$06,$DF,$7F,$09,$60,$01,$01,$07,$9C,$0B,$6C; RAW DATA : 	text "나는야 쿨가이."
	line $07,$09,$07,$AA,$09,$03,$01,$88,$01,$01,$7F,$05,$CD,$01,$45,$01,$25,$03,$47,$0B,$66; RAW DATA : 	line "여자친구가 생겼거든!"
	done

_Route25EndBattleText3::
	text $06,$EE,$06,$EE; RAW DATA : 	text "어어"
	line $04,$61,$0A,$72,$0B,$6A,$0B,$6A; RAW DATA : 	line "망할……"
	prompt

_Route25AfterBattleText3::
	text $04,$B9,$7F,$02,$4B,$7F,$07,$09,$07,$AA,$09,$03,$01,$88,$01,$01; RAW DATA : 	text "뭐 내 여자친구가"
	line $09,$B4,$02,$DA,$07,$09,$08,$09,$01,$25,$06,$DF; RAW DATA : 	line "토닥여줄거야"
	done

_Route25BattleText4::
	text $06,$C8,$02,$87,$0B,$66; RAW DATA : 	text "안녕!"
	line $02,$4B,$7F,$02,$42,$07,$AA,$09,$03,$01,$88,$02,$C2,$7F,$09,$60,$0A,$78,$0B,$66; RAW DATA : 	line "내 남자친구는 쿨해!"
	done

_Route25EndBattleText4::
IF DEF(_YELLOW)
	text $06,$4D,$03,$E3,$0A,$61,$01,$01,$7F,$07,$34,$06,$EE,$0B,$66; RAW DATA : 	text "슬럼프가 왔어!"
ELSE
	text "I was in"
	line "bad condition!"
ENDC
	prompt

_Route25AfterBattleText4::
	text $02,$42,$07,$AA,$09,$03,$01,$88,$01,$01,$7F,$02,$6A,$7F,$07,$D4,$03,$15; RAW DATA : 	text "남자친구가 너 정도"
	line $09,$DE,$03,$E9,$07,$9C,$02,$6A,$04,$89,$7F,$07,$F1,$07,$8B,$09,$A9,$03,$05,$0B,$66; RAW DATA : 	line "트레이너면 좋을텐데!"
	done

_Route25BattleText5::
	text $02,$6A,$0A,$6F,$01,$4D,$7F,$06,$6E,$07,$66,$06,$DF; RAW DATA : 	text "너하고 싸워야"
	line $0A,$6F,$02,$C2,$01,$29,$7F,$06,$CB,$01,$4D,$07,$A6,$06,$FA,$02,$D9,$0B,$66; RAW DATA : 	line "하는걸 알고있었다!"
	done

_Route25EndBattleText5::
	text $02,$4B,$01,$01,$7F,$08,$2A,$01,$2D,$03,$97,$0A,$71; RAW DATA : 	text "내가 질것또한"
	line $06,$CB,$01,$4D,$7F,$07,$A6,$06,$FA,$02,$D9,$0B,$66; RAW DATA : 	line "알고 있었다!"
	prompt

_Route25AfterBattleText5::
	text $02,$77,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$0A,$A5,$03,$C5,$05,$C3,$09,$92,$02,$3A; RAW DATA : 	text "네 포켓몬이 혼란상태나"
	line $06,$26,$04,$89,$05,$C3,$09,$92,$01,$01,$7F,$03,$27,$04,$89,$7F,$01,$83,$08,$BC,$0A,$78,$04,$F6,$03,$F1,$0B,$66; RAW DATA : 	line "수면상태가 되면 교체해버려!"
	done

_Route25BattleText6::
	text $02,$4B,$7F,$09,$03,$01,$88,$07,$01,$01,$35; RAW DATA : 	text "내 친구에겐"
	line $01,$9D,$07,$09,$07,$4E,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$07,$A6,$06,$EE; RAW DATA : 	line "귀여운 포켓몬이 있어"
	cont $07,$2F,$07,$CC,$7F,$08,$2A,$09,$C5,$02,$3A,$0B,$66; RAW DATA : 	cont "완전 질투나!"
	done

_Route25EndBattleText6::
	text $08,$2A,$09,$C5,$02,$3D,$02,$D9,$01,$4D,$7F,$0A,$71,$01,$25; RAW DATA : 	text "질투난다고 한거"
	line $08,$EB,$06,$02,$06,$DF,$0B,$66; RAW DATA : 	line "취소야!"
	prompt

_Route25AfterBattleText6::
	text $02,$DE,$04,$62,$07,$9C,$05,$BA,$07,$01,$05,$DD,$7F,$07,$22,$01,$25,$08,$26,$0B,$67; RAW DATA : 	text "달맞이산에서 온거지?"
	line $0A,$A4,$06,$63,$7F,$05,$AF,$05,$AF,$7F,$06,$F2,$07,$8B,$06,$26,$7F,$07,$A6,$07,$8B,$01,$BE,$0B,$67; RAW DATA : 	line "혹시 삐삐 얻을수 있을까?"
	done

_Route25BattleText7::
	text $08,$26,$01,$AD,$7F,$04,$47,$7F,$02,$DE,$04,$62,$07,$9C,$05,$BA,$07,$01,$05,$DD; RAW DATA : 	text "지금 막 달맞이산에서"
	line $02,$4B,$03,$F1,$07,$22,$08,$9C,$07,$9C,$01,$B4,$0A,$78,$03,$15,$7F,$08,$08,$05,$61,$03,$26,$02,$D9,$0B,$66; RAW DATA : 	line "내려온참이긴해도 준비됐다!"
	done

_Route25EndBattleText7::
	text $02,$6A,$7F,$06,$F6,$08,$BB,$02,$3A,$01,$34; RAW DATA : 	text "너 엄청나게"
	line $05,$30,$04,$DF,$0A,$7F,$02,$77,$0B,$66; RAW DATA : 	line "분발했네!"
	prompt

_Route25AfterBattleText7::
	text $07,$D8,$07,$B5,$0B,$66; RAW DATA : 	text "젠장!"
	line $01,$25,$01,$B2,$05,$DD,$7F,$08,$06,$04,$EE,$0A,$71,$09,$A7,$7F,$03,$4E,$7F,$04,$B0,$03,$F8,$06,$EE; RAW DATA : 	line "거기서 주뱃한테 등 물렸어"
	done

_Route25BattleText8::
	text $07,$9C,$01,$67,$07,$01,$7F,$07,$20,$02,$C2,$01,$27,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$06,$26,$08,$2D,$01,$01,$04,$36; RAW DATA : 	text "이곳에 오는건 포켓몬 수집가를"
	line $04,$48,$02,$3A,$01,$B2,$7F,$07,$77,$0A,$78,$05,$DD,$08,$26,$0B,$66; RAW DATA : 	line "만나기 위해서지!"
	done

_Route25EndBattleText8::
	text $02,$E7,$0A,$78,$04,$F6,$03,$F8,$02,$77; RAW DATA : 	text "당해버렸네"
	line $0B,$6A,$0B,$6A; RAW DATA : 	line "……"
	prompt

_Route25AfterBattleText8::
	text $06,$26,$08,$2D,$01,$01,$0A,$71,$09,$A7; RAW DATA : 	text "수집가한테"
	line $0A,$F1,$01,$9D,$0A,$71,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$04,$49,$03,$05; RAW DATA : 	line "희귀한 포켓몬이 많데"
	done

_Route25BattleText9::
	text $02,$6A,$04,$4B,$07,$9C,$06,$DF,$7F,$07,$9C,$06,$26,$07,$B7,$7F,$04,$48,$02,$3A,$03,$DF; RAW DATA : 	text "너말이야 이수재 만나러"
	line $01,$01,$02,$C2,$08,$0F,$07,$9C,$08,$26,$0B,$67; RAW DATA : 	line "가는중이지?"
	cont $01,$A7,$07,$CC,$07,$01,$7F,$0A,$71,$09,$F7,$7F,$05,$39,$07,$AA,$0B,$66; RAW DATA : 	cont "그전에 한판 붙자!"
	done

_Route25EndBattleText9::
	text $02,$6A,$7F,$05,$18,$09,$BB,$02,$4B,$01,$B2,$01,$01; RAW DATA : 	text "너 보통내기가"
	line $06,$C6,$02,$CF,$02,$77; RAW DATA : 	line "아니네"
	prompt

_Route25AfterBattleText9::
	text $07,$9C,$01,$B6,$07,$8B,$7F,$03,$6B,$03,$C3,$01,$01,$04,$89; RAW DATA : 	text "이길을 따라가면"
	line $05,$4D,$04,$17,$06,$63,$09,$EC,$08,$6A,$7F,$08,$26,$04,$37,$01,$B6,$07,$9C,$06,$DF; RAW DATA : 	line "블루시티쪽 지름길이야"
	done

_Route25Text11::
	text $07,$9C,$01,$67,$07,$8A,$7F,$0A,$78,$05,$0F,$7F,$07,$20,$03,$2E,$04,$47; RAW DATA : 	text "이곳은 해변 오두막"
	line $07,$9C,$06,$26,$07,$B7,$07,$97,$7F,$08,$2D,$0B,$66; RAW DATA : 	line "이수재의 집!"
	done
