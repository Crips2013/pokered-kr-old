UndergroundPathEntranceRoute7CopyObject: ; 5d787 (17:5787)
	db $a ; border block

	db $3 ; warps
	db $7, $3, $5, $ff
	db $7, $4, $5, $ff
	db $4, $4, $0, UNDERGROUND_PATH_WE

	db $0 ; signs

	db $2 ; objects
	object SPRITE_GIRL, $3, $2, FACE, STAY, $1 ; person
	object SPRITE_FAT_BALD_GUY, $2, $4, FACE, STAY, $2 ; person

	; warp-to
	EVENT_DISP PATH_ENTRANCE_ROUTE_7_COPY_WIDTH, $7, $3
	EVENT_DISP PATH_ENTRANCE_ROUTE_7_COPY_WIDTH, $7, $4
	EVENT_DISP PATH_ENTRANCE_ROUTE_7_COPY_WIDTH, $4, $4 ; UNDERGROUND_PATH_WE
