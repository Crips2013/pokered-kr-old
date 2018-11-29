IF DEF(_YELLOW)
_PokemonTowerJessieJamesText1::
	text $01,$34,$05,$E8,$01,$25,$03,$C3,$0B,$66,$50,$50; RAW DATA : 	text "게섯거라!@@"

_PokemonTowerJessieJamesText2::
	text $07,$09,$01,$B2,$07,$A6,$02,$C2,$7F,$0A,$72,$04,$E8,$01,$01; RAW DATA : 	text "여기있는 할배가"
	line $05,$32,$04,$48,$07,$9C,$7F,$04,$49,$01,$B6,$03,$D1; RAW DATA : 	line "불만이 많길래"
	cont $02,$DC,$02,$DC,$0A,$F7,$7F,$0A,$A5,$02,$4B,$08,$06,$01,$4D,$7F,$07,$34,$08,$26; RAW DATA : 	cont "단단히 혼내주고 왔지"

	para $01,$A7,$03,$DF,$02,$CF,$01,$BE,$7F,$02,$E7,$07,$B5,$7F,$07,$09,$01,$B2,$05,$DD; RAW DATA : 	para "그러니까 당장 여기서"
	line $05,$B7,$03,$C3,$08,$26,$01,$25,$02,$3A; RAW DATA : 	line "사라지거나"
	cont $0A,$27,$09,$2F,$04,$93,$7F,$04,$E8,$09,$E2,$07,$9C,$02,$D9,$0B,$66; RAW DATA : 	cont "포켓몬 배틀이다!"
	done

_PokemonTowerJessieJamesText3::
	text $06,$68,$07,$8A,$7F,$02,$C0,$02,$36,$0B,$68,$0B,$66,$0B,$66; RAW DATA : 	text "싫은 느낌-!!"
	prompt

_PokemonTowerJessieJamesText4::
	text $07,$4C,$04,$3E,$7F,$03,$FE,$09,$2F,$02,$DC,$03,$49,$07,$01,$01,$35,$7F,$06,$C6,$04,$37,$02,$D9,$07,$4E,$7F,$04,$CC,$03,$D1; RAW DATA : 	text "우리 로켓단들에겐 아름다운 미래"
	line $04,$E0,$07,$8A,$7F,$02,$4B,$07,$9F,$07,$9C,$7F,$01,$B2,$02,$D9,$04,$3E,$01,$4D,$7F,$07,$A6,$02,$D9,$0B,$66,$50,$50; RAW DATA : 	line "밝은 내일이 기다리고 있다!@@"

ELSE
_PokemonTower7BattleText1::
	text "What do you want?"
	line "Why are you here?"
	done

_PokemonTower7EndBattleText1::
	text "I give up!"
	prompt

_PokemonTower7AfterBattleText1::
	text "I'm not going to"
	line "forget this!"
	done

_PokemonTower7BattleText2::
	text "This old guy came"
	line "and complained"
	cont "about us harming"
	cont "useless #MON!"

	para "We're talking it"
	line "over as adults!"
	done

_PokemonTower7EndBattleText2::
	text "Please!"
	line "No more!"
	prompt

_PokemonTower7AfterBattleText2::
	text "#MON are only"
	line "good for making"
	cont "money!"

	para "Stay out of our"
	line "business!"
	done

_PokemonTower7BattleText3::
	text "You're not saving"
	line "anyone, kid!"
	done

_PokemonTower7EndBattleText3::
	text "Don't"
	line "fight us ROCKETs!"
	prompt

_PokemonTower7AfterBattleText3::
	text "You're not getting"
	line "away with this!"
	done
ENDC

_TowerRescueFujiText::
	text $03,$4E,$02,$3A,$04,$AB,$7F,$0A,$72,$06,$C6,$04,$F6,$08,$26,$0B,$62,$07,$90,$0B,$67; RAW DATA : 	text "등나무 할아버지『응?"
	line $01,$88,$0A,$6F,$03,$DF,$7F,$07,$2D,$08,$08,$01,$25,$02,$CF,$0B,$67; RAW DATA : 	line "구하러 와준거니?"

	para $01,$4D,$04,$4F,$01,$88,$02,$3A; RAW DATA : 	para "고맙구나"
	line $0A,$6F,$08,$26,$04,$48,$7F,$02,$3A,$02,$C2,$7F,$07,$09,$01,$B2,$07,$01; RAW DATA : 	line "하지만 나는 여기에"
	cont $06,$4A,$06,$4A,$03,$FE,$7F,$07,$22,$01,$25,$03,$C5,$02,$D9; RAW DATA : 	cont "스스로 온거란다"

	para $09,$91,$01,$88,$04,$3E,$7F,$06,$EE,$04,$CC,$07,$97,$7F,$07,$15,$0A,$A5,$07,$8B; RAW DATA : 	para "탕구리 어미의 영혼을"
	line $02,$DE,$03,$D1,$08,$06,$03,$DF,$07,$34,$08,$26; RAW DATA : 	line "달래주러왔지"

 

	para $09,$A6,$01,$88,$04,$3E,$07,$97,$7F,$07,$15,$0A,$A5,$03,$15,$7F,$07,$9C,$07,$D6; RAW DATA : 	para "텅구리의 영혼도 이제"
	line $07,$CA,$06,$62,$07,$88,$03,$FE,$7F,$03,$80,$02,$3D,$7F,$01,$2D,$7F,$01,$10,$01,$88,$02,$3A; RAW DATA : 	line "저승으로 떠난 것 같구나"
	
 

	para $02,$6A,$07,$97,$7F,$03,$15,$07,$62,$07,$01; RAW DATA : 	para "너의 도움에"
	line $01,$08,$05,$B7,$04,$36,$7F,$0A,$35,$0A,$78,$06,$DF,$7F,$01,$3A,$01,$88,$02,$3A,$0B,$66; RAW DATA : 	line "감사를 표해야 겠구나!"

	para $07,$9C,$09,$88,$07,$66,$7F,$04,$D8,$07,$01,$07,$A6,$02,$C2,$7F,$02,$4B,$08,$2D; RAW DATA : 	para "이타워 밑에있는 내집"
	line $0A,$27,$09,$2F,$04,$93,$7F,$07,$CA,$09,$93,$07,$88,$03,$FE,$7F,$03,$6B,$03,$C3,$07,$20,$03,$F5; RAW DATA : 	line "포켓몬 저택으로 따라오렴"
	Done