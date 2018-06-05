INCLUDE "charmap.asm"
INCLUDE "constants/text_constants.asm"
TEXT_1  EQU $20
TEXT_2  EQU TEXT_1 + 1
TEXT_3  EQU TEXT_2 + 1
TEXT_4  EQU TEXT_3 + 1
TEXT_5  EQU TEXT_4 + 1
TEXT_6  EQU TEXT_5 + 1
TEXT_7  EQU TEXT_6 + 1
TEXT_8  EQU TEXT_7 + 1
TEXT_9  EQU TEXT_8 + 1
TEXT_10 EQU TEXT_9 + 1
TEXT_11 EQU TEXT_10 + 1

POKEDEX_TEXT EQU TEXT_11 + 1
MOVE_NAMES   EQU POKEDEX_TEXT + 1

INCLUDE "macros.asm"
INCLUDE "hram.asm"


SECTION "Text 1", ROMX, BANK[TEXT_1]

_CardKeySuccessText1::
	text $03,$69,$03,$1F,$0B,$66,$50,$50; RAW DATA : 	text "딩동!@@"

_CardKeySuccessText2::
	text ""
	line $09,$0B,$03,$45,$09,$80,$03,$FE; RAW DATA : 	line "카드키로"
	cont $04,$AE,$07,$8B,$7F,$07,$0D,$06,$FA,$02,$D9,$0B,$66; RAW DATA : 	cont "문을 열었다!"
	done

_CardKeyFailText::
	text $07,$9C,$03,$E1,$0B,$66; RAW DATA : 	text "이런!"
	line $09,$0B,$03,$45,$09,$80,$01,$01,$7F,$0A,$6A,$07,$44,$0A,$71,$01,$2D,$7F,$01,$10,$02,$D9,$0B,$66; RAW DATA : 	line "카드키가 필요한것 같다!"
	done

_TrainerNameText::
	TX_RAM wcd6d
	text $0B,$62,$50,$50; RAW DATA : 	text $0B,$62,"@@"

_NoNibbleText::
	text $06,$C6,$04,$AB,$01,$2D,$03,$15,$7F,$07,$B2,$0A,$F7,$08,$26,$7F,$06,$CA,$02,$C2,$02,$D9,$0B,$66; RAW DATA : 	text "아무것도 잡히지 않는다!";낚시관련 시스템 문장
	prompt

_NothingHereText::
	text $07,$9C,$01,$67,$07,$01,$02,$C2,$7F,$06,$C6,$04,$AB,$01,$2D,$03,$15; RAW DATA : 	text "이곳에는 아무것도"
	line $06,$F8,$02,$C2,$7F,$01,$2D,$7F,$01,$10,$02,$D9; RAW DATA : 	line "없는 것 같다"
	prompt


_ItsABiteText::
	text $06,$EE,$0B,$66; RAW DATA : 	text "어!"
	line $04,$BA,$01,$01,$7F,$04,$B0,$06,$FA,$02,$D9,$0B,$66; RAW DATA : 	line "뭔가 물었다!"
	prompt

_ExclamationText::
	text $0B,$66; RAW DATA : 	text "!"
	done

_GroundRoseText::
	text $06,$EE,$03,$60,$05,$E1,$01,$01; RAW DATA : 	text "어디선가"
	line $08,$26,$04,$89,$07,$9C,$7F,$06,$0A,$06,$C6,$07,$23,$03,$CA,$02,$D9,$0B,$66; RAW DATA : 	line "지면이 솟아올랐다!"
	done

_BoulderText::
	;text $93,$A7,$A8,$B2,$7F,$B1,$A4,$B0,$B4,$A8,$B1,$A4,$B2; RAW DATA : 	;text "This requires"
	;line $92,$93,$91,$84,$8D,$86,$93,$87,$7F,$B3,$AE,$7F,$AC,$AE,$B5,$A4,$0B,$66; RAW DATA : 	;line "STRENGTH to move!"
	text $09,$1F,$02,$D9,$03,$C5,$7F,$04,$D9,$07,$77,$08,$26,$04,$48,$0B,$6A,$0B,$6A
	line $0A,$27,$09,$2F,$04,$93,$07,$97,$7F,$01,$B2,$06,$2A,$03,$FE,$7F,$04,$D0,$7F,$06,$26,$7F,$07,$A6,$07,$8B,$08,$26,$03,$15,$0B,$67
	;text $09,$1F,$02,$D9,$03,$C5,$7F,$04,$D9,$07,$77,$08,$26,$04,$48,$0B,$6A,$0B,$6A; RAW DATA : 	;text "커다란 바위지만……"
	;line $0A,$27,$09,$2F,$04,$93,$07,$97,$7F,$01,$B2,$06,$2A,$03,$FE,$7F,$04,$D0,$7F,$06,$26,$7F,$07,$A6,$07,$8B,$08,$26,$03,$15,$0B,$67; RAW DATA : 	;line "포켓몬의 기술로 밀 수 있을지도?"
	done

_MartSignText::
	text $0A,$27,$09,$2F,$04,$93,$7F,$05,$C3,$0A,$40,$07,$9C,$03,$C3,$04,$89
	line $0A,$61,$03,$EB,$03,$49,$04,$3E,$06,$23
	;text $0A,$27,$09,$2F,$04,$93,$7F,$05,$C3,$0A,$40,$07,$9C,$03,$C3,$04,$89; RAW DATA : 	;text "포켓몬 상품이라면"
	;line $0A,$61,$03,$EB,$03,$49,$04,$3E,$06,$23; RAW DATA : 	;line "프렌들리숍"
	done

_PokeCenterSignText::
	;text $0A,$27,$09,$2F,$04,$93,$07,$97,$7F,$08,$BC,$03,$F2,$0A,$B8,$05,$19,$0B,$66; RAW DATA : 	;text "포켓몬의 체력회복!"
	;line $0A,$27,$09,$2F,$04,$93,$7F,$05,$EE,$09,$9D; RAW DATA : 	;line "포켓몬 센터"
		text $0A,$27,$09,$2F,$04,$93,$07,$97,$7F,$08,$BC,$03,$F2,$0A,$B8,$05,$19,$0B,$66
	line $0A,$27,$09,$2F,$04,$93,$7F,$05,$EE,$09,$9D
	done

_FoundItemText::
	text $52,$02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52,$02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52,$02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52,"는(은)"
	line $50; RAW DATA : 	line $50; RAW DATA : 	line $50; RAW DATA : 	line "@"
	TX_RAM wcf4b
	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text "를(을)"
	cont $04,$DF,$01,$3F,$0A,$7F,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	cont $04,$DF,$01,$3F,$0A,$7F,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	cont $04,$DF,$01,$3F,$0A,$7F,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	cont "발견했다!@@"

_NoMoreRoomForItemText::
	text $07,$9C,$7F,$07,$9C,$05,$C3,$07,$8A,$7F,$03,$49,$7F,$06,$26; RAW DATA : 	text "이 이상은 들 수"
	line $06,$F8,$06,$EE,$0B,$66; RAW DATA : 	line "없어!"
	done
;수정해야됨
_OaksAideHiText::
	text $06,$C8,$02,$87,$0A,$6F,$05,$EC,$07,$44,$0B,$66,$7F,$01,$B2,$06,$EF,$0A,$6F,$06,$63,$02,$3A,$07,$44,$0B,$67; RAW DATA : 	text "안녕하세요! 기억하시나요?"
	line $07,$CC,$7F,$07,$20,$04,$DA,$05,$B7,$02,$D4,$07,$97,$7F,$07,$E6,$06,$26,$07,$19,$07,$44,$0B,$66; RAW DATA : 	line "전 오박사님의 조수예요!"

	para $0A,$96,$07,$B7,$7F,$50; RAW DATA : 	para "현재 @"
	TX_NUM hOaksAideRequirement, 1, 3
	text $07,$EE,$04,$29,$07,$97; RAW DATA : 	text "종류의"
	line $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$07,$B2,$07,$88,$05,$FC,$02,$77,$07,$44; RAW DATA : 	line "포켓몬을 잡으셨네요"
	cont $01,$A7,$03,$E1,$7F,$02,$E7,$06,$65,$07,$01,$01,$34,$0B,$66; RAW DATA : 	cont "그런 당신에게!"
	cont $07,$D6,$01,$01,$7F,$08,$09,$7F,$04,$B0,$01,$27,$07,$8A,$0B,$66; RAW DATA : 	cont "제가 줄 물건은!"
	cont $50; RAW DATA : 	cont "@"
	TX_RAM wOaksAideRewardItemName
	text $07,$A4,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	text "입니다!"

	para $52,$01,$8A,$0B,$66; RAW DATA : 	para $52,"군!"
	line $07,$9C,$07,$D6,$7F,$02,$E7,$06,$65,$07,$9C,$7F,$07,$B2,$06,$C6,$06,$DF,$7F,$0A,$72,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8A; RAW DATA : 	line "이제 당신이 잡아야 할 포켓몬은"
	cont $50; RAW DATA : 	cont "@"
	TX_NUM hOaksAideRequirement, 1, 3
	text $07,$EE,$04,$29,$02,$77,$07,$44,$0B,$66; RAW DATA : 	text "종류네요!""
	done

_OaksAideUhOhText::
	text $06,$EE,$03,$60,$05,$18,$07,$AA,$0B,$6A,$0B,$6A; RAW DATA : 	text "어디보자……"
	line $07,$20,$0A,$A3,$03,$C3,$0B,$66; RAW DATA : 	line "오호라!"
	cont $02,$E7,$06,$65,$7F,$07,$B2,$07,$8A,$01,$27,$7F,$50; RAW DATA : 	cont "당신 잡은건 @"
	TX_NUM hOaksAideNumMonsOwned, 1, 3
	text $07,$EE,$04,$29,$07,$97; RAW DATA : 	text "종류의"
	cont $0A,$27,$09,$2F,$04,$93,$07,$9C,$01,$8A,$07,$44,$0B,$66; RAW DATA : 	line "포켓몬이군요!"

	para $07,$D6,$01,$01,$7F,$04,$B0,$01,$27,$07,$8B,$7F,$08,$06,$01,$B2,$7F,$07,$77,$0A,$78,$05,$DD,$02,$C2; RAW DATA : 	para "제가 물건을 주기 위해서는"
	line $50; RAW DATA : 	line "@"
	TX_NUM hOaksAideRequirement, 1, 3
	text $07,$EE,$04,$29,$07,$97,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C; RAW DATA : 	text "종류의 포켓몬이"
	cont $02,$F5,$7F,$0A,$6A,$07,$44,$0A,$72,$01,$25,$7F,$01,$10,$02,$77,$07,$44; RAW DATA : 	cont "더 필요할거 같네요"
	cont $01,$A7,$03,$DF,$04,$89,$7F,$07,$D6,$01,$01; RAW DATA : 	cont "그러면 제가"
	cont $50; RAW DATA : 	cont "@"
	TX_RAM wOaksAideRewardItemName
	text $04,$36,$0B,$64,$07,$8B,$0B,$65,$7F,$03,$45,$04,$3E,$08,$02; RAW DATA : 	text "를(을) 드리죠"
	done

_OaksAideComeBackText::
	text $02,$77,$7F,$06,$CB,$01,$3A,$06,$60,$02,$CF,$02,$D9; RAW DATA : 	text "네 알겠습니다"

	para $50; RAW DATA : 	para "@"
	TX_NUM hOaksAideRequirement, 1, 3
	text $07,$EE,$04,$29,$07,$8B,$7F,$03,$15,$01,$08,$07,$01,$7F,$08,$A4,$07,$4C,$04,$89; RAW DATA : 	text "종류을 도감에 채우면"
	line $02,$D9,$06,$63,$7F,$07,$2D,$05,$DD; RAW DATA : 	line "다시 와서"
	cont $50; RAW DATA : 	cont "@"
	TX_RAM wOaksAideRewardItemName
	text $04,$36,$0B,$64,$07,$8B,$0B,$65,$7F,$04,$DE,$06,$C6,$01,$01,$05,$EC,$07,$44; RAW DATA : 	text "를(을) 받아가세요"
	done

_OaksAideHereYouGoText::
	text $02,$8E,$03,$C3,$07,$66,$0B,$66; RAW DATA : 	text "놀라워!"
	line $50; RAW DATA : 	line "@"
	TX_NUM hOaksAideNumMonsOwned, 1, 3
	text $07,$EE,$04,$29,$07,$97,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$07,$B2,$07,$88,$05,$FC,$01,$8A,$07,$44,$0B,$66; RAW DATA : 	text "종류의 포켓몬을 잡으셨군요!"
	cont $08,$E0,$0A,$6F,$0A,$78,$07,$44,$0B,$66; RAW DATA : 	cont "축하해요!"

	para $07,$9C,$01,$29,$7F,$04,$DE,$07,$88,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	para "이걸 받으세요!"
	prompt

_OaksAideGotItemText::
	text $52, $07,$8A,$0B,$64,$02,$C2,$0B,$65; RAW DATA : 	text $52, "은(는)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wOaksAideRewardItemName
	text $04,$36,$0B,$64,$07,$8B,$0B,$65,$7F,$04,$DE,$06,$D2,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	text "를(을) 받았다!@@"

_OaksAideNoRoomText::
	text $06,$C6,$07,$9C,$01,$4D,$0B,$66; RAW DATA : 	text "아이고!"
	line $01,$A7,$7F,$07,$9C,$05,$C3,$07,$8A,$7F,$08,$26,$02,$D2,$06,$26,$7F,$06,$F8,$06,$EE,$05,$DD; RAW DATA : 	line "그 이상은 지닐수 없어서"
	cont $50; RAW DATA : 	cont "@"
	TX_RAM wOaksAideRewardItemName
	text $04,$36,$0B,$64,$07,$8B,$0B,$65,$7F,$04,$98,$7F,$04,$DE,$01,$3A,$02,$C2,$03,$05,$07,$44; RAW DATA : 	text "를(을) 못 받겠는데요"
	done

INCLUDE "text/maps/viridian_forest.asm"
INCLUDE "text/maps/mt_moon_1f.asm"
INCLUDE "text/maps/mt_moon_b1f.asm"
INCLUDE "text/maps/mt_moon_b2f.asm"
INCLUDE "text/maps/ss_anne_1.asm"
INCLUDE "text/maps/ss_anne_2.asm"
INCLUDE "text/maps/ss_anne_3.asm"
INCLUDE "text/maps/ss_anne_5.asm"
INCLUDE "text/maps/ss_anne_6.asm"
INCLUDE "text/maps/ss_anne_7.asm"
INCLUDE "text/maps/ss_anne_8.asm"
INCLUDE "text/maps/ss_anne_9.asm"
INCLUDE "text/maps/ss_anne_10.asm"
INCLUDE "text/maps/victory_road_3f.asm"
INCLUDE "text/maps/rocket_hideout_b1f.asm"
INCLUDE "text/maps/rocket_hideout_b2f.asm"
INCLUDE "text/maps/rocket_hideout_b3f.asm"
INCLUDE "text/maps/rocket_hideout_b4f.asm"
INCLUDE "text/maps/rocket_hideout_elevator.asm"
INCLUDE "text/maps/silph_co_2f.asm"
INCLUDE "text/maps/silph_co_3f.asm"
INCLUDE "text/maps/silph_co_4f.asm"
INCLUDE "text/maps/silph_co_5f_1.asm"


SECTION "Text 2", ROMX, BANK[TEXT_2]

INCLUDE "text/maps/silph_co_5f_2.asm"
INCLUDE "text/maps/silph_co_6f.asm"
INCLUDE "text/maps/silph_co_7f.asm"
INCLUDE "text/maps/silph_co_8f.asm"
INCLUDE "text/maps/silph_co_9f.asm"
INCLUDE "text/maps/silph_co_10f.asm"
INCLUDE "text/maps/silph_co_11f.asm"
INCLUDE "text/maps/mansion_2f.asm"
INCLUDE "text/maps/mansion_3f.asm"
INCLUDE "text/maps/mansion_b1f.asm"
INCLUDE "text/maps/safari_zone_east.asm"
INCLUDE "text/maps/safari_zone_north.asm"
INCLUDE "text/maps/safari_zone_west.asm"
INCLUDE "text/maps/safari_zone_center.asm"
INCLUDE "text/maps/safari_zone_rest_house_1.asm"
INCLUDE "text/maps/safari_zone_secret_house.asm"
INCLUDE "text/maps/safari_zone_rest_house_2.asm"
INCLUDE "text/maps/safari_zone_rest_house_3.asm"
INCLUDE "text/maps/safari_zone_rest_house_4.asm"
INCLUDE "text/maps/unknown_dungeon_b1f.asm"
INCLUDE "text/maps/victory_road_1f.asm"
INCLUDE "text/maps/lance.asm"
INCLUDE "text/maps/hall_of_fame.asm"
INCLUDE "text/maps/champion.asm"
INCLUDE "text/maps/lorelei.asm"
INCLUDE "text/maps/bruno.asm"
INCLUDE "text/maps/agatha.asm"
INCLUDE "text/maps/rock_tunnel_b2f_1.asm"


SECTION "Text 3", ROMX, BANK[TEXT_3]

INCLUDE "text/maps/rock_tunnel_b2f_2.asm"
INCLUDE "text/maps/seafoam_islands_b4f.asm"

_AIBattleWithdrawText::
	;TX_RAM wTrainerName
	;text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	;text "는(은)"
	;line $50; RAW DATA : 	;line "@"
	;TX_RAM wEnemyMonNick
	;text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	;text "를(을)"
	;cont $08,$97,$03,$FA,$03,$FE,$7F,$01,$D8,$02,$62,$02,$D9; RAW DATA : 	;cont "차례로 꺼냈다"
	;prompt
	TX_RAM wTrainerName
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65
	line $50
	TX_RAM wEnemyMonNick
	text $04,$36,$0B,$64,$07,$8B,$0B,$65
	cont $08,$97,$03,$FA,$03,$FE,$7F,$01,$D8,$02,$62,$02,$D9
	prompt

_AIBattleUseItemText::
	TX_RAM wTrainerName
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $50; RAW DATA : 	line $50; RAW DATA : 	line $50; RAW DATA : 	line "@"
	TX_RAM wEnemyMonNick
	text $07,$01,$01,$34; RAW DATA : 	text $07,$01,$01,$34; RAW DATA : 	text $07,$01,$01,$34; RAW DATA : 	text "에게"
	
	para $50; RAW DATA : 	para $50; RAW DATA : 	para $50; RAW DATA : 	para "@"
	TX_RAM wcd6d
	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text "를(을)"
	line $05,$B7,$07,$4B,$0A,$7F,$02,$D9,$0B,$66; RAW DATA : 	line $05,$B7,$07,$4B,$0A,$7F,$02,$D9,$0B,$66; RAW DATA : 	line $05,$B7,$07,$4B,$0A,$7F,$02,$D9,$0B,$66; RAW DATA : 	line "사용했다!"
	prompt

_TradeWentToText::
	TX_RAM wcf4b
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65,$7F,$04,$AB,$05,$B7,$0A,$F7; RAW DATA : 	text "는(은) 무사히"
	line $50; RAW DATA : 	line "@"
	TX_RAM wGrassRate
	text $07,$01,$01,$34,$7F,$04,$63,$01,$3C,$07,$E3,$06,$60,$02,$CF,$02,$D9; RAW DATA : 	text "에게 맡겨졌습니다"
	done

_TradeForText::
	text $52,$0B,$64,$07,$9C,$0B,$65,$01,$01; RAW DATA : 	text $52,"(이)가"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcf4b
	text $04,$36,$0B,$64,$07,$8B,$0B,$65,$7F,$05,$18,$02,$4B,$02,$C2,$7F,$02,$EB,$06,$65; RAW DATA : 	text "를(을) 보내는 대신"
	done

_TradeSendsText::
	TX_RAM wGrassRate
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcd6d
	text $04,$36,$0B,$64,$07,$8B,$0B,$65,$7F,$08,$0D,$02,$CF,$02,$D9; RAW DATA : 	text "를(을) 줍니다"
	done

_TradeWavesFarewellText::
	TX_RAM wGrassRate
	text $07,$9C,$0B,$64,$01,$01,$0B,$65; RAW DATA : 	text "이(가)"
	line $05,$DE,$05,$10,$07,$97,$7F,$07,$D4,$07,$8B,$7F,$06,$C6,$06,$3C,$07,$66,$0A,$6F,$04,$87; RAW DATA : 	line "석별의 정을 아쉬워하며"
	done

_TradeTransferredText::
	TX_RAM wcd6d
	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text "를(을)"
	line $05,$18,$02,$60,$02,$CF,$02,$D9; RAW DATA : 	line "보냅니다"
	done

_TradeTakeCareText::
	text $50; RAW DATA : 	text "@"
	TX_RAM wcd6d
	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text "를(을)"
	line $01,$9D,$07,$09,$07,$66,$0A,$78,$7F,$08,$06,$05,$EC,$07,$44; RAW DATA : 	line "귀여워해 주세요"
	done

_TradeWillTradeText::
	text $07,$9C,$07,$D6,$05,$2E,$09,$9D; RAW DATA : 	text "이제부터"
	line $50; RAW DATA : 	line "@"
	TX_RAM wGrassRate
	text $07,$97,$7F,$50; RAW DATA : 	text "의 @";" will";"trade @"
	TX_RAM wcd6d
	text $01,$6A,$0B,$64,$07,$2D,$0B,$65; RAW DATA : 	text "과(와)"
	done

_TradeforText::
	text $52, $07,$97,$7F,$50; RAW DATA : 	text $52, "의 @"
	TX_RAM wcf4b
	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text "를(을)"
	line $01,$83,$0A,$AF,$0A,$75,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "교환합니다!"
	done

_PlaySlotMachineText::
	text $06,$4D,$04,$04,$04,$73,$06,$65,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	text $06,$4D,$04,$04,$04,$73,$06,$65,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	text $06,$4D,$04,$04,$04,$73,$06,$65,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	text "슬롯머신이다!"
	line $0A,$71,$04,$F8,$7F,$0A,$78,$05,$1C,$01,$BE,$0B,$67; RAW DATA : 	line $0A,$71,$04,$F8,$7F,$0A,$78,$05,$1C,$01,$BE,$0B,$67; RAW DATA : 	line $0A,$71,$04,$F8,$7F,$0A,$78,$05,$1C,$01,$BE,$0B,$67; RAW DATA : 	line "한번 해볼까?"
	done


_OutOfCoinsSlotMachineText::
	text $03,$1F,$07,$CC,$07,$9C; RAW DATA : 	text $03,$1F,$07,$CC,$07,$9C; RAW DATA : 	text $03,$1F,$07,$CC,$07,$9C; RAW DATA : 	text "동전이"
	line $02,$D9,$7F,$03,$83,$06,$EE,$07,$DE,$04,$F6,$03,$F8,$02,$D9,$0B,$6A,$0B,$6A; RAW DATA : 	line $02,$D9,$7F,$03,$83,$06,$EE,$07,$DE,$04,$F6,$03,$F8,$02,$D9,$0B,$6A,$0B,$6A; RAW DATA : 	line $02,$D9,$7F,$03,$83,$06,$EE,$07,$DE,$04,$F6,$03,$F8,$02,$D9,$0B,$6A,$0B,$6A; RAW DATA : 	line "다 떨어져버렸다……"
	done

_BetHowManySlotMachineText::
	text $03,$1F,$07,$CC,$07,$8B; RAW DATA : 	text $03,$1F,$07,$CC,$07,$8B; RAW DATA : 	text $03,$1F,$07,$CC,$07,$8B; RAW DATA : 	text "동전을"
	line $04,$8E,$7F,$01,$13,$7F,$01,$29,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line $04,$8E,$7F,$01,$13,$7F,$01,$29,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line $04,$8E,$7F,$01,$13,$7F,$01,$29,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "몇 개 걸겠습니까?"
	done

_StartSlotMachineText::
	text $06,$4A,$09,$88,$09,$DE,$0B,$66; RAW DATA : 	text $06,$4A,$09,$88,$09,$DE,$0B,$66; RAW DATA : 	text $06,$4A,$09,$88,$09,$DE,$0B,$66; RAW DATA : 	text "스타트!"
	done

_NotEnoughCoinsSlotMachineText::
	text $03,$1F,$07,$CC,$07,$9C,$7F,$05,$2E,$07,$E7,$0A,$75,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	text $03,$1F,$07,$CC,$07,$9C,$7F,$05,$2E,$07,$E7,$0A,$75,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	text $03,$1F,$07,$CC,$07,$9C,$7F,$05,$2E,$07,$E7,$0A,$75,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	text "동전이 부족합니다!"
	prompt

_OneMoreGoSlotMachineText::
	text $02,$D9,$06,$63,$0A,$71,$04,$F8; RAW DATA : 	text $02,$D9,$06,$63,$0A,$71,$04,$F8; RAW DATA : 	text $02,$D9,$06,$63,$0A,$71,$04,$F8; RAW DATA : 	text "다시한번"
	line $0A,$6F,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line $0A,$6F,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line $0A,$6F,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "하겠습니까?"
	done

_LinedUpText::
	text $7F,$0B,$64,$07,$9C,$0B,$65,$01,$01,$7F,$04,$90,$07,$14,$02,$D9,$0B,$66; RAW DATA : 	text $7F,$0B,$64,$07,$9C,$0B,$65,$01,$01,$7F,$04,$90,$07,$14,$02,$D9,$0B,$66; RAW DATA : 	text $7F,$0B,$64,$07,$9C,$0B,$65,$01,$01,$7F,$04,$90,$07,$14,$02,$D9,$0B,$66; RAW DATA : 	text " (이)가 모였다!"
	line $03,$1F,$07,$CC,$7F,$50; RAW DATA : 	line $03,$1F,$07,$CC,$7F,$50; RAW DATA : 	line $03,$1F,$07,$CC,$7F,$50; RAW DATA : 	line "동전 @"
	TX_RAM wcf4b
	text $01,$13,$7F,$0A,$AE,$05,$18,$0B,$66; RAW DATA : 	text $01,$13,$7F,$0A,$AE,$05,$18,$0B,$66; RAW DATA : 	text $01,$13,$7F,$0A,$AE,$05,$18,$0B,$66; RAW DATA : 	text "개 확보!"
	done

_NotThisTimeText::
	text $01,$FE,$0B,$68; RAW DATA : 	text $01,$FE,$0B,$68; RAW DATA : 	text $01,$FE,$0B,$68; RAW DATA : 	text "꽝-"
	prompt

_YeahText::
	text $06,$C6,$06,$6E,$0B,$66,$50,$50; RAW DATA : 	text $06,$C6,$06,$6E,$0B,$66,$50,$50; RAW DATA : 	text $06,$C6,$06,$6E,$0B,$66,$50,$50; RAW DATA : 	text "아싸!@@"

	;Yeah!@@
_DexSeenOwnedText::
	text $04,$DF,$01,$3F,$0A,$71,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$50; RAW DATA : 	text "발견한 포켓몬 @"
	TX_NUM wDexRatingNumMonsSeen, 1, 3
	text ""
	line $07,$B2,$07,$8A,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$50; RAW DATA : 	line "잡은 포켓몬 @"
	TX_NUM wDexRatingNumMonsOwned, 1, 3
	db $50; RAW DATA : 	db "@"

_DexRatingText::
	text $0A,$27,$09,$2F,$04,$93,$7F,$03,$15,$01,$08,$07,$97; RAW DATA : 	text "포켓몬 도감의"
	line $0A,$96,$07,$B7,$7F,$07,$2F,$05,$EA,$03,$15; RAW DATA : 	line "현재 완성도"
	db	$6d
	done
;검수해야됨
_GymStatueText1::
	TX_RAM wGymCityName
	text $7F,$0A,$27,$09,$2F,$04,$93,$7F,$08,$BC,$07,$80,$01,$6C; RAW DATA : 	text "포켓몬 체육관"
	line $01,$6C,$07,$B5,$7F,$50; RAW DATA : 	line "관장 @"
	TX_RAM wGymLeaderName
	text ""

	para $07,$9C,$01,$B4,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A; RAW DATA : 	para "이긴 트레이너"
	line $53
	done

_GymStatueText2::
	TX_RAM wGymCityName
	text $7F,$0A,$27,$09,$2F,$04,$93,$7F,$08,$BC,$07,$80,$01,$6C; RAW DATA : 	text "포켓몬 체육관"
	line $01,$6C,$07,$B5,$7F,$50; RAW DATA : 	line "관장 @"
	TX_RAM wGymLeaderName
	text ""

	para $07,$9C,$01,$B4,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A; RAW DATA : 	para "이긴 트레이너"
	line $53
	cont $52
	done

_ViridianCityPokecenterGuyText::
	text $0A,$27,$09,$2F,$04,$93,$05,$EE,$09,$9D,$02,$C2; RAW DATA : 	text "포켓몬센터는"
	line $08,$26,$09,$01,$01,$4D,$7F,$02,$D9,$09,$01,$01,$4D,$7F,$01,$B2,$07,$CD,$0A,$71; RAW DATA : 	line "지치고 다치고 기절한"
	cont $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$09,$01,$04,$11,$0A,$78,$08,$10,$0B,$66; RAW DATA : 	cont "포켓몬을 치료해줘!"
	done

_PewterCityPokecenterGuyText::
	text $0A,$E5,$06,$C6,$06,$CF,$0B,$66; RAW DATA : 	text "흐아암!"

	para $0A,$3A,$04,$40,$07,$9C,$7F,$02,$8B,$03,$D1,$0A,$6F,$04,$89; RAW DATA : 	para "푸린이 노래하면"
	line $0A,$27,$09,$2F,$04,$93,$07,$8A,$7F,$07,$B1,$03,$49,$01,$34,$7F,$03,$25,$0B,$6A,$0B,$6A; RAW DATA : 	line "포켓몬은 잠들게 돼……"
	cont $0B,$6A,$0B,$6A; RAW DATA : 	cont "……"

	para $0B,$6A,$0B,$6A,$02,$3A,$7F,$07,$0A,$06,$63,$0B,$6A,$0B,$6A; RAW DATA : 	para "……나 역시……"
	line $03,$45,$04,$33,$03,$E7,$0B,$6A,$0B,$6A; RAW DATA : 	line "드르렁……"
	done

_CeruleanPokecenterGuyText::
	text $07,$9C,$06,$26,$07,$B7,$02,$C2,$7F,$04,$49,$07,$8A,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B; RAW DATA : 	text "이수재는 많은 포켓몬을"
	line $01,$01,$08,$26,$01,$4D,$7F,$07,$A6,$06,$EE; RAW DATA : 	line "가지고 있어"

	para $0A,$F1,$01,$9D,$7F,$0A,$27,$09,$2F,$04,$93,$03,$15; RAW DATA : 	para "희귀 포켓몬도"
	line $06,$26,$08,$2D,$0A,$6F,$01,$4D,$7F,$07,$A6,$08,$26,$0B,$66; RAW DATA : 	line "수집하고 있지!"
	done 

_LavenderPokecenterGuyText::
	text $09,$91,$01,$88,$04,$3E,$01,$01,$7F,$0A,$78,$01,$61; RAW DATA : 	text "탕구리가 해골"
	line $03,$3A,$08,$2D,$06,$EE,$7F,$06,$B2,$02,$C2,$01,$25,$7F,$06,$CB,$08,$26,$7F,$01,$A7,$09,$01,$0B,$67; RAW DATA : 	line "뒤집어 쓰는거 알지 그치?"

	para $07,$9C,$01,$29,$03,$FE,$7F,$02,$EB,$01,$01,$04,$36,$7F,$09,$01,$04,$36; RAW DATA : 	para "이걸로 대가를 치를"
	line $05,$B7,$03,$C7,$03,$49,$07,$9C,$7F,$07,$A6,$08,$26,$0B,$66; RAW DATA : 	line "사람들이 있지!"
	done

_MtMoonPokecenterBenchGuyText::
	text $03,$05,$04,$3E,$01,$4D,$7F,$07,$A6,$02,$C2,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C; RAW DATA : 	text "데리고 있는 포켓몬이"
	line $02,$6A,$04,$AB,$7F,$04,$49,$07,$88,$04,$89; RAW DATA : 	line "너무 많으면"
	cont $09,$24,$0A,$4B,$09,$9D,$07,$01,$7F,$05,$18,$01,$6C,$0A,$78,$05,$21,$0B,$66; RAW DATA : 	cont "컴퓨터에 보관해봐!"
	done

_RockTunnelPokecenterGuyText::
	text $05,$18,$03,$C3,$09,$88,$07,$4E,$07,$01,$7F,$07,$7F,$03,$F9,$07,$9C; RAW DATA : 	text "보라타운에 유령이"
	line $02,$3A,$07,$22,$02,$D9,$01,$4D,$7F,$03,$49,$06,$FA,$06,$EE,$0B,$66; RAW DATA : 	line "나온다고 들었어!"
	done

_UnusedBenchGuyText1::
	text $0A,$27,$09,$2F,$04,$93,$7F,$07,$B2,$07,$8B,$06,$26,$7F,$07,$A6,$07,$88,$04,$89; RAW DATA : 	text "포켓몬 잡을수 있으면"
	line $02,$F5,$02,$C2,$7F,$06,$02,$07,$68,$07,$9C,$7F,$06,$F8,$01,$3A,$06,$EE; RAW DATA : 	line "더는 소원이 없겠어"
	done

_UnusedBenchGuyText2::
	text $06,$65,$02,$3A,$01,$34,$7F,$02,$8E,$02,$D9,$01,$01; RAW DATA : 	text "신나게 놀다가"
	line $08,$28,$7F,$02,$D9,$7F,$05,$6C,$07,$E3,$06,$EE,$0B,$6A,$0B,$6A; RAW DATA : 	line "진 다 빠졌어……"
	done

_UnusedBenchGuyText3::
	text $06,$67,$0A,$61,$7F,$08,$06,$06,$64,$0A,$B8,$05,$B7,$7F,$04,$65,$02,$CF,$07,$CA,$01,$01; RAW DATA : 	text "실프 주식회사 매니저가"
	line $05,$B7,$09,$F4,$04,$3E,$07,$E8,$07,$01,$7F,$06,$2B,$06,$FA,$02,$D9,$08,$26; RAW DATA : 	line "사파리존에 숨었다지"
	done

_VermilionPokecenterGuyText::
	text $0A,$27,$09,$2F,$04,$93,$07,$97,$7F,$03,$E9,$05,$07,$07,$9C,$7F,$02,$94,$07,$8B,$06,$26,$03,$FF; RAW DATA : 	text "포켓몬의 레벨이 높을수록"
	line $02,$F5,$7F,$01,$0D,$0A,$71,$01,$27,$7F,$05,$B7,$06,$67,$07,$9C,$06,$DF,$0B,$6A,$0B,$6A; RAW DATA : 	line "더 강한건 사실이야……"

	para $0A,$6F,$08,$26,$04,$48,$7F,$04,$90,$03,$47,$7F,$0A,$27,$09,$2F,$04,$93,$07,$01,$01,$35; RAW DATA : 	para "하지만 모든 포켓몬에겐"
	line $04,$DD,$03,$45,$06,$63,$7F,$09,$88,$07,$A4,$05,$10,$03,$FE,$7F,$06,$E0,$07,$D1,$07,$9C,$7F,$07,$A6,$06,$EE,$0B,$66; RAW DATA : 	line "반드시 타입별로 약점이 있어!"

	para $08,$1F,$0B,$66; RAW DATA : 	para "즉!"
	line $04,$AB,$07,$CB,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$01,$10,$07,$8A,$01,$27,$7F,$06,$F8,$06,$EE,$0B,$66; RAW DATA : 	line "무적 포켓몬 같은건 없어!"
	done

_CeladonCityPokecenterGuyText::
	text $07,$AA,$07,$CC,$01,$25,$01,$01,$7F,$05,$CD,$01,$B2,$04,$89,$0B,$6B; RAW DATA : 	text "자전거가 생기면,"
	line $07,$AA,$07,$CC,$01,$25,$7F,$03,$15,$03,$FE,$07,$01,$7F,$01,$05,$09,$A7,$06,$DF,$0B,$66; RAW DATA : 	line "자전거 도로에 갈테야!"
	done

_FuchsiaCityPokecenterGuyText::
	text $0A,$27,$09,$2F,$04,$93,$07,$01,$7F,$02,$EB,$0A,$78,$05,$DD,$7F,$06,$CB,$01,$4D,$06,$6D,$07,$88,$04,$89; RAW DATA : 	text "포켓몬에 대해서 알고싶으면"
	line $05,$B7,$09,$F4,$04,$3E,$07,$E8,$07,$01,$7F,$01,$01,$05,$18,$03,$F5; RAW DATA : 	line "사파리존에 가보렴"

	para $07,$22,$01,$0E,$7F,$0A,$F1,$01,$9D,$7F,$0A,$27,$09,$2F,$04,$93,$03,$49,$07,$9C,$7F,$07,$A6,$02,$DC,$02,$D9; RAW DATA : 	para "온갖 희귀 포켓몬들이 있단다"
	done

_CinnabarPokecenterGuyText::
	text $0A,$27,$09,$2F,$04,$93,$07,$8A; RAW DATA : 	text "포켓몬은"
	line $08,$28,$0A,$AD,$04,$36,$7F,$0A,$6F,$08,$26,$7F,$06,$CA,$06,$C6,$03,$15; RAW DATA : 	line "진화를 하지 않아도"
	cont $01,$B2,$06,$2A,$07,$8B,$7F,$04,$E8,$07,$4C,$02,$C2,$01,$34,$7F,$01,$01,$02,$C9,$0A,$6F,$02,$DC,$02,$D9; RAW DATA : 	cont "기술을 배우는게 가능하단다"

	para $08,$1F,$7F,$05,$C5,$03,$FE,$07,$4E,$7F,$01,$B2,$06,$2A,$07,$8B,$7F,$04,$E8,$07,$4F,$03,$77,$01,$BE,$08,$26; RAW DATA : 	para "즉 새로운 기술을 배울때까지"
	line $08,$28,$0A,$AD,$04,$36,$7F,$04,$CC,$04,$1A,$06,$26,$03,$15,$7F,$07,$A6,$08,$26; RAW DATA : 	line "진화를 미룰수도 있지"
	done

_SaffronCityPokecenterGuyText1::
	text $05,$B7,$08,$B5,$07,$35,$07,$9C,$7F,$07,$2D,$05,$DD; RAW DATA : 	text "사천왕이 와서"
	line $03,$FE,$09,$2F,$02,$DC,$7F,$02,$80,$05,$DE,$03,$49,$7F,$08,$2E,$04,$E2,$06,$C6,$08,$06,$04,$89; RAW DATA : 	line "로켓단 녀석들 짓밟아주면"
	cont $09,$BB,$09,$48,$0A,$72,$09,$A9,$03,$05,$7F,$04,$4B,$07,$9C,$06,$DF,$0B,$66; RAW DATA : 	cont "통쾌할텐데 말이야!"
	done

_SaffronCityPokecenterGuyText2::
	text $03,$FE,$09,$2F,$02,$DC,$07,$9C,$7F,$04,$B0,$03,$DF,$02,$45,$06,$EE,$0B,$66; RAW DATA : 	text "로켓단이 물러났어!"
	line $07,$CC,$08,$B3,$03,$E3,$7F,$02,$D9,$06,$63,$7F,$07,$E6,$07,$4B,$0A,$F7; RAW DATA : 	line "전처럼 다시 조용히"
	cont $08,$26,$02,$4E,$06,$26,$7F,$07,$A6,$02,$D9,$01,$4D,$0B,$66,$0B,$66; RAW DATA : 	cont "지낼수 있다고!!"
	para $04,$48,$05,$EC,$0B,$66; RAW DATA : 	para "만세!"
	done

_CeladonCityHotelText::
	text $02,$A9,$02,$3A,$01,$01,$7F,$07,$9C,$04,$F8,$7F,$0A,$DE,$01,$01,$07,$01; RAW DATA : 	text "누나가 이번 휴가에"
	line $02,$28,$01,$4D,$7F,$07,$2D,$04,$F6,$03,$F8,$06,$EE,$0B,$66; RAW DATA : 	line "끌고 와버렸어!"
	done

_BookcaseText::
	text $0A,$27,$09,$29,$04,$93,$7F,$08,$A5,$03,$49,$03,$FE; RAW DATA : 	text "포케몬 책들로"
	line $05,$79,$01,$4E,$0A,$6F,$01,$34,$7F,$04,$DA,$0A,$94,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "빼곡하게 박혀있다!"
	done

_NewBicycleText::
	text $04,$DD,$08,$36,$04,$DD,$08,$36,$0A,$71; RAW DATA : 	text "반짝반짝한"
	line $05,$C5,$7F,$07,$AA,$07,$CC,$01,$25,$0B,$66; RAW DATA : 	line "새 자전거!"
	done

_PushStartText::
	text $06,$4A,$09,$88,$09,$DE,$7F,$04,$F6,$09,$E0,$07,$8B,$7F,$02,$A9,$04,$33,$07,$AA,$0B,$66; RAW DATA : 	text $06,$4A,$09,$88,$09,$DE,$7F,$04,$F6,$09,$E0,$07,$8B,$7F,$02,$A9,$04,$33,$07,$AA,$0B,$66; RAW DATA : 	text $06,$4A,$09,$88,$09,$DE,$7F,$04,$F6,$09,$E0,$07,$8B,$7F,$02,$A9,$04,$33,$07,$AA,$0B,$66; RAW DATA : 	text "스타트 버튼을 누르자!"
	line $02,$A9,$04,$33,$04,$89,$7F,$04,$7E,$02,$BA,$01,$01,$7F,$03,$B1,$02,$D9; RAW DATA : 	line $02,$A9,$04,$33,$04,$89,$7F,$04,$7E,$02,$BA,$01,$01,$7F,$03,$B1,$02,$D9; RAW DATA : 	line $02,$A9,$04,$33,$04,$89,$7F,$04,$7E,$02,$BA,$01,$01,$7F,$03,$B1,$02,$D9; RAW DATA : 	line "누르면 메뉴가 뜬다"
	done

_SaveOptionText::
	text $05,$EC,$07,$9C,$05,$4A,$04,$36,$7F,$0A,$74,$07,$01,$02,$C2,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$03,$E9,$0A,$27,$09,$DE; RAW DATA : 	text $05,$EC,$07,$9C,$05,$4A,$04,$36,$7F,$0A,$74,$07,$01,$02,$C2,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$03,$E9,$0A,$27,$09,$DE; RAW DATA : 	text $05,$EC,$07,$9C,$05,$4A,$04,$36,$7F,$0A,$74,$07,$01,$02,$C2,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$03,$E9,$0A,$27,$09,$DE; RAW DATA : 	text "세이브를 함에는 포켓몬 레포트"
	line $07,$AA,$08,$06,$7F,$06,$B2,$04,$89,$7F,$07,$F1,$02,$D9; RAW DATA : 	line $07,$AA,$08,$06,$7F,$06,$B2,$04,$89,$7F,$07,$F1,$02,$D9; RAW DATA : 	line $07,$AA,$08,$06,$7F,$06,$B2,$04,$89,$7F,$07,$F1,$02,$D9; RAW DATA : 	line "자주 쓰면 좋다"
	done

_StrengthsAndWeaknessesText::
	text $04,$90,$03,$47,$7F,$09,$88,$07,$A4,$03,$49,$07,$8A; RAW DATA : 	text "모든 타입들은"
	line $01,$0D,$07,$D1,$05,$A3,$04,$48,$7F,$06,$C6,$02,$CF,$03,$C3; RAW DATA : 	line "강점뿐만 아니라"
	cont $02,$D9,$04,$35,$7F,$09,$88,$07,$A4,$07,$01,$7F,$02,$EB,$0A,$71; RAW DATA : 	cont "다른 타입에 대한"
	cont $06,$E0,$07,$D1,$07,$9C,$7F,$07,$A6,$06,$60,$02,$CF,$02,$D9; RAW DATA : 	cont "약점이 있습니다"
	done
;사파리존, 좀 번역 확인해야 되는데
_TimesUpText::
	text $06,$C8,$02,$4B,$04,$E6,$06,$0B,$0B,$62,$03,$69,$03,$1F,$0B,$66; RAW DATA : 	text "안내방송『딩동!"

	para $06,$63,$01,$03,$07,$9C,$7F,$02,$D9,$7F,$03,$26,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	para "시간이 다 됐습니다!"
	prompt

_GameOverText::
	text $06,$C8,$02,$4B,$04,$E6,$06,$0B,$0B,$62,$05,$B7,$09,$F4,$04,$3E,$7F,$01,$34,$07,$A3,$07,$9C; RAW DATA : 	text "안내방송『사파리 게임이"
	line $07,$EE,$04,$11,$03,$26,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "종료됐습니다!"
	done

_CinnabarGymQuizIntroText::
	text $0A,$27,$09,$2F,$04,$93,$7F,$09,$6B,$08,$1E,$0B,$66; RAW DATA : 	text "포켓몬 퀴즈!"

	para $04,$AE,$07,$D6,$04,$36,$7F,$04,$62,$08,$DF,$04,$89,$7F,$02,$D9,$07,$8D,$04,$E6,$07,$88,$03,$FE; RAW DATA : 	para "문제를 맞추면 다음방으로"
	line $01,$01,$02,$C2,$7F,$04,$AE,$07,$9C,$7F,$07,$0D,$04,$43,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "가는 문이 열립니다!"

	para $09,$E2,$04,$3E,$04,$89; RAW DATA : 	para "틀리면"
	line $09,$DE,$03,$E9,$07,$9C,$02,$6A,$07,$2D,$7F,$04,$46,$08,$06,$09,$08,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "트레이너와 마주칩니다!"

	para $08,$BC,$07,$80,$01,$6C,$7F,$01,$6C,$07,$B5,$07,$8B,$7F,$02,$EB,$05,$61,$0A,$78,$05,$DD; RAW DATA : 	para "체육관 관장을 대비해서"
	line $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$06,$C6,$02,$32,$01,$4D,$7F,$06,$6D,$02,$D9,$04,$89,$0B,$6A,$0B,$6A; RAW DATA : 	line "포켓몬을 아끼고 싶다면……"

	para $07,$AF,$7F,$04,$62,$08,$E7,$05,$DD,$7F,$01,$01,$04,$89,$7F,$03,$2B,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	para "잘 맞춰서 가면 됩니다!"
	line $07,$9C,$07,$D6,$7F,$01,$01,$05,$1C,$01,$BE,$07,$44,$0B,$66; RAW DATA : 	line "이제 가볼까요!"
	para ""
	done

_CinnabarQuizQuestionsText1::
	text $09,$13,$09,$9D,$0A,$67,$07,$97,$7F,$08,$D6,$07,$EE,$08,$28,$0A,$AD,$02,$C2; RAW DATA : text "캐터피의 최종진화는"
	line $04,$F6,$09,$9D,$0A,$63,$07,$9F,$01,$BE,$07,$44,$0B,$67; RAW DATA : line "버터플일까요?"

	done

_CinnabarQuizQuestionsText2::
	text $0A,$27,$09,$2F,$04,$93,$7F,$04,$3E,$01,$A7,$07,$01,$7F,$07,$9E,$08,$25,$03,$28,$7F,$04,$E8,$08,$26,$02,$C2; RAW DATA : 	text "포켓몬 리그에 인증된 배지는"
	line $FF,$01,$13,$07,$9F,$01,$BE,$07,$44,$0B,$67; RAW DATA : 	line "9개일까요?"
	done

_CinnabarQuizQuestionsText3::
	text $04,$DF,$08,$AC,$07,$9C,$01,$01,$7F,$08,$28,$0A,$AD,$0A,$6F,$02,$C2,$01,$27; RAW DATA : 	text "발챙이가 진화하는건"
	line $F9,$07,$EE,$04,$29,$7F,$07,$9F,$01,$BE,$07,$44,$0B,$67; RAW DATA : 	line "3종류 일까요?"
	done

_CinnabarQuizQuestionsText4::
	text $01,$68,$01,$3D,$01,$B2,$06,$2A,$07,$9E,$7F,$04,$F8,$01,$13,$02,$C2,$7F,$03,$75,$09,$88,$07,$A4; RAW DATA : 	text "공격기술인 번개는 땅타입"
	line $0A,$27,$09,$2F,$04,$93,$07,$01,$01,$34,$7F,$0A,$BF,$01,$6A,$01,$01,$7F,$07,$A6,$07,$8B,$01,$BE,$07,$44,$0B,$67; RAW DATA : 	line "포켓몬에게 효과가 있을까요?"
	done

_CinnabarQuizQuestionsText5::
	text $0A,$27,$09,$2F,$04,$93,$7F,$07,$EE,$04,$29,$07,$2D,$7F,$03,$E9,$05,$07,$07,$9C,$7F,$01,$10,$06,$C6,$03,$15; RAW DATA : text "포켓몬 종류와 레벨이 같아도"
	line $0A,$FB,$07,$8A,$7F,$02,$D9,$04,$36,$01,$BE,$07,$44,$0B,$67; RAW DATA : line "힘은 다를까요?"

	done

_CinnabarQuizQuestionsText6::
	text $01,$B2,$06,$2A,$04,$73,$06,$65,$F8,$FE,$07,$01,$7F,$07,$A6,$02,$C2,$7F,$01,$B2,$06,$2A,$07,$8A; RAW DATA : 	text "기술머신28에 있는 기술은"
	line $09,$C9,$06,$4A,$09,$B4,$02,$6A,$7F,$07,$9E,$01,$01,$07,$44,$0B,$67; RAW DATA : 	line "툼스토너 인가요?"
	done

_CinnabarGymQuizCorrectText::
	text $02,$A9,$01,$01,$7F,$04,$B9,$03,$C3,$0A,$78,$03,$15; RAW DATA : 	text "누가 뭐라해도"
	line $07,$D4,$02,$E4,$07,$A4,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "정답입니다!"

	para $07,$9C,$08,$6A,$07,$88,$03,$FE,$0B,$66,$50,$50; RAW DATA : 	para "이쪽으로!@@"

_CinnabarGymQuizIncorrectText::
	text $07,$FB,$06,$0B,$0A,$75,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	text "죄송합니다!"
	line $07,$20,$02,$E4,$07,$A4,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "오답입니다!"
	prompt

_MagazinesText::
	text $0A,$27,$09,$2F,$04,$93,$7F,$07,$B2,$08,$26,$03,$49,$0B,$66; RAW DATA : 	text "포켓몬 잡지들!"

	para $0A,$27,$09,$2F,$04,$93,$7F,$02,$8B,$09,$DE,$05,$2F,$03,$49,$0B,$66; RAW DATA : 	para "포켓몬 노트북들!"

	para $0A,$27,$09,$2F,$04,$93,$7F,$03,$15,$0A,$35,$03,$49,$0B,$66; RAW DATA : 	para "포켓몬 도표들!"
	done

_BillsHouseMonitorText::
	text $09,$24,$0A,$4B,$09,$9D,$7F,$04,$90,$02,$CF,$09,$9D,$07,$01; RAW DATA : 	text "컴퓨터 모니터에"
	line $07,$CC,$06,$0B,$07,$B5,$09,$01,$01,$01,$7F,$09,$31,$07,$DE,$07,$A6,$02,$D9; RAW DATA : 	line "전송장치가 켜져있다"
	done

_BillsHouseInitiatedText::
	text $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52, "는(은)"
	line $07,$CC,$06,$0B,$07,$B5,$09,$01,$07,$97,$7F,$05,$EC,$0A,$27,$7F,$05,$30,$04,$3E,$01,$B2,$04,$36; RAW DATA : 	line "전송장치의 세포 분리기를"
	cont $07,$AB,$03,$1F,$06,$63,$09,$37,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	cont "작동시켰다!@@"

_BillsHousePokemonListText1::
	text $07,$9C,$06,$26,$07,$B7,$01,$01,$7F,$07,$F1,$06,$C6,$0A,$6F,$02,$C2; RAW DATA : 	text "이수재가 좋아하는"
	line $0A,$27,$09,$2F,$04,$93,$7F,$04,$3E,$06,$4A,$09,$DE,$0B,$66; RAW DATA : 	line "포켓몬 리스트!"
	prompt

_BillsHousePokemonListText2::
	text $06,$EE,$03,$82,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B; RAW DATA : 	text "어떤 포켓몬을"
	line $05,$18,$06,$63,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "보시겠습니까?"
	done

_OakLabEmailText::
	text $07,$9C,$04,$7E,$07,$9F,$7F,$04,$7E,$06,$63,$08,$26,$01,$01; RAW DATA : 	text "이메일 메시지가"
	line $07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "있다!"

	para $0B,$6A,$0B,$6A,$7F,$0B,$6A,$0B,$6A,$7F,$0B,$6A,$0B,$6A; RAW DATA : 	para "…… …… ……"

	para $04,$90,$03,$47,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$03,$49,$07,$97,$7F,$06,$02,$04,$8D,$0B,$66; RAW DATA : 	para "모든 포켓몬 트레이너들의 소명!"
	;calling이 소명이긴 한데 문맥상 소망으로 선택했습니다. 

	para $0A,$27,$09,$2F,$04,$93,$7F,$04,$3E,$01,$A7,$07,$97,$7F,$07,$04,$04,$3E,$09,$DE,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$03,$49,$07,$8A; RAW DATA : 	para "포켓몬 리그의 엘리트 트레이너들은"
	line $06,$EE,$03,$82,$7F,$03,$15,$07,$CC,$07,$AA,$03,$47,$08,$26,$7F,$01,$B2,$02,$D9,$04,$3E,$01,$4D,$7F,$07,$A6,$02,$D9,$0B,$66; RAW DATA : line "어떤 도전자든지 기다리고 있다!"



	para $08,$D6,$07,$D4,$07,$19,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$03,$05,$03,$F1,$01,$01,$05,$DD; RAW DATA : 	para "최정예 포켓몬을 데려가서"
	line $09,$DE,$03,$E9,$07,$9C,$02,$6A,$03,$FE,$06,$81,$7F,$06,$EE,$03,$8B,$01,$34,$7F,$01,$02,$05,$EA,$0A,$72,$08,$26,$7F,$05,$1C,$01,$2D,$0B,$66; RAW DATA : 	line "트레이너로써 어떻게 각성할지 볼것!"


	para $0A,$27,$09,$2F,$04,$93,$7F,$04,$3E,$01,$A7; RAW DATA : 	para "포켓몬 리그"
	line $05,$DE,$07,$15,$01,$4D,$07,$68; RAW DATA : 	line "석영고원"

	para $08,$DF,$06,$65,$7F,$07,$4C,$04,$3E,$0A,$71,$09,$A7,$7F,$07,$EB,$7F,$03,$49,$04,$41,$01,$2D,$0B,$66; RAW DATA : 	para "추신 우리한테 좀 들릴것!"
	line $07,$20,$04,$DA,$05,$B7,$07,$01,$01,$34,$0B,$6A,$0B,$6A; RAW DATA : line "오박사에게……"
	done

_GameCornerCoinCaseText::
	text $03,$1F,$07,$CC,$09,$29,$07,$9C,$06,$4A,$01,$01; RAW DATA : 	text "동전케이스가"
	line $0A,$6A,$07,$44,$0A,$75,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "필요합니다!"
	done

_GameCornerNoCoinsText::
	text $03,$1F,$07,$CC,$07,$9C; RAW DATA : 	text "동전이"
	line $0A,$6F,$02,$3A,$03,$15,$7F,$06,$F8,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "하나도 없습니다!"
	done

_GameCornerOutOfOrderText::
	text $0A,$71,$07,$D4,$01,$01,$08,$AD; RAW DATA : 	text "한정가챠"
	line $07,$9C,$01,$27,$7F,$04,$61,$01,$01,$07,$E3,$02,$D9; RAW DATA : 	line "이건 망가졌다"
	done

_GameCornerOutToLunchText::
	text $07,$D1,$06,$69,$06,$64,$05,$B7,$7F,$08,$0F,$07,$9C,$07,$19,$07,$44; RAW DATA : 	text "점심식사 중이예요"
	line $07,$9C,$7F,$07,$AA,$04,$3E,$02,$C2,$7F,$07,$19,$06,$E0,$07,$9C,$7F,$03,$27,$06,$FA,$02,$D9; RAW DATA : 	line "이 자리는 예약이 되었다"
	done

_GameCornerSomeonesKeysText::
	text $02,$A9,$01,$8A,$01,$01,$07,$97,$7F,$07,$0D,$06,$18,$02,$D9,$0B,$66; RAW DATA : 	text "누군가의 열쇠다!"
	line $01,$60,$7F,$03,$19,$06,$C6,$07,$23,$01,$2D,$7F,$01,$10,$02,$D9; RAW DATA : 	line "곧 돌아올것 같다"
	done

_JustAMomentText::
	text $07,$B1,$06,$63,$04,$48,$07,$44; RAW DATA : 	text "잠시만요"
	done

TMNotebookText::
	text $01,$B2,$06,$2A,$04,$73,$06,$65; RAW DATA : 	text "기술머신"
	line $09,$FA,$0A,$63,$03,$EF,$07,$A4,$02,$CF,$02,$D9; RAW DATA : 	line "팜플렛입니다"

	para $0B,$6A,$0B,$6A,$7F,$0B,$6A,$0B,$6A,$7F,$0B,$6A,$0B,$6A,$7F,$0B,$6A,$0B,$6A; RAW DATA : 	para "…… …… …… ……"

	para $01,$B2,$06,$2A,$04,$73,$06,$65,$07,$8A,$7F,$04,$90,$03,$2E; RAW DATA : 	para "기술머신은 모두"
	line $FB,$F6,$07,$EE,$07,$9C,$7F,$07,$A6,$06,$60,$02,$CF,$02,$D9; RAW DATA : 	line "50종이 있습니다"

	para $FB,$01,$13,$07,$97,$7F,$05,$61,$07,$CC,$04,$73,$06,$65,$03,$49,$07,$8A; RAW DATA : 	para "5개의 비전머신들은"
	line $04,$8E,$04,$F8,$07,$9C,$01,$4D,$7F,$05,$B7,$07,$4B,$07,$9C,$7F,$01,$01,$02,$C9,$0A,$75,$02,$CF,$02,$D9; RAW DATA : 	line "몇번이고 사용이 가능합니다"

	para $06,$67,$0A,$61,$08,$06,$06,$64,$0A,$B8,$05,$B7,$50,$50; RAW DATA : 	para "실프주식회사@@"

_TurnPageText::
	text $0A,$14,$07,$9C,$08,$26,$04,$36,$7F,$02,$71,$01,$B2,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text "페이지를 넘기겠습니까?"
	done

_ViridianSchoolNotebookText5::
	text $06,$02,$02,$80,$0B,$62,$01,$25,$01,$B2,$7F,$02,$6A,$0B,$66; RAW DATA : 	text "소녀『거기 너!"
	line $02,$4B,$7F,$02,$8B,$09,$DE,$7F,$05,$18,$04,$89,$7F,$06,$C8,$7F,$03,$25,$0B,$66,$50,$50; RAW DATA : 	line "내 노트 보면 안 돼!@@"

_ViridianSchoolNotebookText1::
	text $02,$8B,$09,$DE,$04,$36; RAW DATA : 	text "노트를"
	line $03,$49,$07,$09,$02,$D9,$7F,$05,$18,$06,$D2,$02,$D9,$0B,$66; RAW DATA : 	line "들여다 보았다!"

	para $0B,$6A,$0B,$6A,$08,$B9,$04,$F8,$08,$40,$7F,$0A,$14,$07,$9C,$08,$26; RAW DATA : 	para "……첫번째 페이지"

	para $04,$93,$06,$4A,$09,$9D,$05,$1C,$07,$8A; RAW DATA : 	para "몬스터볼은"
	line $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$07,$B2,$07,$8B,$03,$77,$7F,$06,$B4,$02,$D9; RAW DATA : 	line "포켓몬을 잡을때 쓴다"

	para $08,$D6,$02,$EB,$7F,$FC,$04,$46,$04,$3E,$01,$BE,$08,$26; RAW DATA : 	para "최대 6마리까지"
	line $03,$05,$04,$3E,$01,$4D,$7F,$02,$D9,$02,$D2,$06,$26,$7F,$07,$A6,$02,$D9; RAW DATA : 	line "데리고 다닐수 있다"

	para $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$09,$80,$07,$4C,$04,$87,$7F,$06,$6E,$07,$4C,$02,$C2; RAW DATA : 	para "포켓몬을 키우며 싸우는"
	line $05,$B7,$03,$C7,$03,$49,$07,$8A,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$03,$C3,$7F,$0A,$71,$02,$D9; RAW DATA : 	line "사람들은 포켓몬 트레이너라 한다"
	prompt

_ViridianSchoolNotebookText2::
	text $0B,$6A,$0B,$6A,$03,$2E,$04,$F8,$08,$40,$7F,$0A,$14,$07,$9C,$08,$26; RAW DATA : 	text "……두번째 페이지"

	para $06,$7F,$06,$7F,$0A,$71,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8A,$7F,$07,$B2,$01,$B2,$7F,$06,$EE,$03,$F1,$07,$4C,$02,$CF; RAW DATA : 	para "쌩쌩한 포켓몬은 잡기 어려우니"
	line $04,$75,$07,$CA,$7F,$0A,$FB,$07,$8B,$7F,$05,$79,$03,$2E,$06,$EE,$06,$DF,$7F,$0A,$71,$02,$D9,$0B,$66; RAW DATA : 	line "먼저 힘을 빼두어야 한다!"

	para $03,$16,$7F,$0A,$AD,$05,$C3,$7F,$01,$A7,$04,$3E,$01,$4D,$7F,$01,$A7,$7F,$07,$3C,$07,$97; RAW DATA : 	para "독 화상 그리고 그 외의"
	line $03,$05,$04,$CC,$08,$26,$03,$49,$07,$9C,$7F,$0A,$BF,$01,$6A,$07,$CB,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	line "데미지들이 효과적이다!"
	prompt

_ViridianSchoolNotebookText3::
	text $0B,$6A,$0B,$6A,$05,$EC,$04,$F8,$08,$40,$7F,$0A,$14,$07,$9C,$08,$26; RAW DATA : 	text "……세번째 페이지"

	para $0A,$27,$09,$2F,$04,$93,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$03,$49,$07,$8A; RAW DATA : 	para "포켓몬 트레이너들은"
	line $0A,$27,$09,$2F,$04,$93,$04,$E8,$09,$E2,$07,$8B,$7F,$0A,$6F,$03,$F1,$01,$4D; RAW DATA : 	line "포켓몬배틀을 하려고"
	cont $02,$D9,$04,$35,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$03,$49,$07,$8B,$7F,$08,$A3,$02,$C2,$02,$D9; RAW DATA : 	cont "다른 트레이너들을 찾는다"

	para $0A,$27,$09,$2F,$04,$93,$7F,$08,$BC,$07,$80,$01,$6C,$07,$01,$05,$DD,$02,$C2; RAW DATA : 	para "포켓몬 체육관에서는"
	line $04,$E8,$09,$E2,$07,$9C,$7F,$02,$27,$07,$9C,$08,$2A,$7F,$06,$CA,$02,$C2,$02,$D9; RAW DATA : 	line "배틀이 끊이질 않는다"
	prompt

_ViridianSchoolNotebookText4::
	text $0B,$6A,$0B,$6A,$02,$77,$04,$F8,$08,$40,$7F,$0A,$14,$07,$9C,$08,$26; RAW DATA : 	text "……네번째 페이지"

	para $0A,$27,$09,$2F,$04,$93,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$03,$49,$07,$97,$7F,$04,$91,$0A,$35,$02,$C2; RAW DATA : 	para "포켓몬 트레이너들의 목표는"
	line $FE,$04,$8D,$07,$97,$7F,$08,$BC,$07,$80,$01,$6C,$01,$6C,$07,$B5,$03,$49,$07,$8B,$7F,$07,$9C,$01,$B2,$02,$C2,$01,$2D,$0B,$66; RAW DATA : 	line "8명의 체육관관장들을 이기는것!"

	para $07,$9C,$01,$29,$7F,$09,$BB,$0A,$78; RAW DATA : 	para "이걸 통해"
	line $06,$F2,$01,$34,$03,$27,$02,$C2,$7F,$07,$AA,$01,$3D,$07,$8A,$0B,$6A,$0B,$6A; RAW DATA : 	line "얻게되는 자격은……"

	para $0A,$27,$09,$2F,$04,$93,$7F,$04,$3E,$01,$A7; RAW DATA : 	para "포켓몬 리그"
	line $05,$B7,$08,$B5,$07,$35,$01,$6A,$07,$97,$7F,$02,$EB,$04,$89,$0B,$66; RAW DATA : 	line "사천왕과의 대면!"
	prompt

_EnemiesOnEverySideText::
	text $07,$CB,$07,$8A,$7F,$01,$67,$01,$67,$07,$01; RAW DATA : 	text "적은 곳곳에"
	line $07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "있다!"
	done

_WhatGoesAroundComesAroundText::
	text $05,$A1,$04,$40,$04,$48,$09,$7D; RAW DATA : 	text "뿌린만큼"
	line $01,$25,$03,$2E,$01,$B2,$7F,$04,$46,$03,$F3,$0B,$66; RAW DATA : 	line "거두기 마련!"
	done

_FightingDojoText::
	text $01,$3D,$09,$C5,$7F,$03,$15,$07,$B5; RAW DATA : 	text "격투 도장"
	done

_IndigoPlateauHQText::
	text $05,$DE,$07,$15,$01,$4D,$07,$68; RAW DATA : 	text "석영고원"
	line $0A,$27,$09,$2F,$04,$93,$7F,$04,$3E,$01,$A7; RAW DATA : 	line "포켓몬 리그"
	done

_RedBedroomSNESText::
	text $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65
	line $0A,$96,$02,$EB,$7F,$06,$44,$0A,$0B,$09,$24,$05,$18,$07,$9C,$04,$36,$7F,$0A,$6F,$01,$4D,$7F,$07,$A6,$02,$D9,$0B,$66
	cont $0B,$6A,$0B,$6A,$7F,$0B,$6A,$0B,$6A,$7F,$07,$F1,$06,$C6,$0B,$66
	cont $07,$9C,$07,$D6,$7F,$06,$4D,$06,$4D,$7F,$02,$3A,$01,$01,$05,$1C,$01,$BE,$0B,$66
	;text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	;text "는(은)"
	;line $0A,$96,$02,$EB,$7F,$06,$44,$0A,$0B,$09,$24,$05,$18,$07,$9C,$04,$36,$7F,$0A,$6F,$01,$4D,$7F,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	;line "현대 슈퍼컴보이를 하고 있다!"
	;cont $0B,$6A,$0B,$6A,$7F,$0B,$6A,$0B,$6A,$7F,$07,$F1,$06,$C6,$0B,$66; RAW DATA : 	;cont "…… …… 좋아!"
	;cont $07,$9C,$07,$D6,$7F,$06,$4D,$06,$4D,$7F,$02,$3A,$01,$01,$05,$1C,$01,$BE,$0B,$66; RAW DATA : 	;cont "이제 슬슬 나가볼까!"
	
	done

_Route15UpstairsBinocularsText::
	text $06,$76,$06,$C8,$01,$46,$07,$8B; RAW DATA : 	text "쌍안경을"
	line $03,$49,$07,$09,$02,$D9,$05,$18,$06,$D2,$02,$D9,$0B,$66; RAW DATA : 	line "들여다보았다!"

	para $04,$D9,$02,$E5,$01,$01,$08,$6A,$07,$88,$03,$FE,$7F,$09,$79,$01,$4D,$7F,$05,$6B,$02,$3A,$02,$C2,$7F,$05,$C5,$01,$01; RAW DATA : 	para "바닷가쪽으로 크고 빛나는 새가"
	line $02,$3F,$06,$C6,$01,$01,$01,$4D,$7F,$07,$A6,$02,$D9; RAW DATA : 	line "날아가고 있다"
	done

_AerodactylFossilText::
	text $0A,$61,$09,$A7,$03,$C3,$7F,$0A,$AD,$05,$DE; RAW DATA : 	text "프테라 화석"
	line $07,$68,$06,$63,$06,$63,$02,$EB,$07,$97,$7F,$0A,$F1,$01,$9D,$7F,$0A,$27,$09,$2F,$04,$93; RAW DATA : 	line "원시시대의 희귀 포켓몬"
	done

_KabutopsFossilText::
	text $09,$C5,$09,$4D,$0A,$3A,$06,$4A,$7F,$0A,$AD,$05,$DE; RAW DATA : 	text "투쿠푸스 화석"
	line $07,$68,$06,$63,$06,$63,$02,$EB,$07,$97,$7F,$0A,$F1,$01,$9D,$7F,$0A,$27,$09,$2F,$04,$93; RAW DATA : 	line "원시시대의 희귀 포켓몬"
	done

_LinkCableHelpText1::
	text $0B,$6A,$0B,$6A,$03,$46,$07,$9C,$7F,$03,$27,$02,$C2,$7F,$01,$34,$06,$63,$09,$F7,$0B,$66; RAW DATA : 	text "……득이 되는 게시판!"
	para $09,$BB,$06,$65,$7F,$09,$29,$07,$9C,$05,$4D,$07,$8B,$7F,$07,$9C,$07,$4B,$0A,$6F,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	para "통신 케이블을 이용하세요!"
	
	;para $94,$B2,$A8,$AD,$A6,$7F,$A0,$7F,$86,$A0,$AC,$A4,$7F,$8B,$A8,$AD,$AA; RAW DATA : 	;para "Using a Game Link"
	;line $82,$A0,$A1,$AB,$A4; RAW DATA : 	;line "Cable"
	prompt

_LinkCableHelpText2::
	text $06,$EE,$02,$C0,$7F,$0A,$77,$04,$91,$07,$8B; RAW DATA : 	text "어느 항목을"
	line $07,$A0,$07,$88,$06,$63,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "읽으시겠습니까?"
	done

_LinkCableInfoText1::
	text $01,$34,$07,$A3,$05,$18,$07,$9C,$04,$36,$7F; RAW DATA : 	text "게임보이를 "
	line $02,$D9,$04,$35,$7F,$01,$34,$07,$A3,$05,$18,$07,$9C,$07,$2D,$7F,$07,$0C,$01,$41,$0A,$71,$7F,$0A,$C4,$07,$01; RAW DATA : 	line "다른 게임보이와 연결한 후에"
	cont $0A,$27,$09,$2F,$04,$93,$7F,$05,$EE,$09,$9D,$07,$97,$7F,$06,$C8,$02,$4B,$07,$68,$07,$01,$01,$34; RAW DATA : 	cont "포켓몬 센터의 안내원에게"
	cont $04,$4B,$07,$8B,$01,$25,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	cont "말을거세요!"
	prompt

_LinkCableInfoText2::
	text $09,$3D,$03,$FE,$05,$EC,$07,$62,$07,$01,$05,$DD; RAW DATA : 	text "콜로세움에서"
	line $09,$03,$01,$88,$07,$2D,$7F,$0A,$74,$01,$E2,$7F,$08,$21,$01,$3C,$07,$44,$0B,$66; RAW DATA : 	line "친구와 함께 즐겨요!"
	prompt

_LinkCableInfoText3::
	text $01,$83,$0A,$AF,$05,$EE,$09,$9D,$07,$01,$05,$DD; RAW DATA : 	text "교환센터에서"
	line $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$01,$83,$0A,$AF,$0A,$78,$07,$44,$0B,$66; RAW DATA : 	line "포켓몬을 교환해요!"
	prompt

_ViridianSchoolBlackboardText1::
	text $09,$05,$09,$F7,$07,$01,$7F,$05,$C3,$09,$92,$07,$9C,$05,$C3,$07,$01,$7F,$02,$EB,$0A,$71; RAW DATA : 	text "칠판에 상태이상에 대한"
	line $05,$E3,$04,$8D,$07,$9C,$7F,$06,$B2,$07,$09,$07,$DE,$7F,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "설명이 쓰여져 있다!"
	prompt

_ViridianSchoolBlackboardText2::
	text $06,$EE,$02,$C0,$7F,$0A,$77,$04,$91,$07,$8B; RAW DATA : 	text "어느 항목을"
	line $07,$A0,$07,$8B,$01,$BE,$0B,$67; RAW DATA : 	line "읽을까?"
	done
;검수필요
_ViridianBlackboardSleepText::
	text $07,$B1,$03,$47,$7F,$05,$C3,$09,$92,$07,$9E,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8A; RAW DATA : 	text "잠든 상태인 포켓몬은"
	line $01,$68,$01,$3D,$7F,$0A,$72,$7F,$06,$26,$01,$01,$7F,$06,$F8,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "공격 할 수가 없습니다!"

	para $04,$E8,$09,$E2,$0A,$C4,$07,$01,$03,$15,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8A; RAW DATA : 	para "배틀후에도 포켓몬은"
	line $01,$48,$06,$03,$7F,$07,$AA,$01,$34,$03,$2B,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "계속 자게됩니다!"

	para $07,$B1,$01,$CA,$02,$C2,$06,$E0,$07,$88,$03,$FE; RAW DATA : 	para "잠깨는약으로"
	line $01,$CA,$07,$4C,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	line "깨우세요!"
	prompt

_ViridianBlackboardPoisonText::
	text $03,$16,$07,$01,$7F,$01,$29,$04,$40,$7F,$0A,$27,$09,$2F,$04,$93,$07,$97; RAW DATA : 	text "독에 걸린 포켓몬의"
	line $08,$BC,$03,$F2,$07,$8A,$7F,$01,$48,$06,$03,$7F,$03,$83,$06,$EE,$08,$2D,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "체력은 계속 떨어집니다!"

	para $03,$16,$7F,$05,$C3,$09,$92,$02,$C2,$7F,$04,$E8,$09,$E2,$0A,$C4,$07,$01,$03,$15; RAW DATA : 	para "독 상태는 배틀후에도"
	line $07,$9C,$06,$EE,$08,$2D,$02,$CF,$02,$D9; RAW DATA : 	line "이어집니다"

	para $0A,$78,$03,$16,$07,$D6,$03,$FE; RAW DATA : 	para "해독제로"
	line $03,$16,$07,$8B,$7F,$09,$01,$04,$11,$0A,$6F,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	line "독을 치료하세요!"
	prompt

_ViridianBlackboardPrlzText::
	text $04,$46,$05,$61,$7F,$05,$C3,$09,$92,$07,$9E,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8A,$7F,$04,$96,$07,$9C,$7F,$07,$CA,$03,$F1,$05,$DD; RAW DATA : 	text "마비 상태인 포켓몬은 몸이 저려서"
	line $04,$98,$7F,$07,$62,$08,$27,$07,$9C,$01,$B2,$03,$15,$7F,$0A,$75,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "못 움직이기도 합니다!"

	para $04,$46,$05,$61,$7F,$05,$C3,$09,$92,$02,$C2; RAW DATA : 	para "마비 상태는"
	line $04,$E8,$09,$E2,$0A,$C4,$07,$01,$03,$15,$7F,$07,$7F,$08,$26,$03,$2B,$02,$CF,$02,$D9; RAW DATA : 	line "배틀후에도 유지됩니다"

	para $04,$46,$05,$61,$09,$01,$04,$11,$07,$D6,$03,$FE; RAW DATA : 	para "마비치료제로"
	line $09,$01,$04,$11,$0A,$6F,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	line "치료하세요!"
	prompt

_ViridianBlackboardBurnText::
	text $0A,$AD,$05,$C3,$7F,$05,$C3,$09,$92,$01,$01,$7F,$03,$27,$04,$89; RAW DATA : 	text "화상 상태가 되면"
	line $0A,$FB,$01,$6A,$7F,$06,$4A,$0A,$67,$03,$45,$01,$01,$7F,$03,$83,$06,$EE,$08,$26,$01,$4D; RAW DATA : 	line "힘과 스피드가 떨어지고"
	cont $08,$26,$06,$03,$07,$CB,$07,$88,$03,$FE,$7F,$03,$05,$04,$CC,$08,$26,$01,$01; RAW DATA : 	cont "지속적으로 데미지가"
	cont $04,$DF,$05,$CD,$0A,$75,$02,$CF,$02,$D9; RAW DATA : 	cont "발생합니다"

	para $0A,$AD,$05,$C3,$7F,$05,$C3,$09,$92,$02,$C2; RAW DATA : 	para "화상 상태는"
	line $04,$E8,$09,$E2,$0A,$C4,$07,$01,$03,$15,$7F,$07,$7F,$08,$26,$03,$2B,$02,$CF,$02,$D9; RAW DATA : 	line "배틀후에도 유지됩니다"

	para $0A,$AD,$05,$C3,$09,$01,$04,$11,$07,$D6,$03,$FE; RAW DATA : 	para "화상치료제로"
	line $09,$01,$04,$11,$0A,$6F,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	line "치료하세요!"
	prompt

_ViridianBlackboardFrozenText::
	text $01,$08,$07,$CC,$7F,$05,$C3,$09,$92,$07,$9E,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8A; RAW DATA : text "감전 상태인 포켓몬은"
	line $01,$F4,$07,$AB,$7F,$0A,$72,$7F,$06,$26,$7F,$06,$F8,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "꼼작 할 수 없습니다!"

	para $04,$E8,$09,$E2,$07,$9C,$7F,$02,$31,$02,$3D,$0A,$C4,$07,$01,$03,$15; RAW DATA : 	para "배틀이 끝난후에도"
	line $06,$F3,$07,$8D,$7F,$05,$C3,$09,$92,$02,$C2,$7F,$08,$26,$06,$03,$03,$2B,$02,$CF,$02,$D9; RAW DATA : 	line "얼음 상태는 지속됩니다"

	para $06,$F3,$07,$8D,$05,$C3,$09,$92,$09,$01,$04,$11,$07,$D6,$03,$FE; RAW DATA : 	para "얼음상태치료제로"
	line $09,$01,$04,$11,$0A,$6F,$05,$EC,$07,$44,$0B,$66; RAW DATA : 	line "치료하세요!"
	prompt

_VermilionGymTrashText::
	text $06,$C6,$04,$AB,$01,$2D,$03,$15,$7F,$06,$F8,$02,$D9,$0B,$66; RAW DATA : 	text "아무것도 없다!"
	line $01,$A7,$02,$69,$7F,$06,$B2,$03,$E9,$01,$B2,$04,$48,$7F,$07,$A6,$02,$D9; RAW DATA : 	line "그냥 쓰레기만 있다"
	done

_VermilionGymTrashSuccessText1::
	text $06,$E6,$0A,$A3,$0B,$66; RAW DATA : 	text "얏호!"
	line $06,$B2,$03,$E9,$01,$B2,$09,$BB,$7F,$04,$D9,$02,$DA,$07,$01,$7F,$06,$4A,$07,$77,$09,$01,$01,$01,$7F,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "쓰레기통 바닥에 스위치가 있다!"
	cont $06,$4A,$07,$77,$09,$01,$04,$36,$7F,$09,$80,$07,$AA,$0B,$66; RAW DATA : 	cont "스위치를 키자!"

	para $F7,$04,$F8,$08,$40,$7F,$07,$CC,$07,$AA,$07,$AA,$04,$B0,$06,$18,$01,$01; RAW DATA : 	para "1번째 전자자물쇠가"
	line $0A,$3E,$03,$F8,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	line "풀렸다!@@"

_VermilionGymTrashSuccessText2::
	text $06,$E6,$0A,$A3,$0B,$66; RAW DATA : 	text "얏호!"
	line $06,$B2,$03,$E9,$01,$B2,$09,$BB,$7F,$04,$D9,$02,$DA,$07,$01,$7F,$06,$4A,$07,$77,$09,$01,$01,$01,$7F,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "쓰레기통 바닥에 스위치가 있다!"
	cont $06,$4A,$07,$77,$09,$01,$04,$36,$7F,$09,$80,$07,$AA,$0B,$66; RAW DATA : 	cont "스위치를 키자!"
	prompt

_VermilionGymTrashSuccessText3::
	text $F8,$04,$F8,$08,$40,$7F,$07,$CC,$07,$AA,$07,$AA,$04,$B0,$06,$18,$01,$01; RAW DATA : 	text "2번째 전자자물쇠가"
	line $0A,$3E,$03,$F8,$02,$D9,$0B,$66; RAW DATA : 	line "풀렸다!"

	para $07,$AA,$03,$1F,$04,$AE,$07,$9C,$7F,$07,$0D,$03,$F8,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	para "자동문이 열렸다!@@"

_VermilionGymTrashFailText::
	text $06,$C6,$04,$AB,$01,$2D,$03,$15,$7F,$06,$F8,$02,$D9,$0B,$66; RAW DATA : 	text "아무것도 없다!"
	line $01,$A7,$02,$69,$7F,$06,$B2,$03,$E9,$01,$B2,$04,$48,$7F,$07,$A6,$02,$D9; RAW DATA : 	line "그냥 쓰레기만 있다"
	cont $07,$CC,$07,$AA,$07,$AA,$04,$B0,$06,$18,$01,$01,$7F,$04,$3E,$05,$F2,$03,$26,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	cont "전자자물쇠가 리셋됐다!@@"

_FoundHiddenItemText::
	text $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52, "는(은)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcd6d
	text $07,$8B,$0B,$64,$04,$36,$0B,$65,$7F,$04,$DF,$01,$3F,$0A,$7F,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	text "을(를) 발견했다!@@"

_HiddenItemBagFullText::
	text $0A,$6F,$08,$26,$04,$48,$7F; RAW DATA : 	text "하지만 "
	db $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	db $52, "는(은)"
	line $02,$F5,$7F,$07,$9C,$05,$C3,$07,$8A,$7F,$03,$49,$7F,$06,$26,$7F,$06,$F8,$06,$EE,$0B,$66; RAW DATA : 	line "더 이상은 들 수 없어!"
	done

_FoundHiddenCoinsText::
	text $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52, "는(은)"
	line $50; RAW DATA : 	line "@"
	TX_BCD hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text $01,$13,$07,$97,$7F,$03,$1F,$07,$CC,$07,$8B,$7F,$04,$DF,$01,$3F,$0A,$7F,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	text "개의 동전을 발견했다!@@"

_FoundHiddenCoins2Text::
	text $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52, "는(은)"
	line $50; RAW DATA : 	line "@"
	TX_BCD hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text $01,$13,$07,$97,$7F,$03,$1F,$07,$CC,$07,$8B,$7F,$04,$DF,$01,$3F,$0A,$7F,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	text "개의 동전을 발견했다!@@"

_DroppedHiddenCoinsText::
	text ""
	para $06,$C6,$07,$9C,$01,$4D,$0B,$66; RAW DATA : 	para "아이고!"
	line $03,$1F,$07,$CC,$07,$9C,$7F,$03,$83,$06,$EE,$07,$DE,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "동전이 떨어져있다!"
	done

_IndigoPlateauStatuesText1::
	text $07,$9C,$01,$67,$07,$8A,$7F,$05,$DE,$07,$15,$01,$4D,$07,$68; RAW DATA : 	text "이곳은 석영고원"
	prompt

_IndigoPlateauStatuesText2::
	text $07,$9C,$01,$67,$02,$C2,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$04,$3E,$01,$A7; RAW DATA : 	text "이곳는 포켓몬 리그"
	line $09,$DE,$03,$E9,$07,$9C,$02,$6A,$03,$49,$07,$97,$7F,$08,$D6,$07,$EE,$04,$91,$0A,$35; RAW DATA : 	line "트레이너들의 최종목표"
	done

_IndigoPlateauStatuesText3::
	text $07,$9C,$01,$67,$07,$8A,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$04,$3E,$01,$A7; RAW DATA : 	text "이곳은 포켓몬 리그"
	line $08,$D6,$01,$4D,$07,$97,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$01,$97,$07,$77,$07,$AA; RAW DATA : 	line "최고의 포켓몬 권위자"
	done

_PokemonBooksText::
	text $0A,$27,$09,$2F,$04,$93,$7F,$08,$A5,$03,$49,$03,$FE; RAW DATA : 	text "포켓몬 책들로"
	line $05,$79,$01,$4E,$0A,$6F,$01,$34,$7F,$08,$A4,$07,$66,$07,$DE,$7F,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "빼곡하게 채워져 있다!"
	done

_DiglettSculptureText::
	text $03,$60,$01,$A7,$02,$3A,$7F,$07,$E6,$01,$02,$05,$C3,$07,$9C,$02,$D9; RAW DATA : 	text "디그나 조각상이다"
	done

_ElevatorText::
	text $07,$04,$04,$3E,$05,$03,$07,$9C,$09,$9D,$02,$D9; RAW DATA : 	text "엘리베이터다"
	done

_TownMapText::
	text $09,$88,$07,$4E,$04,$6A,$07,$9C,$02,$D9,$50,$50; RAW DATA : 	text "타운맵이다@@"

_PokemonStuffText::
	text $07,$4C,$07,$2D,$0B,$66,$7F,$06,$F6,$08,$BB,$02,$3D; RAW DATA : 	text "우와! 엄청난"
	line $0A,$27,$09,$2F,$04,$93,$7F,$05,$C3,$0A,$40,$03,$49,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	line "포켓몬 상품들이다!"
	done

_OutOfSafariBallsText::
	text $06,$C8,$02,$4B,$04,$E6,$06,$0B,$0B,$62,$03,$69,$0B,$68,$03,$1F,$0B,$66; RAW DATA : 	text "안내방송『딩-동!"

	para $05,$B7,$09,$F4,$04,$3E,$05,$1C,$07,$8B; RAW DATA : 	para "사파리볼을"
	line $02,$D9,$7F,$06,$B2,$05,$FC,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "다 쓰셨습니다!"
	prompt

_WildRanText::
	text $06,$DF,$05,$CD,$07,$97,$7F,$50; RAW DATA : 	text "야생의 @"
	TX_RAM wEnemyMonNick
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $03,$15,$04,$61,$08,$C6,$02,$D9,$0B,$66; RAW DATA : 	line "도망쳤다!"
	prompt

_EnemyRanText::
	text $07,$CB,$07,$97,$7F,$50; RAW DATA : 	text "적의 @"
	TX_RAM wEnemyMonNick
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $03,$15,$04,$61,$08,$C6,$02,$D9,$0B,$66; RAW DATA : 	line "도망쳤다!"
	prompt

_HurtByPoisonText::
	text $5A, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $5A, "는(은)"
	line $03,$16,$07,$97,$7F,$03,$05,$04,$CC,$08,$26,$04,$36,$7F,$07,$A4,$01,$4D,$7F,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "독의 데미지를 입고 있다!"
	prompt

_HurtByBurnText::
	text $5A, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $5A, "는(은)"
	line $0A,$AD,$05,$C3,$07,$97,$7F,$03,$05,$04,$CC,$08,$26,$04,$36,$7F,$07,$A4,$06,$FA,$02,$D9,$0B,$66; RAW DATA : 	line "화상의 데미지를 입었다!"
	prompt

_HurtByLeechSeedText::
	text $01,$B2,$05,$CD,$04,$91,$07,$9C,$7F; RAW DATA : 	text "기생목이 "
	db $5A, $07,$97; RAW DATA : 	db $5A, "의"
	line $08,$BC,$03,$F2,$07,$8B,$7F,$05,$79,$06,$D1,$06,$D2,$02,$D9,$0B,$66; RAW DATA : 	line "체력을 빼앗았다!"
	prompt

_EnemyMonFaintedText::
	text $07,$CB,$07,$97,$7F,$50
	TX_RAM wEnemyMonNick
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65
	line $06,$B2,$03,$DF,$07,$E3,$02,$D9,$0B,$66
	prompt

_MoneyForWinningText::
	text $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65,$7F,$05,$C3,$01,$AD,$07,$88,$03,$FE; RAW DATA : 	text $52, "는(은) 상금으로"
	line $50; RAW DATA : 	line "@"
	TX_BCD wAmountMoneyWon, 3 | LEADING_ZEROES | LEFT_ALIGN
	text $07,$68,$7F,$06,$05,$07,$01,$7F,$02,$76,$06,$FA,$02,$D9,$0B,$66; RAW DATA : 	text "원 손에 넣었다!"
	prompt

_TrainerDefeatedText::
	text $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52, "는(은)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wTrainerName
	text $07,$2D,$0B,$64,$01,$6A,$0B,$65,$07,$97,$7F,$06,$62,$05,$2E,$07,$01,$05,$DD; RAW DATA : 	text "와(과)의"
	cont $07,$9C,$01,$45,$02,$D9,$0B,$66 ; RAW DATA : cont "승부에서 이겼다!"
	prompt

_PlayerMonFaintedText::
	TX_RAM wBattleMonNick
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $06,$B2,$03,$DF,$07,$E3,$02,$D9,$0B,$66; RAW DATA : 	line "쓰러졌다!"
	prompt

_UseNextMonText::
	text $02,$D9,$07,$8D,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$05,$B7,$07,$4B,$0A,$6F,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text "다음 포켓몬을 사용하겠습니까?"
	done

_Sony1WinText::
	text $53,$0B,$62,$03,$26,$06,$EE,$0B,$66; RAW DATA : 	text $53,"『됐어!"
	line $07,$F1,$07,$8A,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$01,$61,$03,$CA,$02,$3A,$05,$18,$01,$8A,$0B,$66; RAW DATA : 	line "좋은 포켓몬을 골랐나보군!"
	prompt

_PlayerBlackedOutText2::
	text $52, $07,$97,$7F,$01,$47,$07,$01,$02,$C2; RAW DATA : 	text $52, "의 곁에는"
	line $06,$6E,$07,$4F,$7F,$06,$26,$7F,$07,$A6,$02,$C2,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$06,$F8,$02,$D9,$0B,$66; RAW DATA : 	line "싸울 수 있는 포켓몬이 없다!"

	para $52, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	para $52, "는(은)"
	line $02,$AB,$06,$D5,$07,$9C,$7F,$01,$C4,$01,$C4,$0A,$78,$07,$E3,$02,$D9,$0B,$66; RAW DATA : 	line "눈앞이 깜깜해졌다!"
	prompt

_LinkBattleLostText::
	text $52,$02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52,"는(은)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wTrainerName
	text $07,$2D,$0B,$64,$01,$6A,$0B,$65,$07,$97,$7F,$06,$62,$05,$2E,$07,$01,$05,$DD,$7F,$07,$E3,$02,$D9,$0B,$66,$0B,$66; RAW DATA : 	text "와(과)의 승부에서 졌다!!"
	prompt
;확인필요
_TrainerAboutToUseText::
	TX_RAM wTrainerName
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wEnemyMonNick
	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text "를(을)"
	cont $01,$D8,$02,$4B,$03,$F1,$7F,$0A,$6F,$01,$4D,$07,$A6,$02,$D9; RAW DATA : 	cont "꺼내려 하고있다"

	para $52, $0B,$64,$07,$9C,$0B,$65,$03,$15,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B; RAW DATA : 	para $52, "(이)도 포켓몬을"
	line $04,$D9,$02,$09,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "바꾸겠습니까?"
	done

_TrainerSentOutText::
	TX_RAM wTrainerName
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wEnemyMonNick
	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text "를(을)"
	cont $08,$97,$03,$FA,$03,$FE,$7F,$01,$D8,$02,$62,$02,$D9; RAW DATA : 	cont "차례로 꺼냈다"
	done

_NoWillText::
	text $06,$6E,$07,$4F,$7F,$01,$B2,$03,$F2,$07,$9C,$7F,$06,$F8,$02,$D9,$0B,$66; RAW DATA : 	text "싸울 기력이 없다!"
	prompt

_CantEscapeText::
	text $03,$15,$04,$61,$09,$05,$7F,$06,$26,$01,$01,$7F,$06,$F8,$02,$D9,$0B,$66; RAW DATA : 	text "도망칠 수가 없다!"
	prompt
;오타 수정
_NoRunningText::
	text $06,$C8,$7F,$03,$25,$0B,$66; RAW DATA : 	text "안 돼!"
	line $06,$62,$05,$2E,$03,$15,$08,$0F,$07,$01; RAW DATA : 	line "승부도중에"
	cont $05,$C3,$02,$EB,$07,$01,$01,$34,$7F,$03,$4E,$07,$8B,$7F,$05,$18,$07,$9F,$7F,$06,$26,$7F,$06,$F8,$06,$EE,$0B,$66; RAW DATA : 	cont "상대에게 등을 보일 수 없어!"
	prompt

_GotAwayText::
	text $05,$EA,$01,$68,$07,$CB,$07,$88,$03,$FE,$7F,$03,$15,$04,$61,$08,$C6,$02,$D9,$0B,$66; RAW DATA : 	text "성공적으로 도망쳤다!"
	prompt

_ItemsCantBeUsedHereText::
	text $07,$09,$01,$B2,$05,$DD,$02,$C2,$7F,$03,$15,$01,$88,$04,$36; RAW DATA : 	text "여기서는 도구를"
	line $05,$B7,$07,$4B,$0A,$72,$7F,$06,$26,$7F,$06,$F8,$06,$60,$02,$CF,$02,$D9; RAW DATA : 	line "사용할 수 없습니다"
	prompt

_AlreadyOutText::
	TX_RAM wBattleMonNick
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $07,$9C,$04,$CC,$7F,$02,$3A,$01,$01,$7F,$07,$A6,$06,$60,$02,$CF,$02,$D9; RAW DATA : 	line "이미 나가 있습니다"
	prompt

_MoveNoPPText::
	text $01,$B2,$06,$2A,$07,$97,$7F,$02,$42,$07,$8A,$7F,$0A,$27,$07,$9E,$09,$DE,$01,$01,$7F,$06,$F8,$02,$D9,$0B,$66; RAW DATA : 	text "기술의 남은 포인트가 없다!"
	prompt

_MoveDisabledText::
	text $01,$B2,$06,$2A,$07,$8B,$7F,$05,$20,$07,$9E,$7F,$02,$E7,$0A,$78,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	text "기술을 봉인 당해있다!"
	prompt

_NoMovesLeftText::
	TX_RAM wBattleMonNick
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $02,$4E,$7F,$06,$26,$7F,$07,$A6,$02,$C2,$7F,$01,$B2,$06,$2A,$07,$9C,$7F,$06,$F8,$02,$D9,$0B,$66; RAW DATA : 	line "낼 수 있는 기술이 없다!"
	done

_MultiHitText::
	text $07,$CB,$07,$8B,$7F,$50; RAW DATA : 	text "적을 @"
	TX_NUM wPlayerNumHits, 1, 1
	text $0A,$B8,$7F,$04,$62,$0A,$9B,$02,$D9,$0B,$66; RAW DATA : 	text "회 맞혔다!"
	prompt

_ScaredText::
	TX_RAM wBattleMonNick
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65,$7F,$02,$6A,$04,$AB,$7F,$01,$2C,$04,$74,$06,$EE,$05,$DD; RAW DATA : 	text "는(은) 너무 겁먹어서"
	line $07,$62,$08,$27,$07,$9F,$7F,$06,$26,$7F,$06,$F8,$02,$D9,$0B,$66; RAW DATA : 	line "움직일 수 없다!"
	prompt

_GetOutText::
	text $07,$7F,$03,$F9,$0B,$62,$07,$09,$01,$B2,$05,$DD,$7F,$02,$3A,$01,$01,$0B,$6A,$0B,$6A; RAW DATA : 	text "유령『여기서 나가……"
	line $06,$82,$7F,$01,$D8,$07,$DE,$0B,$6A,$0B,$6A; RAW DATA : 	line "썩 꺼져……"
	prompt

_FastAsleepText::
	text $5A, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $5A, "는(은)"
	line $09,$60,$09,$60,$7F,$07,$AA,$01,$4D,$7F,$07,$A6,$02,$D9; RAW DATA : 	line "쿨쿨 자고 있다"
	prompt

_WokeUpText::
	text $5A, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $5A, "는(은)"
	line $02,$AB,$07,$8B,$7F,$03,$89,$02,$D9,$0B,$66; RAW DATA : 	line "눈을 떴다!"
	prompt

_IsFrozenText::
	text $5A, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $5A, "는(은)"
	line $06,$F3,$06,$EE,$04,$F6,$03,$F1,$05,$DD,$7F,$07,$62,$08,$27,$07,$9F,$7F,$06,$26,$7F,$06,$F8,$02,$D9,$0B,$66,$0B,$66; RAW DATA : 	line "얼어버려서 움직일 수 없다!!"
	prompt

_FullyParalyzedText::
	text $5A, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $5A, "는(은)"
	line $04,$46,$05,$61,$03,$27,$06,$FA,$02,$D9,$0B,$66; RAW DATA : 	line "마비되었다!"
	prompt

_FlinchedText::
	text $5A, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $5A, "는(은)"
	line $01,$B2,$01,$01,$7F,$08,$07,$06,$FA,$02,$D9; RAW DATA : 	line "기가 죽었다"
	prompt

_MustRechargeText::
	text $01,$68,$01,$3D,$07,$97,$7F,$04,$DD,$03,$1F,$07,$88,$03,$FE; RAW DATA : 	text "공격의 반동으로"
	line $5A,$02,$C2,$0B,$64,$07,$8A,$0B,$65,$7F,$01,$F4,$08,$36,$04,$98,$0A,$71,$02,$D9; RAW DATA : 	line $5A,"는(은) 꼼짝못한다";파괴광선같은 1턴쉬기 기술류로 확인
	prompt

_DisabledNoMoreText::
	text $5A,$07,$97; RAW DATA : 	text $5A,"의"
	line $05,$B7,$06,$4D,$04,$AD,$01,$B2,$01,$01,$7F,$0A,$3E,$03,$F8,$02,$D9,$0B,$66; RAW DATA : 	line "사슬묶기가 풀렸다!"
	prompt

_IsConfusedText::
	text $5A, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $5A, "는(은)"
	line $0A,$A5,$03,$C5,$07,$01,$7F,$05,$6C,$07,$DE,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "혼란에 빠져있다!"
	prompt

_HurtItselfText::
	text $07,$15,$04,$AE,$03,$15,$7F,$04,$90,$04,$33,$01,$4D; RAW DATA : 	text "영문도 모르고"
	line $07,$AA,$06,$65,$07,$8B,$7F,$01,$68,$01,$3D,$0A,$7F,$02,$D9,$0B,$66; RAW DATA : 	line "자신을 공격했다!"
	prompt

_ConfusedNoMoreText::
	text $5A, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $5A, "는(은)"
	line $0A,$A5,$03,$C5,$07,$9C,$7F,$0A,$3E,$03,$F8,$02,$D9,$0B,$66; RAW DATA : 	line "혼란이 풀렸다!"
	prompt
;검수필요
_SavingEnergyText::
	text $5A, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $5A, "는(은)"
	line $0A,$FB,$07,$8B,$7F,$04,$90,$06,$D2,$02,$D9,$0B,$66; RAW DATA : 	line "힘을 모았다!"
	prompt

_UnleashedEnergyText::
	text $5A, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $5A, "는(은)"
	line $0A,$FB,$07,$8B,$7F,$04,$E6,$08,$E2,$0A,$7F,$02,$D9,$0B,$66; RAW DATA : 	line "힘을 방출했다!"
	prompt

_ThrashingAboutText::
	text $5A, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $5A, "는(은)"
	line $02,$3D,$03,$1F,$07,$9C,$7F,$02,$3A,$01,$4D,$7F,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "난동이 나고 있다!"
	done

_AttackContinuesText::
	text $5A,$07,$97; RAW DATA : 	text $5A,"의"
	line $03,$05,$04,$CC,$08,$26,$04,$36,$7F,$04,$DE,$01,$4D,$07,$A6,$02,$D9; RAW DATA : 	line "데미지를 받고있다";김밥말이같은 조이기 기술
	done

_CantMoveText::
	text $5A, $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $5A, "는(은)"
	line $07,$62,$08,$27,$07,$9F,$7F,$06,$26,$7F,$06,$F8,$02,$D9,$0B,$66; RAW DATA : 	line "움직일 수 없다!"
	prompt

_MoveIsDisabledText::
	text $5A,$07,$97; RAW DATA : 	text $5A,"의"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcd6d
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	cont $05,$B7,$07,$4B,$0A,$72,$7F,$06,$26,$7F,$06,$F8,$02,$D9,$0B,$66; RAW DATA : 	cont "사용할 수 없다!"
	prompt

_MonName1Text::
	text $5A,$50,$50;"<USER>@@"

_Used1Text::
	text "",$07,$97
	line $50,$50; RAW DATA : 	line "@@"

_Used2Text::
	text "",$07,$97
	line $50,$50; RAW DATA : 	line "@@"
	;text ""
	;line $B4,$B2,$A4,$A3,$7F,$50,$50; RAW DATA : 	;line "used @@"


_InsteadText::
	text $02,$EB,$06,$65,$07,$01,$7F; RAW DATA : 	text "대신에 "
	cont $50,$50; RAW DATA : 	cont "@@"

_CF4BText::
	TX_RAM wcf4b
	text $50; RAW DATA : 	text "@"

_ExclamationPoint1Text::
	text $0B,$66; RAW DATA : 	text "!"
	done

_ExclamationPoint2Text::
	text $0B,$66; RAW DATA : 	text "!"
	done

_ExclamationPoint3Text::
	text $0B,$66; RAW DATA : 	text "!"
	done

_ExclamationPoint4Text::
	text $0B,$66; RAW DATA : 	text "!"
	done

_ExclamationPoint5Text::
	text $0B,$66; RAW DATA : 	text "!"
	done

_AttackMissedText::
	text $5A, $07,$97
	line $01,$68,$01,$3D,$07,$8A,$7F,$05,$68,$02,$3A,$01,$0C,$02,$D9,$0B,$66
	prompt
	;<USER>의"
	;공격은 빗나갔다!"
_KeptGoingAndCrashedText::
	text $5A,$03,$15; RAW DATA : 	text $5A,"도"
	line $06,$E0,$01,$03,$07,$97,$7F,$03,$05,$04,$CC,$08,$26,$04,$36,$7F,$07,$A4,$06,$FA,$02,$D9; RAW DATA : 	line "약간의 데미지를 입었다"
	cont $0B,$66; RAW DATA : 	cont "!"
	prompt

_UnaffectedText::
	text $59,$07,$01,$01,$34,$02,$C2; RAW DATA : 	text $59,"에게는"
	line $0A,$BF,$01,$6A,$01,$01,$7F,$06,$F8,$02,$C2,$7F,$03,$4D,$7F,$0A,$6F,$02,$D9,$0B,$6A,$0B,$6A; RAW DATA : 	line "효과가 없는 듯 하다……"
	prompt

_DoesntAffectMonText::
	text $59,$07,$01,$01,$34,$02,$C2; RAW DATA : 	text $59,"에게는"
	line $07,$CC,$0A,$94,$7F,$0A,$BF,$01,$6A,$01,$01,$7F,$06,$F8,$02,$D9,$0B,$66; RAW DATA : 	line "전혀 효과가 없다!"
	prompt

_CriticalHitText::
	text $01,$AE,$06,$02,$07,$01,$7F,$04,$62,$06,$D2,$02,$D9,$0B,$66
	;급소에 맞았다!
	prompt

_OHKOText::
	text $07,$9F,$01,$3D,$0A,$6A,$05,$BC,$0B,$66
	;일격필살!
	prompt

_LoafingAroundText::
	TX_RAM wBattleMonNick
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $01,$34,$07,$88,$04,$37,$07,$8B,$7F,$0A,$67,$07,$4C,$01,$4D,$7F,$07,$A6,$02,$D9; RAW DATA : 	line "게으름을 피우고 있다"
	prompt

_BeganToNapText::
	TX_RAM wBattleMonNick
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $02,$47,$07,$B1,$07,$AA,$01,$B2,$7F,$06,$63,$07,$AB,$0A,$7F,$02,$D9,$0B,$66; RAW DATA : 	line "낮잠자기 시작했다!"
	prompt

_WontObeyText::
	TX_RAM wBattleMonNick
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $04,$4B,$07,$8B,$7F,$03,$48,$08,$26,$7F,$06,$CA,$02,$C2,$02,$D9,$0B,$66; RAW DATA : 	line "말을 듣지 않는다!"
	prompt

_TurnedAwayText::
	TX_RAM wBattleMonNick
	text $7F,$02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text " 는(은)"
	line $07,$3C,$04,$89,$0A,$7F,$02,$D9; RAW DATA : 	line "외면했다"
	prompt

_IgnoredOrdersText::
	TX_RAM wBattleMonNick
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65
	line $04,$8D,$03,$F9,$07,$8B,$7F,$04,$AB,$06,$63,$0A,$7F,$02,$D9,$0B,$66
	;text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	;text "는(은)"
	;line $04,$8D,$03,$F9,$07,$8B,$7F,$04,$AB,$06,$63,$0A,$7F,$02,$D9,$0B,$66; RAW DATA : 	;line "명령을 무시했다!"
	prompt
;검수필요
_SubstituteTookDamageText::
	text $52, $04,$36,$0B,$64,$07,$8B,$0B,$65,$7F,$02,$EB,$06,$65,$0A,$78,$05,$DD; RAW DATA : 	text $52, "를(을) 대신해서"
	line $05,$30,$06,$65,$07,$9C,$7F,$01,$68,$01,$3D,$07,$8B,$7F,$04,$DE,$06,$D2,$02,$D9,$0B,$66; RAW DATA : 	line "분신이 공격을 받았다!"
	prompt

_SubstituteBrokeText::
	text $52,$07,$97,$7F,$05,$30,$06,$65,$07,$8A; RAW DATA : 	text $52,"의 분신은"
	line $05,$B7,$03,$C3,$07,$DE,$04,$F6,$03,$F8,$02,$D9,$0B,$6A,$0B,$6A; RAW DATA : 	line "사라져버렸다……"
	prompt

_BuildingRageText::
	text $5A,$07,$97,$7F,$05,$30,$02,$8B,$07,$97; RAW DATA : 	text $5A,"의 분노의"
	line $05,$1C,$09,$EC,$08,$26,$01,$01,$7F,$07,$23,$03,$C3,$01,$03,$02,$D9,$0B,$66; RAW DATA : 	line "볼티지가 올라간다!"
	prompt

_MirrorMoveFailedText::
	text $01,$A7,$03,$DF,$02,$3A,$7F,$03,$6B,$03,$C3,$0A,$6F,$01,$B2,$02,$C2; RAW DATA : 	text "그러나 따라하기는"
	next $06,$67,$0A,$00,$03,$FE,$7F,$02,$31,$02,$45,$02,$D9,$0B,$66; RAW DATA : 	next "실패로 끝났다!"
	prompt

_HitXTimesText::
	text $50; RAW DATA : 	text "@"
	TX_NUM wEnemyNumHits, 1, 1
	text $0A,$B8,$7F,$04,$62,$06,$D2,$02,$D9,$0B,$66; RAW DATA : 	text "회 맞았다!"
	prompt


_GainedText::
	TX_RAM wcd6d
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65
	line $50,$50; RAW DATA : 	line "@@"
	;는(은)
	;원문은 gained이며 아래의 경험치를 얻었다와 연결되는 문장입니다
	;영어와 한국어의 어법차이때문에 다른곳에서 문제가 발생할수 있기에 원문을 적어둡니다
_WithExpAllText::
	text $0A,$70,$06,$60,$07,$B5,$09,$01,$04,$36,$7F,$09,$BB,$0A,$78; RAW DATA : 	text "학습장치를 통해"
	cont $50,$50; RAW DATA : 	cont "@@"

_BoostedText::
	text $08,$DF,$01,$01,$03,$28; RAW DATA : 	text "추가된"
	cont $50,$50; RAW DATA : 	cont "@@"

_ExpPointsText::
	TX_NUM wExpAmountGained, 2, 4
	text $7F,$01,$46,$0A,$88,$09,$01,$04,$36,$7F,$06,$F2,$06,$FA,$02,$D9,$0B,$66
	;경험치를 얻었다!
	prompt

_GrewLevelText::
	TX_RAM wcd6d
	text $07,$97,$7F,$03,$E9,$05,$07,$07,$9C
	; 의 레벨이
	line $50; RAW DATA : 	line "@"
	TX_NUM wCurEnemyLVL, 1, 3
	text $0B,$64,$07,$88,$0B,$65,$03,$FE,$7F,$03,$27,$06,$FA,$02,$D9,$0B,$66,$50,$50
	;(으)로 되었다!

_WildMonAppearedText::
	text $06,$D1,$0B,$66,$7F,$06,$DF,$05,$CD,$07,$97
	line $50; RAW DATA : 	line "@"
	TX_RAM wEnemyMonNick
	text $0B,$64,$07,$9C,$0B,$65,$01,$01
	cont $09,$D2,$06,$EE,$02,$3A,$07,$34,$02,$D9,$0B,$66
	prompt

_HookedMonAttackedText::
	text $02,$3C,$06,$C6,$07,$23,$04,$40
	line $50
	TX_RAM wEnemyMonNick
	text $0B,$64,$07,$9C,$0B,$65,$01,$01
	cont $02,$FD,$05,$0D,$03,$49,$06,$FA,$02,$D9,$0B,$66
	prompt

_EnemyAppearedText::
	TX_RAM wEnemyMonNick
	text $0B,$64,$07,$9C,$0B,$65,$01,$01; RAW DATA : 	text "(이)가"
	line $09,$D2,$06,$EE,$02,$3A,$07,$34,$02,$D9,$0B,$66; RAW DATA : 	line "튀어나왔다!"
	prompt

_TrainerWantsToFightText::
	TX_RAM wTrainerName
	text $0B,$64,$07,$9C,$0B,$65,$01,$01; RAW DATA : 	text "(이)가"
	line $06,$62,$05,$2E,$04,$36,$7F,$01,$29,$06,$EE,$07,$34,$02,$D9,$0B,$66; RAW DATA : 	line "승부를 걸어왔다!"
	prompt

_UnveiledGhostText::
	text $06,$67,$0A,$61,$06,$4A,$09,$3A,$0A,$61,$03,$FE,$7F,$07,$7F,$03,$F9,$07,$97; RAW DATA : 	text "실프스코프로 유령의"
	line $07,$D4,$08,$BC,$04,$36,$7F,$01,$03,$09,$F4,$0A,$7F,$02,$D9,$0B,$66; RAW DATA : 	line "정체를 간파했다!"
	prompt

_GhostCantBeIDdText::
	text $07,$9C,$03,$E2,$06,$26,$01,$01,$0B,$66,$7F,$07,$7F,$03,$F9,$07,$97; RAW DATA : 	text "이럴수가! 유령의"
	line $07,$D4,$08,$BC,$04,$36,$7F,$06,$CB,$7F,$06,$26,$7F,$06,$F8,$02,$D9,$0B,$66; RAW DATA : 	line "정체를 알 수 없다!"
	prompt

_GoText::
	text $01,$01,$03,$C9,$0B,$66,$7F,$50,$50

_DoItText::
	text $02,$3A,$01,$01,$03,$C9,$0B,$66,$7F,$50,$50

_GetmText::
	text $0A,$FB,$02,$4B,$03,$C3,$0B,$66,$7F,$50,$50

_EnemysWeakText::
	text $05,$C3,$02,$EB,$01,$01,$7F,$06,$E0,$0A,$78,$07,$DE,$7F,$07,$A6,$02,$D9,$0B,$66
	line $08,$99,$06,$4A,$02,$E5,$0B,$66,$7F,$50,$50

_PlayerMon1Text::
	TX_RAM wBattleMonNick
	text $0B,$66; RAW DATA : 	text "!"
	done

_PlayerMon2Text::
	TX_RAM wBattleMonNick
	text $7F,$50,$50; RAW DATA : 	text " @@"

_EnoughText::
	text $07,$9C,$07,$D8,$7F,$03,$26,$06,$EE,$0B,$66,$50,$50

_OKExclamationText::
	text $07,$F1,$06,$C6,$0B,$66,$50,$50

_GoodText::
	text $07,$AF,$7F,$06,$6E,$07,$6C,$02,$D9,$0B,$66,$50,$50

_ComeBackText::
	text ""
	line $03,$19,$06,$C6,$07,$2D,$0B,$66
	done
	
_SuperEffectiveText::
	text $0A,$BF,$01,$6A,$02,$C2,$7F,$03,$A9,$06,$EE,$02,$45,$02,$D9,$0B,$66
	prompt
	;효과는 굉장했다!
_NotVeryEffectiveText::
	text $59,$07,$01,$01,$34,$02,$C2
	line $0A,$BF,$01,$6A,$01,$01,$7F,$06,$F8,$02,$C2,$7F,$03,$4D,$7F,$0A,$6F,$02,$D9,$0B,$6A
	prompt
	;<TARGET>에게
	;효과가 없다…
;원문에는 TARGET이 없음 확인필요?
_SafariZoneEatingText::
	text $06,$DF,$05,$CD,$07,$97,$7F,$50
	;야생의 
	TX_RAM wEnemyMonNick
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65
	line $04,$74,$07,$9C,$04,$36,$7F,$04,$74,$01,$4D,$7F,$07,$A6,$02,$D9,$0B,$66
	prompt
	;는(은)
	;먹이를 먹고 있다!
_SafariZoneAngryText::
	text $06,$DF,$05,$CD,$07,$97,$7F,$50
	TX_RAM wEnemyMonNick
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65
	line $0A,$AD,$01,$01,$7F,$02,$3A,$07,$A6,$02,$D9,$0B,$66
	prompt
	;는(은)
    ;화가 나있다!

; money related
_PickUpPayDayMoneyText::
	text $52,$02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text $52,"는(은)"
	line $50; RAW DATA : 	line "@"
	TX_BCD wTotalPayDayMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text $07,$68,$7F,$08,$06,$07,$6C,$02,$D9,$0B,$66; RAW DATA : 	text "원 주웠다!"
	prompt

_ClearSaveDataText::
	text $04,$90,$03,$47,$7F,$05,$EC,$07,$9C,$05,$4A,$7F,$03,$05,$07,$9C,$09,$9D,$7F,$07,$15,$07,$0A,$07,$8B; RAW DATA : 	text $04,$90,$03,$47,$7F,$05,$EC,$07,$9C,$05,$4A,$7F,$03,$05,$07,$9C,$09,$9D,$7F,$07,$15,$07,$0A,$07,$8B; RAW DATA : 	text $04,$90,$03,$47,$7F,$05,$EC,$07,$9C,$05,$4A,$7F,$03,$05,$07,$9C,$09,$9D,$7F,$07,$15,$07,$0A,$07,$8B; RAW DATA : 	text "모든 세이브 데이터 영역을"
	line $08,$26,$07,$4C,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line $08,$26,$07,$4C,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line $08,$26,$07,$4C,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "지우겠습니까?"
	done

_WhichFloorText::
	text $04,$8E,$7F,$08,$FE,$07,$88,$03,$FE; RAW DATA : 	text "몇 층으로"
	line $01,$01,$06,$63,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "가시겠습니까?"
	done

_PartyMenuNormalText::
	text $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$01,$61,$03,$C3,$7F,$08,$06,$06,$6A,$06,$63,$07,$20; RAW DATA : 	text $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$01,$61,$03,$C3,$7F,$08,$06,$06,$6A,$06,$63,$07,$20; RAW DATA : 	text $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$01,$61,$03,$C3,$7F,$08,$06,$06,$6A,$06,$63,$07,$20; RAW DATA : 	text "포켓몬을 골라 주십시오"
	done

_PartyMenuItemUseText::
	text $06,$EE,$02,$C0,$7F,$0A,$27,$09,$2F,$04,$93,$07,$01,$7F,$05,$B7,$07,$4B,$0A,$6F,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text $06,$EE,$02,$C0,$7F,$0A,$27,$09,$2F,$04,$93,$07,$01,$7F,$05,$B7,$07,$4B,$0A,$6F,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text $06,$EE,$02,$C0,$7F,$0A,$27,$09,$2F,$04,$93,$07,$01,$7F,$05,$B7,$07,$4B,$0A,$6F,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text "어느 포켓몬에 사용하겠습니까?"
	done

_PartyMenuBattleText::
	text $06,$EE,$02,$C0,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$01,$D8,$02,$4B,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text $06,$EE,$02,$C0,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$01,$D8,$02,$4B,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text $06,$EE,$02,$C0,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$01,$D8,$02,$4B,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text "어느 포켓몬을 꺼내겠습니까?"
	done

_PartyMenuUseTMText::
	text $06,$EE,$02,$C0,$7F,$0A,$27,$09,$2F,$04,$93,$07,$01,$01,$34,$7F,$01,$01,$04,$33,$09,$01,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text $06,$EE,$02,$C0,$7F,$0A,$27,$09,$2F,$04,$93,$07,$01,$01,$34,$7F,$01,$01,$04,$33,$09,$01,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text $06,$EE,$02,$C0,$7F,$0A,$27,$09,$2F,$04,$93,$07,$01,$01,$34,$7F,$01,$01,$04,$33,$09,$01,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text "어느 포켓몬에게 가르치겠습니까?"
	done

_PartyMenuSwapMonText::
	text $06,$EE,$03,$60,$03,$FE,$7F,$07,$9C,$03,$1F,$0A,$6F,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text $06,$EE,$03,$60,$03,$FE,$7F,$07,$9C,$03,$1F,$0A,$6F,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text $06,$EE,$03,$60,$03,$FE,$7F,$07,$9C,$03,$1F,$0A,$6F,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text "어디로 이동하겠습니까?"
	done

_PotionText::
	TX_RAM wcd6d
	text $07,$97,$7F,$08,$BC,$03,$F2,$07,$9C; RAW DATA : 	text "의 체력이"
	line $50; RAW DATA : 	line "@"
	TX_NUM wHPBarHPDifference, 2, 3
	text $0A,$B8,$05,$19,$03,$27,$06,$FA,$02,$D9,$0B,$66; RAW DATA : 	text "회복되었다!"
	done

_AntidoteText::
	TX_RAM wcd6d
	text $07,$97,$7F,$03,$16,$07,$8A; RAW DATA : 	text "의 독은"
	line $01,$CA,$02,$2D,$07,$9C,$7F,$05,$B7,$03,$C3,$07,$E3,$02,$D9,$0B,$66; RAW DATA : 	line "깨끗이 사라졌다!"
	done

_ParlyzHealText::
	TX_RAM wcd6d
	text $07,$97,$7F,$04,$96,$07,$01; RAW DATA : 	text "의 몸에"
	line $04,$46,$05,$61,$01,$01,$7F,$05,$B7,$03,$C3,$07,$E3,$02,$D9,$0B,$66; RAW DATA : 	line "마비가 사라졌다!"
	done

_BurnHealText::
	TX_RAM wcd6d
	text $07,$97; RAW DATA : 	text "의"
	line $0A,$AD,$05,$C3,$07,$9C,$7F,$0A,$B8,$05,$19,$03,$27,$06,$FA,$02,$D9,$0B,$66; RAW DATA : 	line "화상이 회복되었다!"
	done

_IceHealText::
	TX_RAM wcd6d
	text $07,$97,$7F,$04,$96,$07,$01; RAW DATA : 	text "의 몸에"
	line $06,$F3,$07,$8D,$07,$9C,$7F,$02,$8C,$06,$D2,$02,$D9,$0B,$66; RAW DATA : 	line "얼음이 녹았다!"
	done

_AwakeningText::
	TX_RAM wcd6d
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $02,$AB,$07,$8B,$7F,$03,$89,$02,$D9,$0B,$66; RAW DATA : 	line "눈을 떴다!"
	done

_FullHealText::
	TX_RAM wcd6d
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $01,$27,$01,$0D,$0A,$6F,$01,$34,$7F,$03,$27,$06,$FA,$02,$D9,$0B,$66; RAW DATA : 	line "건강하게 되었다!"
	done

_ReviveText::
	TX_RAM wcd6d
	text $02,$C2,$0B,$64,$07,$8A,$0B,$65; RAW DATA : 	text "는(은)"
	line $01,$B2,$07,$4E,$07,$8B,$7F,$03,$27,$08,$A3,$06,$D2,$02,$D9,$0B,$66; RAW DATA : 	line "기운을 되찾았다!"
	done

_RareCandyText::
	TX_RAM wcd6d
	text $07,$97,$7F,$03,$E9,$05,$07,$07,$9C; RAW DATA : 	text "의 레벨이"
	line $50; RAW DATA : 	lint "@"
	TX_NUM wCurEnemyLVL, 1, 3
	text $0B,$64,$07,$88,$0B,$65,$03,$FE,$7F,$03,$27,$06,$FA,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	text "(으)로 되었다!@@"

_TurnedOnPC1Text::
	text "<PLAYER>",$02,$C2,$0B,$64,$07,$8A,$0B,$65
	line $09,$24,$0A,$4B,$09,$9D,$07,$97,$7F,$06,$4A,$07,$77,$09,$01,$04,$36,$7F,$09,$37,$02,$D9,$0B,$66
	prompt

_AccessedBillsPCText::
	text $07,$9C,$06,$26,$07,$B7,$07,$97,$7F,$09,$24,$0A,$4B,$09,$9D,$07,$2D,$7F,$07,$0C,$01,$41,$0A,$7F,$02,$D9,$0B,$66

	para $0A,$27,$09,$2F,$04,$93,$7F,$04,$63,$01,$B8,$7F,$06,$63,$06,$4A,$09,$AB,$07,$8B
	line $05,$32,$03,$DF,$02,$62,$06,$60,$02,$CF,$02,$D9,$0B,$66
	prompt

_AccessedSomeonesPCText::
	text $02,$A9,$01,$8A,$01,$01,$07,$97,$7F,$09,$24,$0A,$4B,$09,$9D,$07,$2D,$7F,$07,$0C,$01,$41,$0A,$7F,$02,$D9,$0B,$66

	para $0A,$27,$09,$2F,$04,$93,$7F,$04,$63,$01,$B8,$7F,$06,$63,$06,$4A,$09,$AB,$07,$8B
	line $05,$32,$03,$DF,$02,$62,$06,$60,$02,$CF,$02,$D9,$0B,$66
	prompt

_AccessedMyPCText::
	text $07,$AA,$06,$65,$07,$97,$7F,$09,$24,$0A,$4B,$09,$9D,$07,$2D,$7F,$07,$0C,$01,$41,$0A,$7F,$02,$D9,$0B,$66

	para $03,$15,$01,$88,$7F,$04,$63,$01,$B8,$7F,$06,$63,$06,$4A,$09,$AB,$07,$8B
	line $05,$32,$03,$DF,$02,$62,$06,$60,$02,$CF,$02,$D9,$0B,$66
	prompt

_TurnedOnPC2Text::
	text $52,$02,$C2,$0B,$64,$07,$8A,$0B,$65
	line $09,$24,$0A,$4B,$09,$9D,$07,$97,$7F,$06,$4A,$07,$77,$09,$01,$04,$36,$7F,$02,$76,$06,$FA,$02,$D9,$0B,$66
	prompt

_WhatDoYouWantText::
	text $04,$AB,$06,$F9,$07,$8B,$7F,$0A,$6F,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67
	done

_WhatToDepositText::
	text $04,$AB,$06,$F9,$07,$8B; RAW DATA : 	text "무엇을"
	line $04,$63,$01,$B2,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "맡기겠습니까?"
	done

_DepositHowManyText::
	text $04,$8E,$7F,$01,$13,$04,$36,$7F,$04,$63,$01,$B2,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text "몇 개를 맡기겠습니까?"
	done

_ItemWasStoredText::
	TX_RAM wcd6d
	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text "를(을)"
	line $09,$24,$0A,$4B,$09,$9D,$07,$01,$7F,$04,$63,$01,$45,$06,$60,$02,$CF,$02,$D9; RAW DATA : 	line "컴퓨터에 맡겼습니다"
	prompt

_NothingToDepositText::
	text $03,$15,$01,$88,$04,$36,$7F,$0A,$6F,$02,$3A,$03,$15; RAW DATA : 	text "도구를 하나도"
	line $01,$01,$08,$26,$01,$4D,$7F,$07,$A6,$08,$26,$7F,$06,$CA,$06,$C6,$0B,$66; RAW DATA : 	line "가지고 있지 않아!"
	prompt

_NoRoomToStoreText::
	text $03,$15,$01,$88,$01,$01,$7F,$01,$01,$03,$46,$7F,$07,$A6,$06,$60,$02,$CF,$02,$D9; RAW DATA : 	text "도구가 가득 있습니다"
	line $02,$F5,$7F,$07,$9C,$05,$C3,$7F,$04,$63,$01,$B6,$7F,$06,$26,$7F,$06,$F8,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "더 이상 맡길 수 없습니다!"
	prompt

_WhatToWithdrawText::
	text $04,$AB,$06,$F9,$07,$8B; RAW DATA : 	text "무엇을"
	line $01,$D8,$02,$4B,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "꺼내겠습니까?"
	done

_WithdrawHowManyText::
	text $04,$8E,$7F,$01,$13,$04,$36,$7F,$01,$D8,$02,$4B,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text "몇 개를 꺼내겠습니까?"
	done

_WithdrewItemText::
	TX_RAM wcd6d
	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text "를(을)"
	line $09,$24,$0A,$4B,$09,$9D,$05,$DD,$7F,$01,$D8,$02,$62,$06,$60,$02,$CF,$02,$D9; RAW DATA : 	line "컴퓨터서 꺼냈습니다"
	prompt

_NothingStoredText::
	text $03,$15,$01,$88,$04,$36,$7F,$0A,$6F,$02,$3A,$03,$15; RAW DATA : 	text "도구를 하나도"
	line $01,$01,$08,$26,$01,$4D,$7F,$07,$A6,$08,$26,$7F,$06,$CA,$06,$C6,$0B,$66; RAW DATA : 	line "가지고 있지 않아!"
	prompt

_CantCarryMoreText::
	text $08,$26,$02,$D1,$7F,$04,$B0,$01,$27,$07,$9C,$7F,$07,$AC,$03,$B0,$7F,$07,$A6,$06,$EE,$05,$DD; RAW DATA : 	text "지닌 물건이 잔뜩 있어서"
	line $01,$D8,$02,$4E,$7F,$06,$26,$7F,$06,$F8,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "꺼낼 수 없습니다!"
	prompt

_WhatToTossText::
	text $04,$AB,$06,$F9,$07,$8B; RAW DATA : 	text "무엇을"
	line $04,$F6,$04,$3E,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "버리겠습니까?"
	done

_TossHowManyText::
	text $04,$8E,$7F,$01,$13,$7F,$04,$F6,$04,$3E,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text "몇 개 버리겠습니까?"
	done

_AccessedHoFPCText::
	text $0A,$27,$09,$2F,$04,$93,$7F,$04,$3E,$01,$A7,$7F,$01,$B2,$03,$FF,$07,$01; RAW DATA : 	text "포켓몬 리그 기록에"
	line $07,$D2,$06,$03,$0A,$7F,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "접속했습니다!"

	para $04,$8D,$07,$19,$07,$97,$7F,$07,$CC,$02,$E7,$7F,$04,$3E,$06,$4A,$09,$DE,$07,$01; RAW DATA : 	para "명예의 전당 리스트에"
	line $07,$D2,$06,$03,$0A,$7F,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "접속했습니다!"
	prompt

_SwitchOnText::
	text $09,$24,$0A,$4B,$09,$9D,$07,$97,$7F,$06,$4A,$07,$77,$09,$01,$04,$36,$7F,$02,$76,$06,$FA,$02,$D9,$0B,$66; RAW DATA : 	text "컴퓨터의 스위치를 넣었다!"
	prompt

_WhatText::
	text $04,$AB,$06,$4C,$07,$9F,$07,$9C,$08,$26,$0B,$67; RAW DATA : 	text "무슨일이지?"
	done

_DepositWhichMonText::
	text $06,$EE,$02,$C0,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B; RAW DATA : 	text "어느 포켓몬을"
	line $04,$63,$01,$B2,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "맡기겠습니까?"
	done

_MonWasStoredText::
	TX_RAM wcf4b
	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text "를(을)"
	line $04,$DA,$06,$4A,$7F,$50; RAW DATA : 	line "박스 @"
	TX_RAM wBoxNumString
	text $07,$01,$7F,$04,$63,$01,$45,$02,$D9,$0B,$66; RAW DATA : 	text "에 맡겼다!"
	prompt

_CantDepositLastMonText::
	text $06,$6E,$07,$4F,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$06,$F8,$06,$EE,$08,$26,$01,$34,$7F,$03,$2B,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	text "싸울 포켓몬이 없어지게 됩니다!"
	prompt

_BoxFullText::
	text $04,$DA,$06,$4A,$01,$01,$7F,$01,$01,$03,$46,$08,$A1,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	text "박스가 가득찼습니다!"
	prompt

_MonIsTakenOutText::
	TX_RAM wcf4b
	text $04,$36,$0B,$64,$07,$8B,$0B,$65,$7F,$08,$A3,$06,$D2,$02,$D9,$0B,$66; RAW DATA : 	text "를(을) 찾았다!"
	;line $01,$D8,$02,$62,$06,$60,$02,$CF,$02,$D9,$0B,$6C; RAW DATA : 	;line "꺼냈습니다."
	;cont $50; RAW DATA : 	;cont "@"
	;TX_RAM wcf4b
	;text $08,$A3,$06,$D2,$06,$60,$02,$CF,$02,$D9,$0B,$6C; RAW DATA : 	;text "찾았습니다."
	prompt

_NoMonText::
	text $07,$09,$01,$B2,$07,$01,$02,$C2,$7F,$04,$63,$01,$3C,$03,$30; RAW DATA : 	text "여기에는 맡겨둔"
	line $0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$06,$F8,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "포켓몬이 없습니다!"
	prompt

_CantTakeMonText::
	text $02,$F5,$07,$9C,$05,$C3,$7F,$03,$05,$04,$3E,$01,$4D,$7F,$01,$05,$7F,$06,$26,$7F,$06,$F8,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	text "더이상 데리고 갈 수 없습니다!"
	prompt

_ReleaseWhichMonText::
	text $07,$D4,$04,$4B,$03,$FE,$7F,$02,$95,$06,$C6,$08,$06,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text "정말로 놓아주겠습니까?"
	done

_OnceReleasedText::
	text $02,$95,$06,$C6,$08,$08,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8A; RAW DATA : 	text "놓아준 포켓몬은"
	line $07,$15,$07,$68,$0A,$F7,$7F,$07,$AB,$05,$10,$07,$A4,$02,$CF,$02,$D9; RAW DATA : 	line "영원히 작별입니다"
	para $50; RAW DATA : 	para "@"
	TX_RAM wcf4b
	text $07,$8B,$0B,$64,$04,$36,$0B,$65; RAW DATA : 	text "을(를)"
	cont $07,$D4,$04,$4B,$03,$FE,$7F,$02,$95,$06,$C6,$08,$06,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	cont "정말로 놓아주겠습니까?"
	done

_MonWasReleasedText::
	TX_RAM wcf4b
	text $04,$36,$0B,$64,$07,$8B,$0B,$65,$7F,$04,$DB,$07,$01,$7F,$02,$95,$06,$C6,$08,$06,$06,$FA,$02,$D9; RAW DATA : 	text "를(을) 밖에 놓아주었다"
	line $07,$AF,$01,$01,$0B,$68,$0B,$66,$50; RAW DATA : 	line "잘가-!@"

_CF4BExclamationText::
	TX_RAM wcf4b
	text $0B,$66; RAW DATA : 	text "!"
	prompt

_RequireCoinCaseText::
	text $03,$1F,$07,$CC,$09,$29,$07,$9C,$06,$4A,$01,$01; RAW DATA : 	text "동전케이스가"
	line $0A,$6A,$07,$44,$0A,$75,$02,$CF,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	line "필요합니다!@@"

_ExchangeCoinsForPrizesText::
	text $01,$34,$07,$A3,$07,$8B,$7F,$0A,$78,$05,$DD,$7F,$04,$90,$07,$8A,$7F,$03,$1F,$07,$CC,$07,$8A; RAW DATA : 	text "게임을 해서 모은 동전은"
	line $01,$46,$0A,$40,$07,$88,$03,$FE,$7F,$01,$83,$0A,$AF,$0A,$72,$7F,$06,$26,$7F,$07,$A6,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "경품으로 교환할 수 있습니다!"
	prompt

_WhichPrizeText::
	text $06,$EE,$02,$C0,$7F,$01,$2D,$07,$8B,$7F,$01,$4D,$04,$33,$06,$63,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	text "어느 것을 고르시겠습니까?"
	done

_HereYouGoText::
	text $02,$77,$7F,$07,$09,$01,$B2,$7F,$07,$A6,$06,$60,$02,$CF,$02,$D9,$0B,$66,$0B,$66,$50,$50; RAW DATA : 	text "네 여기 있습니다!!@@"

_SoYouWantPrizeText::
	text $50; RAW DATA : 	text "@"
	TX_RAM wcd6d
	text $0B,$64,$07,$88,$0B,$65,$03,$FE; RAW DATA : 	text "(으)로"
	line $0A,$6F,$06,$63,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "하시겠습니까?"
	done

_SorryNeedMoreCoinsText::
	text $03,$1F,$07,$CC,$07,$9C,$7F,$05,$2E,$07,$E7,$0A,$6F,$01,$8A,$07,$44,$50,$50; RAW DATA : 	text "동전이 부족하군요@@"

_OopsYouDontHaveEnoughRoomText::
	text $01,$A7,$7F,$07,$9C,$05,$C3,$07,$8A,$7F,$08,$26,$02,$D2,$7F,$06,$26,$7F,$06,$F8,$06,$60,$02,$CF,$02,$D9,$50,$50; RAW DATA : 	text "그 이상은 지닐 수 없습니다@@"

_OhFineThenText::
	text $01,$76,$08,$9A,$07,$8A,$03,$4D,$0A,$75,$02,$CF,$02,$D9,$50,$50; RAW DATA : 	text "괜찮은듯합니다@@"

_GetDexRatedText::
	text $0A,$96,$07,$B7,$07,$97,$7F,$0A,$27,$09,$2F,$04,$93,$7F,$03,$15,$01,$08,$07,$8B; RAW DATA : 	text "현재의 포켓몬 도감을"
	line $0A,$22,$01,$01,$04,$DE,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "평가받겠습니까?"
	done

_ClosedOaksPCText::
	text $0B,$6A,$0B,$6A,$7F,$07,$20,$04,$DA,$05,$B7,$07,$97,$7F,$09,$24,$0A,$4B,$09,$9D,$07,$2D,$07,$97; RAW DATA : 	text "…… 오박사의 컴퓨터와의"
	line $07,$D2,$06,$03,$07,$8B,$7F,$02,$31,$02,$62,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	line "접속을 끝냈다!@@"

_AccessedOaksPCText::
	text $07,$20,$04,$DA,$05,$B7,$07,$97,$7F,$09,$24,$0A,$4B,$09,$9D,$07,$2D,$7F,$07,$0C,$01,$41,$0A,$7F,$02,$D9,$0B,$66; RAW DATA : 	text "오박사의 컴퓨터와 연결했다!"

	para $0A,$27,$09,$2F,$04,$93,$7F,$03,$15,$01,$08; RAW DATA : 	para "포켓몬 도감"
	line $0A,$22,$01,$01,$7F,$06,$63,$06,$4A,$09,$AB,$07,$8B,$7F,$05,$32,$03,$DF,$02,$62,$06,$60,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	line "평가 시스템을 불러냈습니다!"
	prompt

_WhereWouldYouLikeText::
	text "Where would you"
	line "like to go?"
	done

_PleaseWaitText::
	text "OK, please wait"
	line "just a moment."
	done

_LinkCanceledText::
	text "The link was"
	line "canceled."
	done

INCLUDE "text/oakspeech.asm"

_DoYouWantToNicknameText::
	text $50; RAW DATA : 	text "@"
	TX_RAM wcd6d
	text $07,$01,$01,$34; RAW DATA : 	text "에게"
	line $07,$9C,$04,$37,$07,$8B,$7F,$05,$39,$07,$9C,$01,$3A,$06,$60,$02,$CF,$01,$BE,$0B,$67; RAW DATA : 	line "이름을 붙이겠습니까?"
	done

_YourNameIsText::
	text $04,$62,$02,$D9,$0B,$66; RAW DATA : 	text "맞다!"
	line $02,$77,$7F,$07,$9C,$04,$37,$07,$8A,$7F; RAW DATA : 	line "네 이름은 "
	db $52,$01,$8A,$07,$9C,$06,$FA,$08,$26,$0B,$66; RAW DATA : db "이었지!"

	prompt

_HisNameIsText::
	text $01,$A7,$03,$D1,$7F,$04,$62,$06,$C6,$0B,$66,$7F,$01,$B2,$06,$EF,$02,$45,$01,$88,$02,$3A,$0B,$66; RAW DATA : 	text "그래 맞아! 기억났구나!"
	line $07,$9C,$7F,$06,$C6,$07,$9C,$07,$97,$7F,$07,$9C,$04,$37,$07,$8A,$7F; RAW DATA : 	line "이 아이의 이름은 "
	cont $53,$01,$8A,$07,$9C,$06,$FA,$08,$26,$0B,$66; RAW DATA : db "이었지!"
	prompt

_WillBeTradedText::
	TX_RAM wNameOfPlayerMonToBeTraded
	text $01,$6A,$0B,$64,$07,$2D,$0B,$65; RAW DATA : 	text "과(와)"
	line $50; RAW DATA : 	line "@"
	TX_RAM wcd6d
	text $04,$36,$0B,$64,$07,$8B,$0B,$65; RAW DATA : 	text "를(을)"
	cont $01,$83,$0A,$AF,$0A,$75,$02,$CF,$02,$D9,$0B,$66; RAW DATA : 	cont "교환합니다!"
	done
;검수해야됨
_Char00Text::
	TX_NUM hSpriteIndexOrTextID,1,2
	text " ERROR."
	done

_Char55Text::
	text $4B,"@@"

INCLUDE "text/maps/digletts_cave_route_2_entrance.asm"
INCLUDE "text/maps/viridian_forest_exit.asm"
INCLUDE "text/maps/route_2_house.asm"
INCLUDE "text/maps/route_2_gate.asm"
INCLUDE "text/maps/viridian_forest_entrance.asm"
INCLUDE "text/maps/mt_moon_pokecenter.asm"
INCLUDE "text/maps/saffron_gates.asm"
INCLUDE "text/maps/daycare_1.asm"


SECTION "Text 4", ROMX, BANK[TEXT_4]

INCLUDE "text/maps/daycare_2.asm"
INCLUDE "text/maps/underground_path_route_6_entrance.asm"
INCLUDE "text/maps/underground_path_route_7_entrance.asm"
INCLUDE "text/maps/underground_path_route_7_entrance_unused.asm"
INCLUDE "text/maps/underground_path_route_8_entrance.asm"
INCLUDE "text/maps/rock_tunnel_pokecenter.asm"
INCLUDE "text/maps/rock_tunnel_b1f.asm"
INCLUDE "text/maps/power_plant.asm"
INCLUDE "text/maps/route_11_gate.asm"
INCLUDE "text/maps/route_11_gate_upstairs.asm"
INCLUDE "text/maps/digletts_cave_route_11_entrance.asm"
INCLUDE "text/maps/route_12_gate.asm"
INCLUDE "text/maps/route_12_gate_upstairs.asm"
INCLUDE "text/maps/route_12_house.asm"
INCLUDE "text/maps/route_15_gate.asm"
INCLUDE "text/maps/route_15_gate_upstairs.asm"
INCLUDE "text/maps/route_16_gate.asm"
INCLUDE "text/maps/route_16_gate_upstairs.asm"
INCLUDE "text/maps/route_16_house.asm"
INCLUDE "text/maps/route_18_gate.asm"
INCLUDE "text/maps/route_18_gate_upstairs.asm"
INCLUDE "text/maps/pokemon_league_gate.asm"
INCLUDE "text/maps/victory_road_2f.asm"
INCLUDE "text/maps/bills_house.asm"
INCLUDE "text/maps/route_1.asm"
INCLUDE "text/maps/route_2.asm"
INCLUDE "text/maps/route_3.asm"
INCLUDE "text/maps/route_4.asm"
INCLUDE "text/maps/route_5.asm"
INCLUDE "text/maps/route_6.asm"
INCLUDE "text/maps/route_7.asm"
INCLUDE "text/maps/route_8.asm"
INCLUDE "text/maps/route_9.asm"
INCLUDE "text/maps/route_10.asm"
INCLUDE "text/maps/route_11_1.asm"


SECTION "Text 5", ROMX, BANK[TEXT_5]

INCLUDE "text/maps/route_11_2.asm"
INCLUDE "text/maps/route_12.asm"
INCLUDE "text/maps/route_13.asm"
INCLUDE "text/maps/route_14.asm"
INCLUDE "text/maps/route_15.asm"
INCLUDE "text/maps/route_16.asm"
INCLUDE "text/maps/route_17.asm"
INCLUDE "text/maps/route_18.asm"
INCLUDE "text/maps/route_19.asm"
INCLUDE "text/maps/route_20.asm"
INCLUDE "text/maps/route_21.asm"
INCLUDE "text/maps/route_22.asm"
INCLUDE "text/maps/route_23.asm"
INCLUDE "text/maps/route_24_1.asm"


SECTION "Text 6", ROMX, BANK[TEXT_6]

INCLUDE "text/maps/route_24_2.asm"
INCLUDE "text/maps/route_25.asm"

_FileDataDestroyedText::
	text "The file data is"
	line "destroyed!"
	prompt

_WouldYouLikeToSaveText::
	text "Would you like to"
	line "SAVE the game?"
	done

_GameSavedText::
	text "<PLAYER> saved"
	line "the game!"
	done

_OlderFileWillBeErasedText::
	text "The older file"
	line "will be erased to"
	cont "save. Okay?"
	done

_WhenYouChangeBoxText::
	text "When you change a"
	line "#MON BOX, data"
	cont "will be saved."

	para "Is that okay?"
	done

_ChooseABoxText::
	text "Choose a"
	line "<pkmn> BOX.@@"

_EvolvedText::
	TX_RAM wcf4b
	text " evolved"
	done

_IntoText::
	text ""
	line "into @"
	TX_RAM wcd6d
	text "!"
	done

_StoppedEvolvingText::
	text "Huh? @"
	TX_RAM wcf4b
	text ""
	line "stopped evolving!"
	prompt

_IsEvolvingText::
	text "What? @"
	TX_RAM wcf4b
	text ""
	line "is evolving!"
	done

_FellAsleepText::
	text "<TARGET>"
	line "fell asleep!"
	prompt

_AlreadyAsleepText::
	text "<TARGET>'s"
	line "already asleep!"
	prompt

_PoisonedText::
	text "<TARGET>"
	line "was poisoned!"
	prompt

_BadlyPoisonedText::
	text "<TARGET>'s"
	line "badly poisoned!"
	prompt

_BurnedText::
	text "<TARGET>"
	line "was burned!"
	prompt

_FrozenText::
	text "<TARGET>"
	line "was frozen solid!"
	prompt

_FireDefrostedText::
	text "Fire defrosted"
	line "<TARGET>!"
	prompt

_MonsStatsRoseText::
	text "<USER>'s"
	line "@"
	TX_RAM wcf4b
	text "@@"

_GreatlyRoseText::
	text $4c, "greatly@@"

_RoseText::
	text " rose!"
	prompt

_MonsStatsFellText::
	text "<TARGET>'s"
	line "@"
	TX_RAM wcf4b
	text "@@"

_GreatlyFellText::
	text $4c, "greatly@@"

_FellText::
	text " fell!"
	prompt

_RanFromBattleText::
	text "<USER>"
	line "ran from battle!"
	prompt

_RanAwayScaredText::
	text "<TARGET>"
	line "ran away scared!"
	prompt

_WasBlownAwayText::
	text "<TARGET>"
	line "was blown away!"
	prompt

_ChargeMoveEffectText::
	text "<USER>@@"

_MadeWhirlwindText::
	text ""
	line "made a whirlwind!"
	prompt

_TookInSunlightText::
	text ""
	line "took in sunlight!"
	prompt

_LoweredItsHeadText::
	text ""
	line "lowered its head!"
	prompt

_SkyAttackGlowingText::
	text ""
	line "is glowing!"
	prompt

_FlewUpHighText::
	text ""
	line "flew up high!"
	prompt

_DugAHoleText::
	text ""
	line "dug a hole!"
	prompt

_BecameConfusedText::
	text "<TARGET>"
	line "became confused!"
	prompt

_MimicLearnedMoveText::
	text "<USER>"
	line "learned"
	cont "@"
	TX_RAM wcd6d
	text "!"
	prompt

_MoveWasDisabledText::
	text "<TARGET>'s"
	line "@"
	TX_RAM wcd6d
	text " was"
	cont "disabled!"
	prompt

_NothingHappenedText::
	text "Nothing happened!"
	prompt

_NoEffectText::
	text "No effect!"
	prompt

_ButItFailedText::
	text "But, it failed! "
	prompt

_DidntAffectText::
	text "It didn't affect"
	line "<TARGET>!"
	prompt

_IsUnaffectedText::
	text "<TARGET>"
	line "is unaffected!"
	prompt

_ParalyzedMayNotAttackText::
	text "<TARGET>'s"
	line "paralyzed! It may"
	cont "not attack!"
	prompt

_SubstituteText::
	text "It created a"
	line "SUBSTITUTE!"
	prompt

_HasSubstituteText::
	text "<USER>"
	line "has a SUBSTITUTE!"
	prompt

_TooWeakSubstituteText::
	text "Too weak to make"
	line "a SUBSTITUTE!"
	prompt

_CoinsScatteredText::
	text "Coins scattered"
	line "everywhere!"
	prompt

_GettingPumpedText::
	text "<USER>'s"
	line "getting pumped!"
	prompt

_WasSeededText::
	text "<TARGET>"
	line "was seeded!"
	prompt

_EvadedAttackText::
	text "<TARGET>"
	line "evaded attack!"
	prompt

_HitWithRecoilText::
	text "<USER>'s"
	line "hit with recoil!"
	prompt

_ConvertedTypeText::
	text "Converted type to"
	line "<TARGET>'s!"
	prompt

_StatusChangesEliminatedText::
	text "All STATUS changes"
	line "are eliminated!"
	prompt

_StartedSleepingEffect::
	text "<USER>"
	line "started sleeping!"
	done

_FellAsleepBecameHealthyText::
	text "<USER>"
	line "fell asleep and"
	cont "became healthy!"
	done

_RegainedHealthText::
	text "<USER>"
	line "regained health!"
	prompt

_TransformedText::
	text "<USER>"
	line "transformed into"
	cont "@"
	TX_RAM wcd6d
	text "!"
	prompt

_LightScreenProtectedText::
	text "<USER>'s"
	line "protected against"
	cont "special attacks!"
	prompt

_ReflectGainedArmorText::
	text "<USER>"
	line "gained armor!"
	prompt

_ShroudedInMistText::
	text "<USER>'s"
	line "shrouded in mist!"
	prompt

_SuckedHealthText::
	text "Sucked health from"
	line "<TARGET>!"
	prompt

_DreamWasEatenText::
	text "<TARGET>'s"
	line "dream was eaten!"
	prompt

_TradeCenterText1::
	text "!"
	done

_ColosseumText1::
	text "!"
	done

INCLUDE "text/maps/reds_house_1f.asm"
INCLUDE "text/maps/blues_house.asm"
INCLUDE "text/maps/oaks_lab.asm"
INCLUDE "text/maps/viridian_pokecenter.asm"
INCLUDE "text/maps/viridian_mart.asm"
INCLUDE "text/maps/school.asm"
INCLUDE "text/maps/viridian_house.asm"
INCLUDE "text/maps/viridian_gym.asm"
INCLUDE "text/maps/museum_1f.asm"
INCLUDE "text/maps/museum_2f.asm"
INCLUDE "text/maps/pewter_gym_1.asm"


SECTION "Text 7", ROMX, BANK[TEXT_7]

INCLUDE "text/maps/pewter_gym_2.asm"
INCLUDE "text/maps/pewter_house_1.asm"
INCLUDE "text/maps/pewter_mart.asm"
INCLUDE "text/maps/pewter_house_2.asm"
INCLUDE "text/maps/pewter_pokecenter.asm"
INCLUDE "text/maps/cerulean_trashed_house.asm"
INCLUDE "text/maps/cerulean_trade_house.asm"
INCLUDE "text/maps/cerulean_pokecenter.asm"
INCLUDE "text/maps/cerulean_gym.asm"
INCLUDE "text/maps/bike_shop.asm"
INCLUDE "text/maps/cerulean_mart.asm"
; INCLUDE "text/maps/cerulean_badge_house.asm"
INCLUDE "text/maps/cerulean_badge_house_1.asm"
INCLUDE "text/maps/cerulean_badge_house_2.asm"
INCLUDE "text/maps/lavender_pokecenter.asm"
INCLUDE "text/maps/pokemon_tower_1f.asm"
INCLUDE "text/maps/pokemon_tower_2f.asm"
INCLUDE "text/maps/pokemon_tower_3f.asm"
INCLUDE "text/maps/pokemon_tower_4f.asm"
INCLUDE "text/maps/pokemon_tower_5f.asm"
INCLUDE "text/maps/pokemon_tower_6f.asm"
INCLUDE "text/maps/pokemon_tower_7f.asm"
INCLUDE "text/maps/fujis_house.asm"
INCLUDE "text/maps/lavender_mart.asm"
INCLUDE "text/maps/lavender_house.asm"
INCLUDE "text/maps/name_rater.asm"
INCLUDE "text/maps/vermilion_pokecenter.asm"
INCLUDE "text/maps/fan_club.asm"
INCLUDE "text/maps/vermilion_mart.asm"
INCLUDE "text/maps/vermilion_gym_1.asm"


SECTION "Text 8", ROMX, BANK[TEXT_8]

INCLUDE "text/maps/vermilion_gym_2.asm"
INCLUDE "text/maps/vermilion_house.asm"
INCLUDE "text/maps/vermilion_dock.asm"
INCLUDE "text/maps/vermilion_fishing_house.asm"
INCLUDE "text/maps/celadon_dept_store_1f.asm"
INCLUDE "text/maps/celadon_dept_store_2f.asm"
INCLUDE "text/maps/celadon_dept_store_3f.asm"
INCLUDE "text/maps/celadon_dept_store_4f.asm"
INCLUDE "text/maps/celadon_dept_store_roof.asm"
INCLUDE "text/maps/celadon_mansion_1f.asm"
INCLUDE "text/maps/celadon_mansion_2f.asm"
INCLUDE "text/maps/celadon_mansion_3f.asm"
INCLUDE "text/maps/celadon_mansion_4f_outside.asm"
INCLUDE "text/maps/celadon_mansion_4f_inside.asm"
INCLUDE "text/maps/celadon_pokecenter.asm"
INCLUDE "text/maps/celadon_gym.asm"
; INCLUDE "text/maps/celadon_game_corner.asm"
INCLUDE "text/maps/celadon_game_corner_1.asm"
INCLUDE "text/maps/celadon_game_corner_2.asm"
INCLUDE "text/maps/celadon_dept_store_5f.asm"
INCLUDE "text/maps/celadon_prize_room.asm"
INCLUDE "text/maps/celadon_diner.asm"
INCLUDE "text/maps/celadon_house.asm"
INCLUDE "text/maps/celadon_hotel.asm"
INCLUDE "text/maps/fuchsia_mart.asm"
INCLUDE "text/maps/fuchsia_house.asm"
INCLUDE "text/maps/fuchsia_pokecenter.asm"
INCLUDE "text/maps/wardens_house.asm"
INCLUDE "text/maps/safari_zone_entrance.asm"
INCLUDE "text/maps/fuchsia_gym_1.asm"


SECTION "Text 9", ROMX, BANK[TEXT_9]

INCLUDE "text/maps/fuchsia_gym_2.asm"
INCLUDE "text/maps/fuchsia_meeting_room.asm"
INCLUDE "text/maps/fuchsia_fishing_house.asm"
INCLUDE "text/maps/mansion_1f.asm"
INCLUDE "text/maps/cinnabar_gym.asm"
INCLUDE "text/maps/cinnabar_lab.asm"
INCLUDE "text/maps/cinnabar_lab_trade_room.asm"
INCLUDE "text/maps/cinnabar_lab_metronome_room.asm"
INCLUDE "text/maps/cinnabar_lab_fossil_room.asm"
INCLUDE "text/maps/cinnabar_pokecenter.asm"
INCLUDE "text/maps/cinnabar_mart.asm"
INCLUDE "text/maps/indigo_plateau_lobby.asm"
INCLUDE "text/maps/copycats_house_1f.asm"
INCLUDE "text/maps/copycats_house_2f.asm"
INCLUDE "text/maps/fighting_dojo.asm"
INCLUDE "text/maps/saffron_gym.asm"
INCLUDE "text/maps/saffron_house.asm"
INCLUDE "text/maps/saffron_mart.asm"
INCLUDE "text/maps/silph_co_1f.asm"
INCLUDE "text/maps/saffron_pokecenter.asm"
INCLUDE "text/maps/mr_psychics_house.asm"

_PokemartGreetingText::
	text "Hi there!"
	next "May I help you?"
	done

_PokemonFaintedText::
	TX_RAM wcd6d
	text ""
	line "fainted!"
	done

_PlayerBlackedOutText::
	text "<PLAYER> is out of"
	line "useable #MON!"

	para "<PLAYER> blacked"
	line "out!"
	prompt

_RepelWoreOffText::
	text "REPEL's effect"
	line "wore off."
	done

_PokemartBuyingGreetingText::
	text "Take your time."
	done

_PokemartTellBuyPriceText::
	TX_RAM wcf4b
	text "?"
	line "That will be"
	cont "¥@"
	TX_BCD hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text ". OK?"
	done

_PokemartBoughtItemText::
	text "Here you are!"
	line "Thank you!"
	prompt

_PokemartNotEnoughMoneyText::
	text "You don't have"
	line "enough money."
	prompt

_PokemartItemBagFullText::
	text "You can't carry"
	line "any more items."
	prompt

_PokemonSellingGreetingText::
	text "What would you"
	line "like to sell?"
	done

_PokemartTellSellPriceText::
	text "I can pay you"
	line "¥@"
	TX_BCD hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text " for that."
	done

_PokemartItemBagEmptyText::
	text "You don't have"
	line "anything to sell."
	prompt

_PokemartUnsellableItemText::
	text "I can't put a"
	line "price on that."
	prompt

_PokemartThankYouText::
	text "Thank you!"
	done

_PokemartAnythingElseText::
	text "Is there anything"
	line "else I can do?"
	done

_LearnedMove1Text::
	TX_RAM wLearnMoveMonName
	text " learned"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_WhichMoveToForgetText::
	text "Which move should"
	next "be forgotten?"
	done

_AbandonLearningText::
	text "Abandon learning"
	line "@"
	TX_RAM wcf4b
	text "?"
	done

_DidNotLearnText::
	TX_RAM wLearnMoveMonName
	text ""
	line "did not learn"
	cont "@"
	TX_RAM wcf4b
	text "!"
	prompt

_TryingToLearnText::
	TX_RAM wLearnMoveMonName
	text " is"
	line "trying to learn"
	cont "@"
	TX_RAM wcf4b
	text "!"

	para "But, @"
	TX_RAM wLearnMoveMonName
	text ""
	line "can't learn more"
	cont "than 4 moves!"

	para "Delete an older"
	line "move to make room"
	cont "for @"
	TX_RAM wcf4b
	text "?"
	done

_OneTwoAndText::
	text "1, 2 and...@@"

_PoofText::
	text " Poof!@@"

_ForgotAndText::
	text ""
	para "@"
	TX_RAM wLearnMoveMonName
	text " forgot"
	line "@"
	TX_RAM wcd6d
	text "!"

	para "And..."
	prompt

_HMCantDeleteText::
	text "HM techniques"
	line "can't be deleted!"
	prompt

_PokemonCenterWelcomeText::
	text "Welcome to our"
	line "#MON CENTER!"

	para "We heal your"
	line "#MON back to"
	cont "perfect health!"
	prompt

_ShallWeHealYourPokemonText::
	text "Shall we heal your"
	line "#MON?"
	done

_NeedYourPokemonText::
	text "OK. We'll need"
	line "your #MON."
	done

_PokemonFightingFitText::
	text "Thank you!"
	line "Your #MON are"
	cont "fighting fit!"
	prompt

_PokemonCenterFarewellText::
	text "We hope to see"
	line "you again!"
	done

_CableClubNPCAreaReservedFor2FriendsLinkedByCableText::
	text "This area is"
	line "reserved for 2"
	cont "friends who are"
	cont "linked by cable."
	done

_CableClubNPCWelcomeText::
	text "Welcome to the"
	line "Cable Club!"
	done

_CableClubNPCPleaseApplyHereHaveToSaveText::
	text "Please apply here."

	para "Before opening"
	line "the link, we have"
	cont "to save the game."
	done

_CableClubNPCPleaseWaitText::
	text "Please wait.@@"

_CableClubNPCLinkClosedBecauseOfInactivityText::
	text "The link has been"
	line "closed because of"
	cont "inactivity."

	para "Please contact"
	line "your friend and"
	cont "come again!"
	done


SECTION "Text 10", ROMX, BANK[TEXT_10]

_CableClubNPCPleaseComeAgainText::
	text "Please come again!"
	done

_CableClubNPCMakingPreparationsText::
	text "We're making"
	line "preparations."
	cont "Please wait."
	done

_UsedStrengthText::
	TX_RAM wcd6d
	text " used"
	line "STRENGTH.@@"

_CanMoveBouldersText::
	TX_RAM wcd6d
	text " can"
	line "move boulders."
	prompt

_CurrentTooFastText::
	text "The current is"
	line "much too fast!"
	prompt

_CyclingIsFunText::
	text "Cycling is fun!"
	line "Forget SURFing!"
	prompt

_FlashLightsAreaText::
	text "A blinding FLASH"
	line "lights the area!"
	prompt

_WarpToLastPokemonCenterText::
	text "Warp to the last"
	line "#MON CENTER."
	done

_CannotUseTeleportNowText::
	TX_RAM wcd6d
	text " can't"
	line "use TELEPORT now."
	prompt

_CannotFlyHereText::
	TX_RAM wcd6d
	text " can't"
	line "FLY here."
	prompt

_NotHealthyEnoughText::
	text "Not healthy"
	line "enough."
	prompt

_NewBadgeRequiredText::
	text "No! A new BADGE"
	line "is required."
	prompt

_CannotUseItemsHereText::
	text "You can't use items"
	line "here."
	prompt

_CannotGetOffHereText::
	text "You can't get off"
	line "here."
	prompt

_GotMonText::
	text "<PLAYER> got"
	line "@"
	TX_RAM wcd6d
	text "!@@"

_SetToBoxText::
	text "There's no more"
	line "room for #MON!"
	cont "@"
	TX_RAM wBoxMonNicks
	text " was"
	cont "sent to #MON"
	cont "BOX @"
	TX_RAM wcf4b
	text " on PC!"
	done

_BoxIsFullText::
	text "There's no more"
	line "room for #MON!"

	para "The #MON BOX"
	line "is full and can't"
	cont "accept any more!"

	para "Change the BOX at"
	line "a #MON CENTER!"
	done

INCLUDE "text/maps/pallet_town.asm"
INCLUDE "text/maps/viridian_city.asm"
INCLUDE "text/maps/pewter_city.asm"
INCLUDE "text/maps/cerulean_city.asm"
INCLUDE "text/maps/lavender_town.asm"
INCLUDE "text/maps/vermilion_city.asm"
INCLUDE "text/maps/celadon_city.asm"
INCLUDE "text/maps/fuchsia_city.asm"
INCLUDE "text/maps/cinnabar_island.asm"
INCLUDE "text/maps/saffron_city.asm"

_ItemUseBallText00::
	text "It dodged the"
	line "thrown BALL!"

	para "This #MON"
	line "can't be caught!"
	prompt

_ItemUseBallText01::
	text "You missed the"
	line "#MON!"
	prompt

_ItemUseBallText02::
	text "Darn! The #MON"
	line "broke free!"
	prompt

_ItemUseBallText03::
	text "Aww! It appeared"
	line "to be caught! "
	prompt

_ItemUseBallText04::
	text "Shoot! It was so"
	line "close too!"
	prompt

_ItemUseBallText05::
	text "All right!"
	line "@"
	TX_RAM wEnemyMonNick
	text " was"
	cont "caught!@@"

_ItemUseBallText07::
	TX_RAM wBoxMonNicks
	text " was"
	line "transferred to"
	cont "BILL's PC!"
	prompt

_ItemUseBallText08::
	TX_RAM wBoxMonNicks
	text " was"
	line "transferred to"
	cont "someone's PC!"
	prompt

_ItemUseBallText06::
	text "New #DEX data"
	line "will be added for"
	cont "@"
	TX_RAM wEnemyMonNick
	text "!@@"

_SurfingGotOnText::
	text "<PLAYER> got on"
	line "@"
	TX_RAM wcd6d
	text "!"
	prompt

_SurfingNoPlaceToGetOffText::
	text "There's no place"
	line "to get off!"
	prompt

_VitaminStatRoseText::
	TX_RAM wcd6d
	text "'s"
	line "@"
	TX_RAM wcf4b
	text " rose."
	prompt

_VitaminNoEffectText::
	text "It won't have any"
	line "effect."
	prompt

_ThrewBaitText::
	text "<PLAYER> threw"
	line "some BAIT."
	done

_ThrewRockText::
	text "<PLAYER> threw a"
	line "ROCK."
	done

_PlayedFluteNoEffectText::
	text "Played the #"
	line "FLUTE."

	para "Now, that's a"
	line "catchy tune!"
	prompt

_FluteWokeUpText::
	text "All sleeping"
	line "#MON woke up."
	prompt

_PlayedFluteHadEffectText::
	text "<PLAYER> played the"
	line "# FLUTE.@@"

_CoinCaseNumCoinsText::
	text "Coins"
	line "@"
	TX_BCD wPlayerCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " "
	prompt

_ItemfinderFoundItemText::
	text "Yes! ITEMFINDER"
	line "indicates there's"
	cont "an item nearby."
	prompt

_ItemfinderFoundNothingText::
	text "Nope! ITEMFINDER"
	line "isn't responding."
	prompt

_RaisePPWhichTechniqueText::
	text "Raise PP of which"
	line "technique?"
	done

_RestorePPWhichTechniqueText::
	text "Restore PP of"
	line "which technique?"
	done

_PPMaxedOutText::
	TX_RAM wcf4b
	text "'s PP"
	line "is maxed out."
	prompt

_PPIncreasedText::
	TX_RAM wcf4b
	text "'s PP"
	line "increased."
	prompt

_PPRestoredText::
	text "PP was restored."
	prompt

_BootedUpTMText::
	text "Booted up a TM!"
	prompt

_BootedUpHMText::
	text "Booted up an HM!"
	prompt

_TeachMachineMoveText::
	text "It contained"
	line "@"
	TX_RAM wcf4b
	text "!"

	para "Teach @"
	TX_RAM wcf4b
	text ""
	line "to a #MON?"
	done

_MonCannotLearnMachineMoveText::
	TX_RAM wcd6d
	text " is not"
	line "compatible with"
	cont "@"
	TX_RAM wcf4b
	text "."

	para "It can't learn"
	line "@"
	TX_RAM wcf4b
	text "."
	prompt

_ItemUseNotTimeText::
	text "OAK: <PLAYER>!"
	line "This isn't the"
	cont "time to use that! "
	prompt

_ItemUseNotYoursToUseText::
	text "This isn't yours"
	line "to use!"
	prompt

_ItemUseNoEffectText::
	text "It won't have any"
	line "effect."
	prompt

_ThrowBallAtTrainerMonText1::
	text "The trainer"
	line "blocked the BALL!"
	prompt

_ThrowBallAtTrainerMonText2::
	text "Don't be a thief!"
	prompt

_NoCyclingAllowedHereText::
	text "No cycling"
	next "allowed here."
	prompt

_NoSurfingHereText::
	text "No SURFing on"
	line "@"
	TX_RAM wcd6d
	text " here!"
	prompt

_BoxFullCannotThrowBallText::
	text "The #MON BOX"
	line "is full! Can't"
	cont "use that item!"
	prompt


SECTION "Text 11", ROMX, BANK[TEXT_11]

_ItemUseText001::
	text "<PLAYER> used@@"

_ItemUseText002::
	TX_RAM wcf4b
	text "!"
	done

_GotOnBicycleText1::
	text "<PLAYER> got on the@@"

_GotOnBicycleText2::
	TX_RAM wcf4b
	text "!"
	prompt

_GotOffBicycleText1::
	text "<PLAYER> got off@@"

_GotOffBicycleText2::
	text "the @"
	TX_RAM wcf4b
	text "."
	prompt

_ThrewAwayItemText::
	text "Threw away"
	line "@"
	TX_RAM wcd6d
	text "."
	prompt

_IsItOKToTossItemText::
	text "Is it OK to toss"
	line "@"
	TX_RAM wcf4b
	text "?"
	prompt

_TooImportantToTossText::
	text "That's too impor-"
	line "tant to toss!"
	prompt

_AlreadyKnowsText::
	TX_RAM wcd6d
	text " knows"
	line "@"
	TX_RAM wcf4b
	text "!"
	prompt

_ConnectCableText::
	text "Okay, connect the"
	line "cable like so!"
	prompt

_TradedForText::
	text "<PLAYER> traded"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text " for"
	cont "@"
	TX_RAM wInGameTradeReceiveMonName
	text "!@@"

_WannaTrade1Text::
	text "I'm looking for"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "! Wanna"

	para "trade one for"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text "? "
	done

_NoTrade1Text::
	text "Awww!"
	line "Oh well..."
	done

_WrongMon1Text::
	text "What? That's not"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "!"

	para "If you get one,"
	line "come back here!"
	done

_Thanks1Text::
	text "Hey thanks!"
	done

_AfterTrade1Text::
	text "Isn't my old"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text " great?"
	done

_WannaTrade2Text::
	text "Hello there! Do"
	line "you want to trade"

	para "your @"
	TX_RAM wInGameTradeGiveMonName
	text ""
	line "for @"
	TX_RAM wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade2Text::
	text "Well, if you"
	line "don't want to..."
	done

_WrongMon2Text::
	text "Hmmm? This isn't"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "."

	para "Think of me when"
	line "you get one."
	done

_Thanks2Text::
	text "Thanks!"
	done

_AfterTrade2Text::
	text "The @"
	TX_RAM wInGameTradeGiveMonName
	text " you"
	line "traded to me"

	para "went and evolved!"
	done

_WannaTrade3Text::
	text "Hi! Do you have"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "?"

	para "Want to trade it"
	line "for @"
	TX_RAM wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade3Text::
	text "That's too bad."
	done

_WrongMon3Text::
	text "...This is no"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "."

	para "If you get one,"
	line "trade it with me!"
	done

_Thanks3Text::
	text "Thanks pal!"
	done

_AfterTrade3Text::
	text "How is my old"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text "?"

	para "My @"
	TX_RAM wInGameTradeGiveMonName
	text " is"
	line "doing great!"
	done

_NothingToCutText::
	text "There isn't"
	line "anything to CUT!"
	prompt

_UsedCutText::
	TX_RAM wcd6d
	text " hacked"
	line "away with CUT!"
	prompt


SECTION "Pokedex Text", ROMX, BANK[POKEDEX_TEXT]

INCLUDE "text/pokedex.asm"


SECTION "Move Names", ROMX, BANK[MOVE_NAMES]

INCLUDE "text/move_names.asm"
