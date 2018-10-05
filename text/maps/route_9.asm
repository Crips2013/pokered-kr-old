_Route9BattleText1::
	text $02,$6A,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$03,$05,$04,$3E,$01,$4D,$07,$A6,$01,$8A,$0B,$66; RAW DATA : 	text "너 포켓몬을 데리고있군!"
	line $02,$6D,$7F,$02,$4B,$01,$D8,$06,$DF,$0B,$66; RAW DATA : 	line "넌 내꺼야!"
	done

 

_Route9EndBattleText1::
	text $07,$AF,$03,$15,$7F,$06,$03,$07,$14,$01,$88,$02,$3A,$0B,$66; RAW DATA : 	text "잘도 속였구나!"
	prompt



_Route9AfterBattleText1::
	text $07,$CA,$7F,$09,$0F,$09,$0F,$0A,$71,$7F,$03,$1F,$01,$8C,$07,$8B,$7F,$09,$BB,$01,$6A,$0A,$6F,$03,$F1,$04,$89; RAW DATA : 	text "저 캄캄한 동굴을 통과하려면"
	line $05,$6B,$07,$9C,$7F,$07,$A6,$06,$EE,$06,$DF,$03,$27; RAW DATA : 	line "빛이 있어야되"
	Done
IF DEF(_YELLOW)
_Route9BattleTextAJ::
	text $02,$3D,$7F,$01,$93,$01,$A8,$07,$97,$7F,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$04,$36; RAW DATA : 	text "난 궁극의 트레이너를"
	line $04,$91,$0A,$35,$03,$FE,$7F,$0A,$6F,$01,$4D,$07,$A6,$02,$D9,$0B,$66; RAW DATA : 	line "목표로 하고있다!"
	done

 

_Route9EndBattleTextAJ::
	text $02,$4B,$7F,$04,$90,$03,$D1,$03,$2E,$08,$26,$01,$01,$7F,$07,$E3,$02,$D9,$01,$4D,$0B,$67; RAW DATA : 	text "내 모래두지가 졌다고?"
	prompt



_Route9AfterBattleTextAJ::
	text $07,$9C,$01,$29,$03,$FE,$7F,$04,$90,$03,$D1,$03,$2E,$08,$26,$03,$FE,$7F,$0A,$6F,$02,$C2; RAW DATA : 	text "이걸로 모래두지로 하는"
	line $F7,$F6,$F6,$07,$0C,$06,$62,$03,$15,$7F,$07,$B7,$06,$63,$07,$AB,$07,$9C,$01,$8A; RAW DATA : 	line "100연승도 재시작이군"
	Done

ELSE
_Route9BattleText2::
	text "Who's that walking"
	line "with those good"
	cont "looking #MON?"
	done

_Route9EndBattleText2::
	text "Out"
	line "like a light!"
	prompt

_Route9AfterBattleText2::
	text "Keep walking!"
	done
ENDC
	
	
_Route9BattleText3::
	text $05,$18,$03,$C3,$09,$88,$07,$4E,$07,$88,$03,$FE,$7F,$01,$01,$03,$F1,$01,$4D; RAW DATA : 	text "보라타운으로 가려고"
	line $03,$19,$05,$BA,$7F,$09,$9D,$02,$6E,$03,$FE,$0B,$6A,$0B,$6A; RAW DATA : 	line "돌산 터널로……"
	done


_Route9EndBattleText3::
	text $07,$CC,$09,$C5,$03,$F2,$07,$97,$7F,$05,$C3,$09,$92,$01,$01,$0B,$66,$0B,$67; RAW DATA : 	text "전투력의 상태가!?"
	prompt



_Route9AfterBattleText3::
	text $02,$6A,$03,$15,$7F,$03,$19,$05,$BA,$09,$9D,$02,$6E,$03,$FE,$7F,$0A,$82,$0A,$6F,$02,$C2,$01,$25,$02,$CF,$0B,$67; RAW DATA : 	text "너도 돌산터널로 향하는거니?"
	done



_Route9BattleText4::
	text $02,$3F,$7F,$01,$C2,$05,$18,$04,$89,$7F,$09,$7B,$09,$3A,$02,$D9,$09,$05,$01,$29,$0B,$66; RAW DATA : 	text "날 깔보면 큰코다칠걸!"
	done



_Route9EndBattleText4::
	text $07,$D6,$01,$B6,$0B,$66; RAW DATA : 	text "제길!"
	line $02,$6A,$04,$AB,$7F,$06,$8A,$07,$AD,$06,$C6,$0B,$66; RAW DATA : 	line "너무 쎄잖아!"
	prompt

 

_Route9AfterBattleText4::
	text $02,$6D,$7F,$07,$B7,$02,$C9,$07,$9C,$7F,$07,$A6,$02,$C2,$01,$34,$7F,$09,$E2,$04,$42,$06,$F8,$06,$EE,$0B,$66; RAW DATA : 	text "넌 재능이 있는게 틀림없어!"
	line $0A,$80,$07,$4E,$07,$8B,$7F,$05,$64,$01,$34,$0B,$66; RAW DATA : 	line "행운을 빌게!"
	done

 

_Route9BattleText5::
	text $0A,$6F,$0A,$6F,$0A,$6F,$0B,$66; RAW DATA : 	text "하하하!"
	line $07,$F1,$08,$26,$0B,$66,$7F,$04,$46,$09,$07,$7F,$08,$26,$04,$17,$0A,$7F,$01,$25,$03,$47,$0B,$66; RAW DATA : 	line "좋지! 마침 지루했거든!"
	done

 

_Route9EndBattleText5::
	text $07,$F1,$06,$C6,$7F,$02,$D9,$06,$63,$01,$03,$02,$D9,$0B,$66; RAW DATA : 	text "좋아 다시간다!"



	para $07,$90,$0B,$67; RAW DATA : 	para "응?"
	line $0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$02,$D9,$7F,$06,$81,$04,$F6,$03,$F8,$07,$AD,$06,$C6,$0B,$66; RAW DATA : 	line "포켓몬을 다 써버렸잖아!"
	prompt



_Route9AfterBattleText5::
	text $07,$9C,$7F,$04,$96,$7F,$06,$D5,$07,$01,$7F,$05,$DD,$02,$D9,$02,$CF; RAW DATA : 	text "이 몸 앞에 서다니"
	line $02,$6A,$7F,$07,$D6,$04,$FD,$7F,$01,$C8,$07,$9C,$7F,$07,$A6,$02,$C2,$7F,$02,$80,$05,$DE,$07,$9C,$01,$88,$02,$3A,$0B,$67; RAW DATA : 	line "너 제법 깡이 있는 녀석이구나?"
	done

 

_Route9BattleText6::
	text $0A,$6F,$0A,$6F,$0A,$6F,$0B,$66; RAW DATA : 	text "하하하!"
	line $03,$45,$05,$EE,$7F,$01,$EF,$04,$6D,$07,$9C,$03,$FE,$01,$88,$02,$3A,$0B,$66; RAW DATA : 	line "드센 꼬맹이로구나!"

	done

 

_Route9EndBattleText6::
	text $04,$E6,$01,$AD,$01,$27,$7F,$02,$EB,$08,$BC,$0B,$67; RAW DATA : 	text "방금건 대체?"
	prompt



_Route9AfterBattleText6::
	text $0A,$6F,$0A,$6F,$0A,$6F,$0B,$66; RAW DATA : 	text "하하하!"
	line $06,$D6,$03,$49,$07,$8A,$7F,$01,$B2,$07,$4E,$07,$9C,$7F,$02,$71,$08,$C4,$06,$DF,$08,$26,$0B,$66; RAW DATA : 	line "애들은 기운이 넘쳐야지!"
	done

_Route9BattleText7::
	text $01,$4D,$09,$01,$07,$01,$05,$DD,$7F,$0A,$27,$09,$2F,$04,$93,$07,$8B,$7F,$09,$80,$07,$4C,$03,$F1,$01,$4D; RAW DATA : 	text "고치에서 포켓몬을 키우려고"
	line $04,$65,$07,$9F,$7F,$06,$C6,$09,$07,$7F,$07,$9F,$08,$8F,$7F,$07,$9F,$06,$EE,$02,$45,$02,$D9,$01,$88,$0B,$66; RAW DATA : 	line "매일 아침 일찍 일어났다구!"
	done

 

_Route9EndBattleText7::
	text $04,$B9,$0B,$67; RAW DATA : 	text "뭐?"



	para $06,$63,$01,$03,$02,$46,$05,$61,$07,$14,$07,$AD,$06,$C6,$0B,$66; RAW DATA : 	para "시간낭비였잖아!"
	prompt



_Route9AfterBattleText7::
	text $01,$0D,$0A,$78,$08,$26,$03,$F1,$04,$89,$7F,$02,$F5,$7F,$04,$49,$07,$8A,$7F,$04,$FA,$03,$E9,$01,$01; RAW DATA : 	text "강해지려면 더 많은 벌레가"
	line $06,$C6,$02,$CF,$03,$C3,$7F,$02,$D9,$04,$35,$01,$29,$7F,$08,$A4,$08,$2D,$0A,$78,$06,$DF,$03,$29,$01,$BE,$0B,$6A,$0B,$6A; RAW DATA : 	line "아니라 다른걸 채집해야될까……"
	done


_Route9BattleText8::
	text $0A,$6F,$0A,$6F,$0A,$6F,$0A,$6F,$0B,$66; RAW DATA : 	text "하하하하!"
	line $07,$AA,$7F,$02,$FD,$05,$0D,$05,$21,$03,$C3,$0B,$66; RAW DATA : 	line "자 덤벼봐라!"
	done

 

_Route9EndBattleText8::
	text $0A,$6F,$0A,$6F,$0A,$6F,$0A,$6F,$0B,$66; RAW DATA : 	text "하하하하!"
	line $07,$D4,$07,$D4,$02,$E7,$02,$E7,$0A,$71,$7F,$06,$62,$05,$2E,$07,$14,$02,$D9,$0B,$66; RAW DATA : 	line "정정당당한 승부였다!"
	prompt

 

_Route9AfterBattleText8::
	text $0A,$6F,$0A,$6F,$0A,$6F,$0A,$6F,$0B,$66; RAW DATA : 	text "하하하하!"
	line $07,$4C,$04,$3E,$01,$10,$07,$9C,$7F,$03,$6B,$06,$4A,$0A,$71,$7F,$05,$B7,$03,$C7,$03,$49,$07,$8A; RAW DATA : 	line "우리같이 따스한 사람들은"
	cont $06,$F0,$07,$D6,$02,$3A,$7F,$07,$64,$01,$4D,$02,$D9,$02,$CF,$08,$26,$0B,$66; RAW DATA : 	cont "언제나 웃고다니지!"
	done

  
_Route9BattleText9::
	text $01,$01,$03,$C3,$0B,$66; RAW DATA : 	text "가라!"
	line $02,$4B,$7F,$08,$CA,$01,$0D,$03,$F2,$7F,$04,$FA,$03,$E9,$7F,$0A,$27,$09,$2F,$04,$93,$0B,$66; RAW DATA : 	line "내 초강력 벌레 포켓몬!"
	done

_Route9EndBattleText9::
	text $02,$4B,$7F,$04,$FA,$03,$E9,$03,$49,$07,$9C,$0B,$6A,$0B,$6A; RAW DATA : 	text "내 벌레들이……"
	prompt



_Route9AfterBattleText9::
	text $04,$FA,$03,$E9,$7F,$0A,$27,$09,$2F,$04,$93,$07,$9C,$7F,$06,$68,$02,$D9,$01,$4D,$7F,$0A,$78,$03,$15; RAW DATA : 	text "벌레 포켓몬이 싫다고 해도"
	line $01,$7B,$04,$03,$0A,$F7,$08,$26,$02,$C2,$7F,$04,$4B,$06,$C6,$08,$10,$0B,$66; RAW DATA : 	line "괴롭히지는 말아줘!"
	done

_Route9Text11::
	text $07,$9C,$01,$67,$07,$8A,$7F,$FF,$04,$F8,$7F,$03,$15,$03,$FE; RAW DATA : 	text "이곳은 9번 도로"
	line $05,$4D,$04,$17,$06,$63,$09,$EC,$7F,$0B,$6A,$0B,$6A,$7F,$03,$19,$05,$BA,$7F,$09,$9D,$02,$6E; RAW DATA : 	line "블루시티 …… 돌산 터널"
	done
