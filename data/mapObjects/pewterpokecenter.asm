PewterPokecenterObject: ; 0x5c60d (size=44)
	db $0 ; border block

	db $2 ; warps
	db $7, $3, $6, $ff
	db $7, $4, $6, $ff

	db $0 ; signs

	db $4 ; objects
	object SPRITE_NURSE, $3, $1, FACE, DOWN, $1 ; person
	object SPRITE_GENTLEMAN, $b, $7, FACE, RIGHT, $2 ; person
	object SPRITE_CLEFAIRY, $1, $3, FACE, DOWN, $3 ; person
	object SPRITE_CABLE_CLUB_WOMAN, $b, $2, FACE, DOWN, $4 ; person

	; warp-to
	EVENT_DISP PEWTER_POKECENTER_WIDTH, $7, $3
	EVENT_DISP PEWTER_POKECENTER_WIDTH, $7, $4
