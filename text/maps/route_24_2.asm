_Route24EndBattleText1::
	text $07,$9C,$03,$E1,$01,$29; RAW DATA : 	text "이런걸"
	line $05,$CD,$01,$02,$0A,$71,$01,$34,$7F,$06,$C6,$02,$CF,$07,$14,$02,$C2,$03,$05,$0B,$66; RAW DATA : 	line "생각한게 아니였는데!"
	prompt

_Route24AfterBattleText1::
	text $02,$D9,$04,$3E,$07,$77,$07,$01,$7F,$07,$A6,$02,$C2,$7F,$05,$B7,$03,$C7,$03,$49,$07,$9C; RAW DATA : 	text "다리위에 있는 사람들이"
	line $01,$2C,$08,$08,$04,$D9,$03,$C7,$07,$01,$7F,$06,$2B,$06,$EE,$7F,$07,$A6,$06,$FA,$06,$EE,$0B,$66; RAW DATA : 	line "겁준바람에 숨어 있었어!"
	done

_Route24BattleText2::
	text $07,$F1,$06,$D2,$06,$EE,$0B,$66,$7F,$02,$3A,$02,$C2,$7F,$02,$71,$04,$F6,$FB,$0B,$66; RAW DATA : 	text "좋았어! 나는 넘버5!"
	line $08,$2E,$04,$E2,$06,$C6,$7F,$08,$06,$01,$3A,$06,$EE,$0B,$66; RAW DATA : 	line "짓밟아 주겠어!"
	done

_Route24EndBattleText2::
	text $07,$4C,$07,$2D,$0B,$66; RAW DATA : 	text "우와!"
	line $04,$AB,$08,$26,$04,$47,$0A,$78,$0B,$66; RAW DATA : 	line "무지막해!"
	prompt

_Route24AfterBattleText2::
	text $08,$D6,$05,$E1,$07,$8B,$7F,$02,$D9,$0A,$7F,$07,$88,$02,$CF; RAW DATA : 	text "최선을 다했으니"
	line $0A,$C4,$0A,$B8,$02,$C2,$7F,$06,$F8,$06,$EE,$0B,$66; RAW DATA : 	line "후회는 없어!"
	done

_Route24BattleText3::
	text $02,$71,$04,$F6,$FA; RAW DATA : 	text "넘버4"!"
	line $06,$4D,$06,$4D,$7F,$08,$26,$09,$05,$03,$F1,$02,$3A,$0B,$67; RAW DATA : 	line "슬슬 지칠려나?"
	done

_Route24EndBattleText3::
	text $02,$3A,$03,$15,$7F,$07,$E3,$02,$77,$0B,$66; RAW DATA : 	text "나도 졌네!"
	prompt

_Route24AfterBattleText3::
	text $07,$CC,$03,$F2,$07,$8B,$7F,$02,$D9,$0A,$7F,$01,$B2,$07,$01; RAW DATA : 	text "전력을 다했기에"
	line $0A,$C4,$0A,$B8,$02,$C2,$7F,$06,$F8,$01,$8A,$0B,$66; RAW DATA : 	line "후회는 없군!"
	done

_Route24BattleText4::
	text $07,$09,$01,$B2,$7F,$02,$71,$04,$F6,$F9,$7F,$01,$09,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	text "여기 넘버3 갑니다!"
	line $04,$48,$04,$48,$09,$01,$7F,$06,$CA,$07,$8B,$01,$2C,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "만만치 않을겁니다!"
	done

_Route24EndBattleText4::
	text $06,$EE,$0A,$DE,$0B,$66; RAW DATA : 	text "어휴!"
	line $0A,$8A,$04,$DF,$7F,$01,$8C,$03,$F8,$02,$77,$0B,$66; RAW DATA : 	line "헛발 굴렸네!"
	prompt

_Route24AfterBattleText4::
	text $07,$CC,$03,$F2,$07,$8B,$7F,$02,$D9,$0A,$7F,$01,$B2,$07,$01; RAW DATA : 	text "전력을 다했기에"
	line $0A,$C4,$0A,$B8,$02,$C2,$7F,$06,$F8,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "후회는 없습니다!"
	done

_Route24BattleText5::
	text $02,$3A,$02,$C2,$06,$DF,$7F,$02,$71,$04,$F6,$09,$C5,$0B,$66; RAW DATA : 	text "나는야 넘버투!"
	line $02,$3D,$7F,$08,$26,$01,$AD,$7F,$08,$28,$08,$26,$0A,$78,$0B,$66; RAW DATA : 	line "난 지금 진지해!"
	done

_Route24EndBattleText5::
	text $06,$EE,$03,$81,$01,$34,$7F,$02,$4B,$01,$01; RAW DATA : 	text "어떡게 내가"
	line $08,$28,$01,$25,$08,$26,$0B,$67; RAW DATA : 	line "진거지?"
	prompt

_Route24AfterBattleText5::
	text $08,$D6,$05,$E1,$07,$8B,$7F,$02,$D9,$0A,$71,$01,$25,$03,$C3; RAW DATA : 	text "최선을 다한거라"
	line $0A,$C4,$0A,$B8,$0A,$6F,$08,$26,$7F,$06,$CA,$06,$C6,$0B,$66; RAW DATA : 	line "후회하지 않아!"
	done

_Route24BattleText6::
	text $07,$9C,$01,$67,$07,$8A,$7F,$02,$6A,$01,$39,$7F,$05,$4A,$04,$44,$08,$26,$0B,$66; RAW DATA : 	text "이곳은 너겟 브릿지!"
	line $09,$DE,$03,$E9,$07,$9C,$02,$6A,$7F,$FB,$04,$8D,$07,$8B,$7F,$07,$9C,$01,$B2,$04,$89; RAW DATA : 	line "트레이너 5명을 이기면"
	cont $0A,$A3,$0A,$AD,$05,$C3,$0A,$40,$07,$8B,$7F,$08,$25,$07,$09,$0A,$78,$08,$06,$08,$26,$0B,$66; RAW DATA : 	cont "호화상품을 증여해주지!"
;너켓 브릿지 찾아야 할듯 금다리?
	para $04,$B9,$04,$36,$7F,$04,$DE,$07,$8B,$01,$25; RAW DATA : 	para "뭐를 받을거"
	line $01,$10,$06,$C6,$0B,$67; RAW DATA : 	line "같아?"
	done

_Route24EndBattleText6::
	text $07,$7F,$0A,$C4,$0B,$66; RAW DATA : 	text "유후!"
	line $02,$EB,$04,$B0,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	line "대물이다!"
	prompt

_Route24AfterBattleText6::
	text $02,$3A,$03,$FE,$06,$83,$7F,$08,$D6,$05,$E1,$07,$8B,$7F,$02,$D9,$0A,$7F,$01,$4D; RAW DATA : 	text "나로썬 최선을 다했고"
	line $06,$C6,$06,$3C,$07,$4E,$01,$27,$7F,$06,$F8,$06,$EE,$0B,$66; RAW DATA : 	line "아쉬운건 없어!"
	done
