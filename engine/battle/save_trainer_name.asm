SaveTrainerName:
	ld hl, TrainerNamePointers
	ld a, [wTrainerClass]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, wcd6d
.CopyCharacter
	ld a, [hli]
	ld [de], a
	inc de
	cp "@"
	jr nz, .CopyCharacter
	ret

TrainerNamePointers:
; what is the point of these?
	dw YoungsterName
	dw BugCatcherName
	dw LassName
	dw wTrainerName
	dw JrTrainerMName
	dw JrTrainerFName
	dw PokemaniacName
	dw SuperNerdName
	dw wTrainerName
	dw wTrainerName
	dw BurglarName
	dw EngineerName
	dw JugglerXName
	dw wTrainerName
	dw SwimmerName
	dw wTrainerName
	dw wTrainerName
	dw BeautyName
	dw wTrainerName
	dw RockerName
	dw JugglerName
	dw wTrainerName
	dw wTrainerName
	dw BlackbeltName
	dw wTrainerName
	dw ProfOakName
	dw ChiefName
	dw ScientistName
	dw wTrainerName
	dw RocketName
	dw CooltrainerMName
	dw CooltrainerFName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName

YoungsterName:
	db $04,$DD,$04,$D9,$08,$26,$7F,$01,$EF,$04,$46,$50,$50; RAW DATA : 	db "반바지 꼬마@"
BugCatcherName:
	db $01,$4F,$08,$E6,$08,$A4,$08,$2D,$7F,$06,$02,$02,$82,$50,$50; RAW DATA : 	db "곤충채집 소년@"
LassName:
	db $08,$3A,$07,$8A,$09,$01,$04,$46,$50,$50; RAW DATA : 	db "짧은치마@"
JrTrainerMName:
	db $09,$17,$0A,$61,$05,$18,$07,$9C,$50,$50; RAW DATA : 	db "캠프보이@"
JrTrainerFName:
	db $0A,$67,$09,$79,$02,$D0,$7F,$01,$29,$50,$50; RAW DATA : 	db "피크닉 걸@"
PokemaniacName:
	db $0A,$27,$09,$2F,$04,$93,$7F,$04,$65,$02,$CF,$06,$C6,$50,$50; RAW DATA : 	db "포켓몬 매니아@"
SuperNerdName:
	db $07,$9C,$01,$6A,$01,$48,$07,$97,$7F,$02,$42,$07,$AA,$50,$50; RAW DATA : 	db "이과계의 남자@"
BurglarName:
	db $05,$32,$02,$3D,$08,$2D,$7F,$07,$CC,$04,$AE,$09,$A0,$07,$9C,$04,$FC,$50,$50; RAW DATA : 	db "불난집 전문털이범@"
EngineerName:
	db $07,$03,$08,$26,$02,$CF,$06,$EE,$50,$50; RAW DATA : 	db "엔지니어@"
JugglerXName:
	db $08,$2D,$06,$63,$07,$CA,$01,$AB,$03,$DF,$50,$50; RAW DATA : 	db "집시저글러@"
SwimmerName:
	db $06,$26,$07,$15,$0A,$02,$09,$EC,$7F,$06,$02,$02,$82,$50,$50; RAW DATA : 	db "수영팬티 소년@"
BeautyName:
	db $06,$C6,$01,$01,$06,$BE,$50,$50; RAW DATA : 	db "아가씨@"
RockerName:
	db $0A,$28,$08,$06,$07,$E7,$50,$50; RAW DATA : 	db "폭주족@"
JugglerName:
	db $08,$2D,$06,$63,$07,$CA,$01,$AB,$03,$DF,$50,$50; RAW DATA : 	db "집시저글러@"
BlackbeltName:
	db $09,$92,$01,$97,$07,$35,$50,$50; RAW DATA : 	db "태권왕@"
ProfOakName:
	db $07,$20,$04,$DA,$05,$B7,$50,$50; RAW DATA : 	db "오박사@"
ChiefName:
	db $06,$3C,$0A,$61,$50,$50; RAW DATA : 	db "쉬프@"
ScientistName:
	db $01,$6A,$0A,$70,$07,$AA,$50,$50; RAW DATA : db "과학자@"
RocketName:
	db $03,$FE,$09,$2F,$02,$DC,$50,$50; RAW DATA : 	db "로켓단@"
CooltrainerMName:
	db $07,$04,$04,$3E,$09,$DE,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$50,$50; RAW DATA : 	db "엘리트트레이너@"
CooltrainerFName:
	db $07,$04,$04,$3E,$09,$DE,$09,$DE,$03,$E9,$07,$9C,$02,$6A,$50,$50; RAW DATA : 	db "엘리트트레이너@"
