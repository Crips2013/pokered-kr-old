HallofFameRoomScript: ; 5a49e (16:649e)
	call EnableAutoTextBoxDrawing
	ld hl, HallofFameRoomScriptPointers
	ld a, [W_HALLOFFAMEROOMCURSCRIPT]
	jp CallFunctionInTable

HallofFameRoomScript_5a4aa: ; 5a4aa (16:64aa)
	xor a
	ld [wJoyIgnore], a
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	ret

HallofFameRoomScriptPointers: ; 5a4b2 (16:64b2)
	dw HallofFameRoomScript0
	dw HallofFameRoomScript1
	dw HallofFameRoomScript2
	dw HallofFameRoomScript3

HallofFameRoomScript3: ; 5a4ba (16:64ba)
	ret

HallofFameRoomScript2: ; 5a4bb (16:64bb)
	call Delay3
	ld a, [wLetterPrintingDelayFlags]
	push af
	xor a
	ld [wJoyIgnore], a
	predef HallOfFamePC
	pop af
	ld [wLetterPrintingDelayFlags], a
	ld hl, W_FLAGS_D733
	res 1, [hl]
	inc hl
	set 0, [hl]
	xor a
	ld hl, W_LORELEICURSCRIPT
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [W_LANCECURSCRIPT], a
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	; Elite 4 events
	ResetEventRange EVENT_ELITE4_EVENTS_START, EVENT_907, 1
	xor a
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	ld a, PALLET_TOWN
	ld [wLastBlackoutMap], a
	callba SaveSAVtoSRAM
	ld b, 5
.asm_5a4ff
	ld c, 600 / 5
	call DelayFrames
	dec b
	jr nz, .asm_5a4ff
	call WaitForTextScrollButtonPress
	jp Init

HallofFameRoomScript0: ; 5a50d (16:650d)
	ld a, $ff
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, RLEMovement5a528
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $1
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	ret

RLEMovement5a528: ; 5a528 (16:6528)
	db D_UP,$5
	db $ff

HallofFameRoomScript1: ; 5a52b (16:652b)
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, $1
	ld [H_SPRITEINDEX], a
	call SetSpriteMovementBytesToFF
	ld a, SPRITE_FACING_LEFT
	ld [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3
	xor a
	ld [wJoyIgnore], a
	inc a ; PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, $1
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, $ff
	ld [wJoyIgnore], a
	ld a, HS_UNKNOWN_DUNGEON_GUY
	ld [wcc4d], a
	predef HideObject
	ld a, $2
	ld [W_HALLOFFAMEROOMCURSCRIPT], a
	ret

HallofFameRoomTextPointers: ; 5a56a (16:656a)
	dw HallofFameRoomText1

HallofFameRoomText1: ; 5a56c (16:656c)
	TX_FAR _HallofFameRoomText1
	db "@"
