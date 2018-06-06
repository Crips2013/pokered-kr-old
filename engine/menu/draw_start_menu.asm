; function that displays the start menu
DrawStartMenu:
	CheckEvent EVENT_GOT_POKEDEX
; menu with pokedex
	coord hl, 12, 0
	ld b, 14
	ld c, 6
	jr nz, .drawTextBoxBorder
; shorter menu if the player doesn't have the pokedex
	coord hl, 12, 0
	ld b, 12
	ld c, 6
.drawTextBoxBorder
	call TextBoxBorder
	ld a, D_DOWN | D_UP | START | B_BUTTON | A_BUTTON
	ld [wMenuWatchedKeys], a
	ld a, $02
	ld [wTopMenuItemY], a ; Y position of first menu choice
	ld a, 13
	ld [wTopMenuItemX], a ; X position of first menu choice
	ld a, [wBattleAndStartSavedMenuItem] ; remembered menu selection from last time
	ld [wCurrentMenuItem], a
	ld [wLastMenuItem], a
	xor a
	ld [wMenuWatchMovingOutOfBounds], a
	ld hl, wd730
	set 6, [hl] ; no pauses between printing each letter
	coord hl, 14, 2
	CheckEvent EVENT_GOT_POKEDEX
; case for not having pokedex
	ld a, $06
	jr z, .storeMenuItemCount
; case for having pokedex
	ld de, StartMenuPokedexText
	call PrintStartMenuItem
	ld a, $07
.storeMenuItemCount
	ld [wMaxMenuItem], a ; number of menu items
	ld de, StartMenuPokemonText
	call PrintStartMenuItem
	ld de, StartMenuItemText
	call PrintStartMenuItem
	ld de, wPlayerName ; player's name
	call PrintStartMenuItem
	ld a, [wd72e]
	bit 6, a ; is the player using the link feature?
; case for not using link feature
	ld de, StartMenuSaveText
	jr z, .printSaveOrResetText
; case for using link feature
	ld de, StartMenuResetText
.printSaveOrResetText
	call PrintStartMenuItem
	ld de, StartMenuOptionText
	call PrintStartMenuItem
	ld de, StartMenuExitText
	call PlaceString
	ld hl, wd730
	res 6, [hl] ; turn pauses between printing letters back on
	ret

StartMenuPokedexText:
	db $03,$15,$01,$08,$50

StartMenuPokemonText:
	db $0A,$27,$09,$2F,$04,$93,$50

StartMenuItemText:
	db $01,$01,$04,$E6,$50

StartMenuSaveText:
	db $03,$E9,$0A,$27,$09,$DE,$50

StartMenuResetText:
	db $04,$3E,$05,$F2,$50

StartMenuExitText:
	db $02,$DD,$02,$D9,$50

StartMenuOptionText:
	db $05,$E3,$07,$D4,$50

PrintStartMenuItem:
	push hl
	call PlaceString
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	ret
