LoreleiObject: ; 0x76280 (size=44)
	db $3 ; border block

	db $4 ; warps
	db $b, $4, $2, INDIGO_PLATEAU_LOBBY
	db $b, $5, $2, INDIGO_PLATEAU_LOBBY
	db $0, $4, $0, BRUNOS_ROOM
	db $0, $5, $1, BRUNOS_ROOM

	db $0 ; signs

	db $1 ; people
	db SPRITE_LORELEI, $2 + 4, $5 + 4, $ff, $d0, TRAINER | $1, LORELEI + $C8, $1

	; warp-to
	EVENT_DISP LORELEIS_ROOM_WIDTH, $b, $4 ; INDIGO_PLATEAU_LOBBY
	EVENT_DISP LORELEIS_ROOM_WIDTH, $b, $5 ; INDIGO_PLATEAU_LOBBY
	EVENT_DISP LORELEIS_ROOM_WIDTH, $0, $4 ; BRUNOS_ROOM
	EVENT_DISP LORELEIS_ROOM_WIDTH, $0, $5 ; BRUNOS_ROOM
