TypeNames:

	dw .Normal
	dw .Fighting
	dw .Flying
	dw .Poison
	dw .Ground
	dw .Rock
	dw .Bird
	dw .Bug
	dw .Ghost

	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal

	dw .Fire
	dw .Water
	dw .Grass
	dw .Electric
	dw .Psychic
	dw .Ice
	dw .Dragon

.Normal:   db $02,$8B,$04,$4B,$50
.Fighting: db $01,$3D,$09,$C5,$50
.Flying:   db $05,$61,$0A,$80,$50
.Poison:   db $03,$16,$50
.Fire:     db $0A,$AD,$07,$10,$50
.Water:    db $04,$B0,$50
.Grass:    db $0A,$3E,$50
.Electric: db $07,$CC,$01,$B2,$50
.Psychic:  db $07,$01,$06,$4A,$0A,$0B,$50
.Ice:      db $06,$F3,$07,$8D,$50
.Ground:   db $03,$75,$50
.Rock:     db $04,$D9,$07,$77,$50
.Bird:     db $05,$C5,$50
.Bug:      db $04,$FA,$03,$E9,$50
.Ghost:    db $01,$4D,$06,$4A,$09,$DE,$50
.Dragon:   db $03,$45,$03,$E9,$01,$4F,$50
