BillsHouseObject: ; 0x1e8df (size=38)
	db $d ; border block

	db $2 ; warps
	db $7, $2, $0, $ff
	db $7, $3, $0, $ff

	db $0 ; signs

	db $3 ; objects
	object SPRITE_SLOWBRO, $6, $5, FACE, STAY, $1 ; person
	object SPRITE_BLACK_HAIR_BOY_2, $4, $4, FACE, STAY, $2 ; person
	object SPRITE_BLACK_HAIR_BOY_2, $6, $5, FACE, STAY, $3 ; person

	; warp-to
	EVENT_DISP BILLS_HOUSE_WIDTH, $7, $2
	EVENT_DISP BILLS_HOUSE_WIDTH, $7, $3
