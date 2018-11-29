_KogaExplainToxicText::
	text $0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$04,$6D,$03,$16,$07,$01,$7F,$01,$29,$04,$3E,$04,$89; RAW DATA : 	text "포켓몬이 맹독에 걸리면"
	line $04,$E8,$09,$E2,$07,$9C,$7F,$01,$B6,$06,$EE,$08,$2A,$06,$26,$03,$FF; RAW DATA : 	line "배틀이 길어질수록"
	cont $02,$F5,$7F,$04,$49,$07,$8A,$7F,$03,$05,$04,$CC,$08,$26,$04,$36,$7F,$04,$DE,$02,$C2,$02,$D9,$0B,$66; RAW DATA : 	cont "더 많은 데미지를 받는다!"
	
	para $01,$A7,$06,$DF,$04,$4B,$03,$FE,$7F,$08,$28,$07,$D4,$0A,$71; RAW DATA : 	para "그야말로 진정한"
	line $01,$68,$0A,$27,$06,$4A,$03,$E1,$7F,$06,$C8,$01,$13,$02,$D9,$0B,$66; RAW DATA : 	line "공포스런 안개다!"
	done

_FuchsiaGymText9::
	text $02,$77,$01,$01,$7F,$08,$26,$01,$AD,$7F,$04,$DE,$07,$8A; RAW DATA : 	text "네가 지금 받은"
	line $0A,$6E,$09,$79,$04,$E8,$08,$26,$02,$C2,$7F,$02,$77,$7F,$0A,$27,$09,$2F,$04,$93,$07,$97; RAW DATA : 	line "핑크배지는 네 포켓몬의"
	cont $04,$E6,$06,$EE,$03,$F2,$07,$8B,$7F,$07,$23,$03,$F1,$08,$08,$02,$D9,$0B,$66; RAW DATA : 	cont "방어력을 올려준다!"

	para $01,$34,$02,$D9,$01,$01,$7F,$0A,$22,$05,$C3,$06,$63,$07,$01,$03,$15; RAW DATA : 	para "게다가 평상시에도"
	line $09,$F4,$03,$15,$09,$88,$01,$B2,$04,$36,$7F,$06,$B5,$06,$26,$7F,$07,$A6,$01,$34,$7F,$0A,$71,$02,$D9,$0B,$66; RAW DATA : 	line "파도타기를 쓸수 있게 한다!"

	para $06,$C6,$0B,$66,$7F,$07,$9C,$01,$2D,$03,$15,$7F,$01,$01,$07,$DE,$01,$01,$03,$C3,$0B,$66; RAW DATA : 	para "아! 이것도 가져가라!"
	done

_ReceivedTM06Text::
	text $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52, "는(은)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcf4b
	text $04,$36,$0B,$64,$07,$8B,$0B,$65,$7F,$06,$F2,$06,$FA,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	text "를(을) 얻었다!@@"

_TM06ExplanationText::
	db $0
	para $01,$B2,$06,$2A,$04,$73,$06,$65,$F6,$FC,$07,$01,$02,$C2; RAW DATA : 	para "기술머신06에는"
	line $04,$6D,$03,$16,$07,$9C,$7F,$03,$49,$06,$EE,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "맹독이 들어있다!"

	para $07,$9C,$01,$27,$7F,$04,$AB,$03,$F1,$7F,$FA,$F6,$F6,$02,$82,$7F,$03,$1F,$06,$C8; RAW DATA : 	para "이건 무려 400년 동안"
	line $07,$CC,$0A,$78,$07,$DE,$7F,$02,$4B,$03,$F1,$07,$22,$7F,$05,$61,$01,$B2,$08,$26,$0B,$66; RAW DATA : 	line "전해져 내려온 비기지!"
	done

_TM06NoRoomText::
	text $07,$9C,$7F,$07,$9C,$05,$C3,$07,$8A; RAW DATA : 	text "이 이상은"
	line $03,$49,$7F,$06,$26,$7F,$06,$F8,$06,$EE,$0B,$66; RAW DATA : 	line "들 수 없어!"
	done

_FuchsiaGymBattleText1::
	text $0A,$FB,$04,$48,$07,$9C,$7F,$07,$CC,$05,$2E,$01,$01; RAW DATA : 	text "힘만이 전부가"
	line $06,$C6,$02,$D1,$01,$2D,$07,$9C,$7F,$04,$D9,$03,$FE,$7F,$0A,$27,$09,$2F,$04,$93,$0B,$66; RAW DATA : 	line "아닌것이 바로 포켓몬!"

	para $01,$A7,$01,$2D,$07,$8A,$7F,$04,$D9,$03,$FE,$7F,$07,$CC,$03,$DB,$0B,$66; RAW DATA : 	para "그것은 바로 전략!"
	
	para $04,$AB,$06,$64,$0A,$6F,$01,$34,$7F,$0A,$FB,$07,$88,$03,$FE,$04,$48; RAW DATA : 	para "무식하게 힘으로만"
	line $04,$D0,$06,$EE,$05,$39,$07,$9C,$02,$C2,$01,$29; RAW DATA : 	line "밀어붙이는걸"
	cont $02,$4B,$7F,$07,$CC,$03,$DB,$07,$88,$03,$FE,$7F,$01,$3D,$09,$F4,$0A,$78,$08,$06,$08,$26,$0B,$66; RAW DATA : 	cont "내 전략으로 격파해주지!"
	done

_FuchsiaGymEndBattleText1::
	text $04,$B9,$06,$DF,$0B,$67; RAW DATA : 	text "뭐야?"
	line $07,$9C,$03,$E2,$04,$3E,$01,$01,$7F,$06,$F8,$06,$EE,$0B,$66; RAW DATA : 	line "이럴리가 없어!"
	prompt

_FuchsiaGymAfterBattleText1::
	text $01,$A7,$03,$D8,$01,$8A; RAW DATA : 	text "그랬군"
	line $03,$2E,$02,$9A,$07,$2D,$7F,$08,$BC,$03,$F2,$07,$8B,$7F,$01,$43,$05,$61,$0A,$71,$01,$27,$01,$01,$0B,$67; RAW DATA : 	line "두뇌와 체력을 겸비한건가?"
	cont $07,$F1,$07,$8A,$7F,$07,$CC,$03,$DB,$07,$9C,$06,$DF,$0B,$66; RAW DATA : 	cont "좋은 전략이야!"
	done

_FuchsiaGymBattleText2::
	text $02,$3D,$7F,$02,$D1,$07,$AA,$01,$01,$7F,$03,$27,$02,$C2,$01,$34; RAW DATA : 	text "난 닌자가 되는게"
	line $02,$0E,$07,$9C,$03,$C3,$05,$DD,$7F,$07,$9C,$7F,$08,$BC,$07,$80,$01,$6C,$07,$01,$7F,$07,$34,$06,$EE,$0B,$66; RAW DATA : 	line "꿈이라서 이 체육관에 왔어!"
	done

_FuchsiaGymEndBattleText2::
	text $02,$4B,$7F,$07,$0A,$0A,$72,$07,$8A; RAW DATA : 	text "내 역할은"
	line $07,$09,$01,$B2,$01,$BE,$08,$26,$0B,$66; RAW DATA : 	line "여기까지!"
	prompt
_FuchsiaGymAfterBattleText2::
	text $02,$D1,$07,$AA,$7F,$04,$46,$06,$4A,$09,$9D,$07,$9E,$7F,$03,$16,$06,$26,$02,$D4,$07,$01,$01,$34; RAW DATA : 	text "닌자 마스터인 독수님에게"
	line $06,$D5,$07,$88,$03,$FE,$7F,$01,$48,$06,$03; RAW DATA : 	line "앞으로 계속"
	cont $01,$01,$04,$33,$09,$07,$07,$8B,$7F,$04,$DE,$07,$8B,$01,$25,$06,$DF,$0B,$66; RAW DATA : 	cont "가르침을 받을거야!"
	done
_FuchsiaGymBattleText3::
	text $06,$EE,$03,$60,$0A,$71,$04,$F8; RAW DATA : 	text "어디한번"
	line $02,$4B,$7F,$09,$DF,$05,$10,$7F,$05,$61,$01,$B2,$04,$36; RAW DATA : 	line "내 특별 비기를"
	cont $01,$CA,$05,$21,$0B,$66; RAW DATA : 	cont "깨봐!"
	done

_FuchsiaGymEndBattleText3::
	text $07,$9C,$01,$25,$7F,$06,$C6,$08,$06; RAW DATA : 	text "이거 아주"
	line $07,$4C,$06,$60,$01,$34,$7F,$03,$26,$02,$77,$0B,$66; RAW DATA : 	line "우습게 됐네!"
	prompt

_FuchsiaGymAfterBattleText3::
	text $02,$4B,$01,$01,$7F,$07,$F1,$06,$C6,$0A,$6F,$02,$C2,$7F,$01,$B2,$06,$2A,$07,$8A; RAW DATA : 	text "내가 좋아하는 기술은"
	line $03,$16,$01,$6A,$7F,$07,$B1,$03,$4A,$7F,$01,$B2,$06,$2A,$07,$9C,$06,$DF; RAW DATA : 	line "독과 잠듦 기술이야"
	cont $04,$E8,$09,$E2,$0A,$C4,$07,$01,$03,$15,$7F,$08,$26,$06,$03,$07,$9C,$7F,$03,$27,$02,$CF,$01,$C1,$0B,$66; RAW DATA : 	cont "배틀후에도 지속이 되니깐!"
	done

_FuchsiaGymBattleText4::
	text $01,$25,$01,$B2,$7F,$01,$F4,$08,$36,$04,$46,$0B,$66; RAW DATA : 	text "거기 꼼짝마!"

	para $07,$9C,$01,$67,$07,$01,$7F,$07,$A6,$02,$C2; RAW DATA : 	para "이곳에 있는"
	line $05,$18,$07,$9C,$08,$26,$7F,$06,$CA,$02,$C2,$7F,$07,$B5,$05,$0E,$07,$9C; RAW DATA : 	line "보이지 않는 장벽이"
	cont $0A,$A5,$03,$C5,$06,$4A,$03,$E4,$08,$26,$0B,$67; RAW DATA : 	cont "혼란스럽지?"
	done

_FuchsiaGymEndBattleText4::
	text $0A,$D6,$07,$7F; RAW DATA : 	text "휘유"
	line $0A,$78,$02,$62,$01,$8A,$0B,$66; RAW DATA : 	line "해냈군!"
	prompt
_FuchsiaGymAfterBattleText4::
	text $07,$D4,$04,$4B,$7F,$07,$9E,$05,$C3,$07,$CB,$07,$9C,$07,$14,$06,$EE,$0B,$66; RAW DATA : 	text "정말 인상적이였어!"
	line $0A,$F9,$09,$DE,$04,$36,$7F,$08,$06,$04,$46,$0B,$66; RAW DATA : 	line "힌트를 주마!"

	para $06,$C8,$7F,$05,$18,$07,$9C,$02,$C2,$7F,$05,$0E; RAW DATA : 	para "안 보이는 벽"
	line $05,$B7,$07,$9C,$07,$01,$7F,$07,$A6,$02,$C2,$7F,$09,$E4,$05,$C5,$04,$36; RAW DATA : 	line "사이에 있는 틈새를"
	cont $07,$7F,$06,$69,$0A,$F7,$7F,$05,$18,$03,$F5,$0B,$66; RAW DATA : 	cont "유심히 보렴!"
	done

_FuchsiaGymBattleText5::
	text $02,$3A,$7F,$07,$0A,$06,$63,$7F,$03,$16,$06,$26,$02,$D4,$01,$6A,$7F,$0A,$74,$01,$E2; RAW DATA : 	text "나 역시 독수님과 함께"
	line $02,$D1,$07,$AA,$07,$97,$7F,$01,$B6,$07,$8B,$7F,$06,$26,$0A,$80,$08,$0F,$07,$9E,$7F,$04,$96,$0B,$66; RAW DATA : 	line "닌자의 길을 수행중인 몸!"

	para $02,$D1,$07,$AA,$02,$C2,$7F,$07,$20,$03,$D1,$09,$B4,$03,$FF; RAW DATA : 	para "닌자는 오래토록"
	line $03,$1F,$04,$B0,$07,$8B,$7F,$05,$2E,$03,$F1,$07,$22; RAW DATA : 	line "동물을 부려온"
	cont $07,$0A,$05,$B7,$01,$01,$7F,$07,$A6,$08,$26,$0B,$66; RAW DATA : 	cont "역사가 있지!"
	done

_FuchsiaGymEndBattleText5::
	text $06,$C6,$07,$20,$07,$20,$07,$20,$0B,$68,$0B,$66; RAW DATA : 	text "아오오오-!"
	prompt

_FuchsiaGymAfterBattleText5::
	text $02,$3D,$7F,$07,$09,$07,$CC,$0A,$F7; RAW DATA : 	text "난 여전히"
	line $04,$E8,$07,$4F,$01,$34,$7F,$04,$49,$01,$8A,$0B,$66; RAW DATA : 	line "배울게 많군!"
	done

_FuchsiaGymBattleText6::
	text $03,$16,$06,$26,$7F,$01,$6C,$07,$B5,$02,$D4,$07,$8A; RAW DATA : 	text "독수 관장님은"
	line $07,$E7,$05,$18,$07,$A6,$02,$C2,$7F,$02,$D1,$07,$AA,$01,$01,$04,$AE; RAW DATA : 	line "족보있는 닌자가문"
	cont $07,$9F,$07,$E7,$07,$9C,$05,$F5,$0B,$66; RAW DATA : 	cont "일족이셔!"

	para $02,$6A,$02,$C2,$7F,$04,$AB,$06,$4C,$7F,$01,$01,$04,$AE; RAW DATA : 	para "너는 무슨 가문"
	line $0A,$C4,$07,$19,$02,$64,$0B,$67; RAW DATA : 	line "후예냐?"
	done

_FuchsiaGymEndBattleText6::
	text $02,$4B,$7F,$04,$93,$06,$4A,$09,$9D,$05,$1C,$07,$8B; RAW DATA : 	text "내 몬스터볼을"
	line $03,$83,$06,$EE,$03,$AF,$03,$F8,$02,$D9,$0B,$66; RAW DATA : 	line "떨어뜨렸다!"
	prompt

_FuchsiaGymAfterBattleText6::
	text $05,$6B,$07,$01,$05,$DD,$7F,$07,$20,$02,$C2,$07,$AA,$07,$2D; RAW DATA : 	text "빛에서 오는자와"
	line $01,$A7,$04,$42,$07,$AA,$07,$01,$05,$DD,$7F,$07,$20,$02,$C2,$07,$AA,$02,$C2; RAW DATA : 	line "그림자에서 오는자는"
	cont $0A,$77,$05,$C3,$7F,$07,$A6,$01,$B2,$7F,$04,$46,$03,$F3,$0B,$66; RAW DATA : 	cont "항상 있기 마련!"

	para $02,$6A,$02,$C2,$7F,$06,$EE,$02,$C0,$08,$6A,$07,$9E,$01,$01,$0B,$66; RAW DATA : 	para "너는 어느쪽인가!"
	done

_FuchsiaGymText_7564e::
	text $07,$44,$0B,$66; RAW DATA : 	text "요!"
	line $04,$CC,$03,$D1,$07,$97,$7F,$08,$A8,$0A,$67,$06,$F0,$0B,$66; RAW DATA : 	line "미래의 챔피언!"

	para $07,$0C,$05,$30,$0A,$AB,$06,$63,$09,$EC,$7F,$0A,$0B,$08,$21,$07,$8A; RAW DATA : 	para "연분홍시티 퍼즐은"
	line $09,$C5,$04,$8D,$0A,$71,$7F,$05,$0E,$07,$88,$03,$FE,$7F,$03,$27,$06,$EE,$7F,$07,$A6,$06,$EE,$0B,$66; RAW DATA : 	line "투명한 벽으로 되어 있어!"
	
	para $03,$16,$06,$26,$01,$6C,$07,$B5,$07,$8A,$7F,$01,$01,$01,$BE,$07,$9C,$07,$01,$7F,$07,$A6,$07,$8B,$08,$26,$03,$C3,$03,$15; RAW DATA : 	para "독수관장은 가까이에 있을지라도"
	line $09,$3A,$06,$D5,$07,$01,$7F,$03,$2E,$01,$4D,$7F,$01,$B6,$07,$9C,$7F,$04,$47,$0A,$94,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "코앞에 두고 길이 막혀있다!"
	
	para $01,$6C,$07,$B5,$07,$01,$01,$34,$7F,$01,$01,$01,$B2,$07,$77,$0A,$78,$05,$DD,$02,$C2; RAW DATA : 	para "관장에게 가기위해서는"
	line $07,$CA,$7F,$05,$0E,$07,$97,$7F,$09,$E4,$05,$C5,$04,$36,$7F,$08,$A3,$06,$C6,$01,$01,$06,$DF,$0A,$78,$0B,$66; RAW DATA : 	line "저 벽의 틈새를 찾아가야해!"
	done
_FuchsiaGymText_75653::
	text $08,$26,$01,$AD,$01,$BE,$08,$26,$03,$15,$7F,$02,$D1,$07,$AA,$03,$C3,$02,$C2,$7F,$07,$E8,$07,$B7,$01,$01; RAW DATA : 	text "지금까지도 닌자라는 존재가"
	line $01,$46,$07,$3C,$07,$97,$7F,$02,$EB,$05,$C3,$07,$9C,$7F,$03,$29,$06,$26,$7F,$07,$A6,$02,$D9,$02,$C2,$7F,$01,$34; RAW DATA : 	line "경외의 대상이 될수 있다는 게"
	cont $02,$8E,$03,$C3,$07,$4E,$01,$29,$0B,$66; RAW DATA : 	cont "놀라운걸!"
	done
