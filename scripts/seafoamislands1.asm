SeafoamIslands1Script: ; 447e9 (11:47e9)
	call EnableAutoTextBoxDrawing
	SetEvent EVENT_500
	ld hl, wFlags_0xcd60
	bit 7, [hl]
	res 7, [hl]
	jr z, .asm_4483b
	ld hl, Seafoam1HolesCoords
	call CheckBoulderCoords
	ret nc
	EventFlagAddress hl, EVENT_50E
	ld a, [wCoordIndex]
	cp $1
	jr nz, .asm_44819
	SetEventReuseHL EVENT_50E
	ld a, HS_SEAFOAM_ISLANDS_1_BOULDER_1
	ld [wd079], a
	ld a, HS_SEAFOAM_ISLANDS_2_BOULDER_1
	ld [wd07a], a
	jr .asm_44825
.asm_44819
	SetEventAfterBranchReuseHL EVENT_50F, EVENT_50E
	ld a, HS_SEAFOAM_ISLANDS_1_BOULDER_2
	ld [wd079], a
	ld a, HS_SEAFOAM_ISLANDS_2_BOULDER_2
	ld [wd07a], a
.asm_44825
	ld a, [wd079]
	ld [wcc4d], a
	predef HideObject
	ld a, [wd07a]
	ld [wcc4d], a
	predef_jump ShowObject
.asm_4483b
	ld a, $9f
	ld [wDungeonWarpDestinationMap], a
	ld hl, Seafoam1HolesCoords
	jp IsPlayerOnDungeonWarp

Seafoam1HolesCoords: ; 44846 (11:4846)
	db $06,$11
	db $06,$18
	db $ff

SeafoamIslands1TextPointers: ; 4484b (11:484b)
	dw BoulderText
	dw BoulderText
