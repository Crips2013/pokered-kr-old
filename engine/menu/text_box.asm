; function to draw various text boxes
DisplayTextBoxID_:
	ld a, [wTextBoxID]
	cp TWO_OPTION_MENU
	jp z, DisplayTwoOptionMenu
	ld c, a
	ld hl, TextBoxFunctionTable
	ld de, 3
	call SearchTextBoxTable
	jr c, .functionTableMatch
	ld hl, TextBoxCoordTable
	ld de, 5
	call SearchTextBoxTable
	jr c, .coordTableMatch
	ld hl, TextBoxTextAndCoordTable
	ld de, 9
	call SearchTextBoxTable
	jr c, .textAndCoordTableMatch
.done
	ret
.functionTableMatch
	ld a, [hli]
	ld h, [hl]
	ld l, a ; hl = address of function
	ld de, .done
	push de
	jp hl ; jump to the function
.coordTableMatch
	call GetTextBoxIDCoords
	call GetAddressOfScreenCoords
	call TextBoxBorder
	ret
.textAndCoordTableMatch
	call GetTextBoxIDCoords
	push hl
	call GetAddressOfScreenCoords
	call TextBoxBorder
	pop hl
	call GetTextBoxIDText
	ld a, [wd730]
	push af
	ld a, [wd730]
	set 6, a ; no pauses between printing each letter
	ld [wd730], a
	call PlaceString
	pop af
	ld [wd730], a
	call UpdateSprites
	ret

; function to search a table terminated with $ff for a byte matching c in increments of de
; sets carry flag if a match is found and clears carry flag if not
SearchTextBoxTable:
	dec de
.loop
	ld a, [hli]
	cp $ff
	jr z, .notFound
	cp c
	jr z, .found
	add hl, de
	jr .loop
.found
	scf
.notFound
	ret

; function to load coordinates from the TextBoxCoordTable or the TextBoxTextAndCoordTable
; INPUT:
; hl = address of coordinates
; OUTPUT:
; b = height
; c = width
; d = row of upper left corner
; e = column of upper left corner
GetTextBoxIDCoords:
	ld a, [hli] ; column of upper left corner
	ld e, a
	ld a, [hli] ; row of upper left corner
	ld d, a
	ld a, [hli] ; column of lower right corner
	sub e
	dec a
	ld c, a     ; c = width
	ld a, [hli] ; row of lower right corner
	sub d
	dec a
	ld b, a     ; b = height
	ret

; function to load a text address and text coordinates from the TextBoxTextAndCoordTable
GetTextBoxIDText:
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a ; de = address of text
	push de ; save text address
	ld a, [hli]
	ld e, a ; column of upper left corner of text
	ld a, [hl]
	ld d, a ; row of upper left corner of text
	call GetAddressOfScreenCoords
	pop de ; restore text address
	ret

; function to point hl to the screen coordinates
; INPUT:
; d = row
; e = column
; OUTPUT:
; hl = address of upper left corner of text box
GetAddressOfScreenCoords:
	push bc
	coord hl, 0, 0
	ld bc, 20
.loop ; loop to add d rows to the base address
	ld a, d
	and a
	jr z, .addedRows
	add hl, bc
	dec d
	jr .loop
.addedRows
	pop bc
	add hl, de
	ret

; Format:
; 00: text box ID
; 01-02: function address
TextBoxFunctionTable:
	dbw MONEY_BOX, DisplayMoneyBox
	dbw BUY_SELL_QUIT_MENU, DoBuySellQuitMenu
	dbw FIELD_MOVE_MON_MENU, DisplayFieldMoveMonMenu
	db $ff ; terminator

; Format:
; 00: text box ID
; 01: column of upper left corner
; 02: row of upper left corner
; 03: column of lower right corner
; 04: row of lower right corner
TextBoxCoordTable:
	db MESSAGE_BOX,       0, 12, 19, 17
	db $03,               0,  0, 19, 14
	db $07,               0,  0, 11,  6
	db LIST_MENU_BOX,     4,  2, 19, 12
	db $10,               7,  0, 19, 17
	db MON_SPRITE_POPUP,  6,  4, 14, 13
	db $ff ; terminator

; Format:
; 00: text box ID
; 01: column of upper left corner
; 02: row of upper left corner
; 03: column of lower right corner
; 04: row of lower right corner
; 05-06: address of text
; 07: column of beginning of text
; 08: row of beginning of text
; table of window positions and corresponding text [key, start column, start row, end column, end row, text pointer [2 bytes], text column, text row]
TextBoxTextAndCoordTable:
	db JP_MOCHIMONO_MENU_TEMPLATE
	db 0,0,14,17   ; text box coordinates
	dw JapaneseMochimonoText
	db 3,0   ; text coordinates

	db USE_TOSS_MENU_TEMPLATE
	db 13,9,19,14 ; text box coordinates
	dw UseTossText
	db 15,11 ; text coordinates

	db JP_SAVE_MESSAGE_MENU_TEMPLATE
	db 0,0,7,5     ; text box coordinates
	dw JapaneseSaveMessageText
	db 2,2   ; text coordinates

	db JP_SPEED_OPTIONS_MENU_TEMPLATE
	db 0,6,5,10    ; text box coordinates
	dw JapaneseSpeedOptionsText
	db 2,7   ; text coordinates

	db BATTLE_MENU_TEMPLATE
	db 8,12,19,17  ; text box coordinates
	dw BattleMenuText
	db 10,14 ; text coordinates

	db SAFARI_BATTLE_MENU_TEMPLATE
	db 0,12,19,17  ; text box coordinates
	dw SafariZoneBattleMenuText
	db 2,14  ; text coordinates

	db SWITCH_STATS_CANCEL_MENU_TEMPLATE
	db 9,10,19,17 ; text box coordinates
	dw SwitchStatsCancelText
	db 11,12 ; text coordinates

	db BUY_SELL_QUIT_MENU_TEMPLATE
	db 0,0,10,7    ; text box coordinates
	dw BuySellQuitText
	db 2,2   ; text coordinates

	db MONEY_BOX_TEMPLATE
	db 11,0,19,2   ; text box coordinates
	dw MoneyText
	db 12,0  ; text coordinates

	db JP_AH_MENU_TEMPLATE
	db 7,6,11,10   ; text box coordinates
	dw JapaneseAhText
	db 8,8   ; text coordinates

	db JP_POKEDEX_MENU_TEMPLATE
	db 11,8,19,17  ; text box coordinates
	dw JapanesePokedexMenu
	db 12,10 ; text coordinates

; note that there is no terminator

BuySellQuitText:
	db   $05,$B7,$03,$DF,$7F,$07,$20,$02,$D9
	next $09,$F8,$03,$DF,$7F,$07,$20,$02,$D9
	next $06,$C6,$04,$AB,$01,$2D,$03,$15,$7F,$06,$C6,$02,$D5,$02,$CF,$02,$D9,$50,$50

UseTossText:
	db   $05,$B7,$07,$4B,$0A,$6F,$02,$D9; RAW DATA : 	db   "사용하다"
	next $04,$F6,$04,$3E,$02,$D9,$50; RAW DATA : 	next "버리다@"

JapaneseSaveMessageText:
	db   $01,$B2,$03,$FF; RAW DATA : 	db   "기록"
	next $04,$7E,$06,$63,$08,$26,$50; RAW DATA : 	next "메시지@"
;db   "きろく"
;	next "メッセージ@"

	
JapaneseSpeedOptionsText:
	db   $05,$71,$03,$C3; RAW DATA : 	db   "빨라"
	next $02,$C0,$03,$F1,$50; RAW DATA : 	next "느려@"
;하야이
;오소이
MoneyText:
	;db $03,$17,$50; RAW DATA : 	db "돈@"
	db $CB,$CC,$50
;MONEY
JapaneseMochimonoText:
	db $06,$02,$08,$26,$0A,$40,$50; RAW DATA : 	db "소지품@"
;もちもの
JapaneseMainMenuText:
	db   $07,$9C,$06,$EE,$05,$DD; RAW DATA : 	db   "이어서"
	next $04,$8D,$05,$EC,$05,$DD,$07,$01,$05,$DD,$50; RAW DATA : 	next "명세서에서@"
;つづきから
;さいしょから
BattleMenuText:
	db   $06,$6E,$07,$4C,$02,$D9,$7F,$7F,$01,$01,$04,$E6
	next $0A,$27,$09,$2F,$04,$93,$7F,$7F,$03,$15,$04,$61,$09,$01,$02,$D9,$50

SafariZoneBattleMenuText:
	db   $05,$B7,$09,$F4,$04,$3E,$05,$1C; RAW DATA : 	db   "사파리볼"
	db "×"
	db $7F,$7F,$7F,$7F,$7F,$7F,$7F,$04,$74,$07,$9C,$04,$36,$08,$06,$02,$D9; RAW DATA : 	db "      먹이를 주다"
	next $03,$19,$07,$8B,$7F,$02,$F8,$08,$26,$02,$D9,$7F,$7F,$7F,$7F,$7F,$03,$15,$04,$61,$09,$01,$02,$D9,$50; RAW DATA : 	next "돌을 던지다     도망치다@"
;	db   "BALL×       BAIT"
;	next "THROW ROCK  RUN@"

	
SwitchStatsCancelText:
	db   $06,$28,$05,$DD,$04,$D9,$02,$09,$01,$B2
	next $01,$0D,$0A,$71,$07,$D4,$03,$15,$04,$36,$7F,$05,$18,$02,$D9
	next $03,$19,$06,$C6,$01,$01,$02,$D9,$50

JapaneseAhText:
	db $06,$D1,$0B,$66,$50; RAW DATA : 	db "앗!@"
;アッ!@
JapanesePokedexMenu:
	db   $03,$05,$07,$9C,$09,$88,$04,$36,$05,$18,$02,$D9; RAW DATA : 	db   "데이타를보다"
	next $07,$4F,$07,$8D,$06,$02,$04,$3E; RAW DATA : 	next "울음소리"
	next $05,$30,$0A,$27; RAW DATA : 	next "분포"
	next $09,$15,$06,$4D,$50; RAW DATA : 	next "캔슬@"
;データをみる
;なきごえ
;ぶんぷをみる
;キャンセル

DisplayMoneyBox:
	ld hl, wd730
	set 6, [hl]
	ld a, MONEY_BOX_TEMPLATE
	ld [wTextBoxID], a
	call DisplayTextBoxID
	coord hl, 13, 1
	ld b, 1
	ld c, 6
	call ClearScreenArea
	coord hl, 12, 1
	ld de, wPlayerMoney
	ld c, $a3
	call PrintBCDNumber
	ld hl, wd730
	res 6, [hl]
	ret

CurrencyString:
	db "      ¥@"

DoBuySellQuitMenu:
	ld a, [wd730]
	set 6, a ; no printing delay
	ld [wd730], a
	xor a
	ld [wChosenMenuItem], a
	ld a, BUY_SELL_QUIT_MENU_TEMPLATE
	ld [wTextBoxID], a
	call DisplayTextBoxID
	ld a, A_BUTTON | B_BUTTON
	ld [wMenuWatchedKeys], a
	ld a, $2
	ld [wMaxMenuItem], a
	ld a, $2
	ld [wTopMenuItemY], a
	ld a, $1
	ld [wTopMenuItemX], a
	xor a
	ld [wCurrentMenuItem], a
	ld [wLastMenuItem], a
	ld [wMenuWatchMovingOutOfBounds], a
	ld a, [wd730]
	res 6, a ; turn on the printing delay
	ld [wd730], a
	call HandleMenuInput
	call PlaceUnfilledArrowMenuCursor
	bit 0, a ; was A pressed?
	jr nz, .pressedA
	bit 1, a ; was B pressed? (always true since only A/B are watched)
	jr z, .pressedA
	ld a, CANCELLED_MENU
	ld [wMenuExitMethod], a
	jr .quit
.pressedA
	ld a, CHOSE_MENU_ITEM
	ld [wMenuExitMethod], a
	ld a, [wCurrentMenuItem]
	ld [wChosenMenuItem], a
	ld b, a
	ld a, [wMaxMenuItem]
	cp b
	jr z, .quit
	ret
.quit
	ld a, CANCELLED_MENU
	ld [wMenuExitMethod], a
	ld a, [wCurrentMenuItem]
	ld [wChosenMenuItem], a
	scf
	ret

; displays a menu with two options to choose from
; b = Y of upper left corner of text region
; c = X of upper left corner of text region
; hl = address where the text box border should be drawn
DisplayTwoOptionMenu:
	push hl
	ld a, [wd730]
	set 6, a ; no printing delay
	ld [wd730], a

; pointless because both values are overwritten before they are read
	xor a
	ld [wChosenMenuItem], a
	ld [wMenuExitMethod], a

	ld a, A_BUTTON | B_BUTTON
	ld [wMenuWatchedKeys], a
	ld a, $1
	ld [wMaxMenuItem], a
	ld a, b
	dec a
	ld [wTopMenuItemY], a
	ld a, c
	dec c
	ld [wTopMenuItemX], a
	xor a
	ld [wLastMenuItem], a
	ld [wMenuWatchMovingOutOfBounds], a
	push hl
	ld hl, wTwoOptionMenuID
	bit 7, [hl] ; select second menu item by default?
	res 7, [hl]
	jr z, .storeCurrentMenuItem
	inc a
.storeCurrentMenuItem
	ld [wCurrentMenuItem], a
	pop hl
	push hl
	push hl
	call TwoOptionMenu_SaveScreenTiles
	ld a, [wTwoOptionMenuID]
	ld hl, TwoOptionMenuStrings
	ld e, a
	ld d, $0
	ld a, $5
.menuStringLoop
	add hl, de
	dec a
	jr nz, .menuStringLoop
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld e, l
	ld d, h
	pop hl
	push de
	ld a, [wTwoOptionMenuID]
	cp TRADE_CANCEL_MENU
	jr nz, .notTradeCancelMenu
	call CableClub_TextBoxBorder
	jr .afterTextBoxBorder
.notTradeCancelMenu
	call TextBoxBorder
.afterTextBoxBorder
	call UpdateSprites
	pop hl
	ld a, [hli]
	and a ; put blank line before first menu item?
	ld bc, 2*20 + 2
	jr z, .noBlankLine
	ld bc, 2 * 20 + 2
	ld a,[wTopMenuItemY]
	inc a
	ld [wTopMenuItemY],a
	jr nz, .withBlackLine
.noBlankLine
	ld a,[wTopMenuItemY]
	inc a
	inc a
	ld [wTopMenuItemY],a
.withBlackLine
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	pop hl
	add hl, bc
	call PlaceString
	ld hl, wd730
	res 6, [hl] ; turn on the printing delay
	ld a, [wTwoOptionMenuID]
	cp NO_YES_MENU
	jr nz, .notNoYesMenu
; No/Yes menu
; this menu type ignores the B button
; it only seems to be used when confirming the deletion of a save file
	xor a
	ld [wTwoOptionMenuID], a
	ld a, [wFlags_0xcd60]
	push af
	push hl
	ld hl, wFlags_0xcd60
	bit 5, [hl]
	set 5, [hl] ; don't play sound when A or B is pressed in menu
	pop hl
.noYesMenuInputLoop
	call HandleMenuInput
	bit 1, a ; A button pressed?
	jr nz, .noYesMenuInputLoop ; try again if A was not pressed
	pop af
	pop hl
	ld [wFlags_0xcd60], a
	ld a, SFX_PRESS_AB
	call PlaySound
	jr .pressedAButton
.notNoYesMenu
	xor a
	ld [wTwoOptionMenuID], a
	call HandleMenuInput
	pop hl
	bit 1, a ; A button pressed?
	jr nz, .choseSecondMenuItem ; automatically choose the second option if B is pressed
.pressedAButton
	ld a, [wCurrentMenuItem]
	ld [wChosenMenuItem], a
	and a
	jr nz, .choseSecondMenuItem
; chose first menu item
	ld a, CHOSE_FIRST_ITEM
	ld [wMenuExitMethod], a
	ld c, 15
	call DelayFrames
	call TwoOptionMenu_RestoreScreenTiles
	and a
	ret
.choseSecondMenuItem
	ld a, 1
	ld [wCurrentMenuItem], a
	ld [wChosenMenuItem], a
	ld a, CHOSE_SECOND_ITEM
	ld [wMenuExitMethod], a
	ld c, 15
	call DelayFrames
	call TwoOptionMenu_RestoreScreenTiles
	scf
	ret

; Some of the wider/taller two option menus will not have the screen areas
; they cover be fully saved/restored by the two functions below.
; The bottom and right edges of the menu may remain after the function returns.

TwoOptionMenu_SaveScreenTiles:
	ld de, wBuffer
	lb bc, 6, 8
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	push bc
	ld bc, SCREEN_WIDTH - 8
	add hl, bc
	pop bc
	ld c, $8
	dec b
	jr nz, .loop
	ret

TwoOptionMenu_RestoreScreenTiles:
	ld de, wBuffer
	lb bc, 6, 8
.loop
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .loop
	push bc
	ld bc, SCREEN_WIDTH - 8
	add hl, bc
	pop bc
	ld c, 8
	dec b
	jr nz, .loop
	call UpdateSprites
	ret

; Format:
; 00: byte width
; 01: byte height
; 02: byte put blank line before first menu item
; 03: word text pointer
TwoOptionMenuStrings:
	db 4,4,0
	dw .YesNoMenu
	db 6,4,0
	dw .NorthWestMenu
	db 6,4,0
	dw .SouthEastMenu
	db 6,4,0
	dw .YesNoMenu
	db 6,4,0
	dw .NorthEastMenu
	db 7,4,0
	dw .TradeCancelMenu
	db 7,4,1
	dw .HealCancelMenu
	db 4,4,0
	dw .NoYesMenu


.NoYesMenu
	db $06,$C6,$02,$CF,$07,$20,$4E,$07,$19,$50
.YesNoMenu
	db $07,$19,$4E,$06,$C6,$02,$CF,$07,$20,$50
.NorthWestMenu
	db $05,$2F,$08,$6A; RAW DATA : 	db "북쪽"
	db $4E,$05,$DD,$08,$6A,$50; RAW DATA : 	db $4E,"서쪽@"
	;db $8D,$8E,$91,$93,$87; RAW DATA : 	;db "NORTH",$4E,"WEST@"
.SouthEastMenu
	db $02,$42,$08,$6A; RAW DATA : 	db "남쪽"
	db $4E,$03,$1F,$08,$6A,$50; RAW DATA : 	db $4E,"동쪽@"
	;db $92,$8E,$94,$93,$87; RAW DATA : 	;db "SOUTH",$4E,"EAST@"
.NorthEastMenu
	db $05,$2F,$08,$6A; RAW DATA : 	db "북쪽"
	db $4E,$03,$1F,$08,$6A,$50; RAW DATA : 	db $4E,"동쪽@"
	;db $8D,$8E,$91,$93,$87; RAW DATA : 	;db "NORTH",$4E,"EAST@"
.TradeCancelMenu
	db $01,$83,$0A,$AF; RAW DATA : 	db "교환"
	db $4E,$01,$A7,$04,$48,$03,$2E,$02,$D9,$50; RAW DATA : 	db $4E,"그만두다@"
.HealCancelMenu
	;db "HEAL",$4E,"CANCEL@"
	db $06,$3C,$01,$34,$0A,$6F,$02,$D9; RAW DATA : db "쉬게하다"
	db $4E,$01,$A7,$04,$48,$03,$2E,$02,$D9,$50; RAW DATA : db $4E,"그만두다@"

DisplayFieldMoveMonMenu:
	xor a
	ld hl, wFieldMoves
	ld [hli], a ; wFieldMoves
	ld [hli], a ; wFieldMoves + 1
	ld [hli], a ; wFieldMoves + 2
	ld [hli], a ; wFieldMoves + 3
	ld [hli], a ; wNumFieldMoves
	ld [hl], 12 ; wFieldMovesLeftmostXCoord
	call GetMonFieldMoves
	ld a, [wNumFieldMoves]
	and a
	jr nz, .fieldMovesExist

; no field moves
	coord hl, 9, 10
	lb bc, 6, 9
	call TextBoxBorder
	call UpdateSprites
	ld a, 12
	ld [hFieldMoveMonMenuTopMenuItemX], a
	coord hl, 11, 12
	ld de, PokemonMenuEntries
	jp PlaceString

.fieldMovesExist
	push af

; Calculate the text box position and dimensions based on the leftmost X coord
; of the field move names before adjusting for the number of field moves.
	coord hl, 18, 9
	ld a, [wFieldMovesLeftmostXCoord]
	dec a
	ld e, a
	ld d, 0
	add hl, de
	ld b, 6
	ld a, 18
	sub e
	ld c, a
	pop af

; For each field move, move the top of the text box up 2 rows while the leaving
; the bottom of the text box at the bottom of the screen.
	ld de, -SCREEN_WIDTH * 2
.textBoxHeightLoop
	add hl, de
	inc b
	inc b
	dec a
	jr nz, .textBoxHeightLoop
	inc c
	inc c
; Make space for an extra blank row above the top field move.
	call TextBoxBorder
	call UpdateSprites

; Calculate the position of the first field move name to print.
	coord hl, 18, 11
	ld a, [wFieldMovesLeftmostXCoord]
	inc a
	ld e, a
	ld d, 0
	add hl, de
	ld de, -SCREEN_WIDTH * 2
	ld a, [wNumFieldMoves]
.calcFirstFieldMoveYLoop
	add hl, de
	dec a
	jr nz, .calcFirstFieldMoveYLoop

	xor a
	ld [wNumFieldMoves], a
	ld de, wFieldMoves
.printNamesLoop
	push hl
	ld hl, FieldMoveNames
	ld a, [de]
	and a
	jr z, .donePrintingNames
	inc de
	ld b, a ; index of name
.skipNamesLoop ; skip past names before the name we want
	dec b
	jr z, .reachedName
.skipNameLoop ; skip past current name
	ld a, [hli]
	cp "@"
	jr nz, .skipNameLoop
	jr .skipNamesLoop
.reachedName
	ld b, h
	ld c, l
	pop hl
	push de
	ld d, b
	ld e, c
	call PlaceString
	ld bc, SCREEN_WIDTH * 2
	add hl, bc
	pop de
	jr .printNamesLoop

.donePrintingNames
	pop hl
	ld a, [wFieldMovesLeftmostXCoord]
	ld [hFieldMoveMonMenuTopMenuItemX], a
	coord hl, 18, 11
	ld a, [wFieldMovesLeftmostXCoord]
	inc a
	ld e, a
	ld d, 0
	add hl, de
	ld de, PokemonMenuEntries
	jp PlaceString

FieldMoveNames:
	db $0A,$3E,$05,$03,$01,$B2,$50
	db $01,$68,$08,$0F,$02,$3F,$01,$B2,$50
	db $07,$09,$03,$DF,$05,$30,$03,$1F,$04,$E6,$0A,$6F,$05,$EC,$07,$44,$03,$1F,$04,$E6,$0A,$3E,$07,$BB,$50;RAW DATA : "여러분동방하세요동방풀잼@"
	db $09,$F4,$03,$15,$09,$88,$01,$B2,$50
	db $01,$7B,$03,$F2,$50
	db $0A,$63,$03,$D1,$06,$63,$50
	db $01,$88,$04,$7B,$09,$F4,$01,$B2,$50
	db $06,$28,$01,$03,$07,$9C,$03,$1F,$50
	db $06,$CB,$02,$4A,$01,$B2,$50

PokemonMenuEntries:
	db   $01,$0D,$0A,$71,$07,$D4,$03,$15,$04,$36,$7F,$05,$18,$02,$D9
	next $06,$28,$05,$DD,$04,$D9,$02,$09,$01,$B2
	next $03,$19,$06,$C6,$01,$01,$02,$D9,$50

GetMonFieldMoves:
	ld a, [wWhichPokemon]
	ld hl, wPartyMon1Moves
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes
	ld d, h
	ld e, l
	ld c, NUM_MOVES + 1
	ld hl, wFieldMoves
.loop
	push hl
.nextMove
	dec c
	jr z, .done
	ld a, [de] ; move ID
	and a
	jr z, .done
	ld b, a
	inc de
	ld hl, FieldMoveDisplayData
.fieldMoveLoop
	ld a, [hli]
	cp $ff
	jr z, .nextMove ; if the move is not a field move
	cp b
	jr z, .foundFieldMove
	inc hl
	inc hl
	jr .fieldMoveLoop
.foundFieldMove
	ld a, b
	ld [wLastFieldMoveID], a
	ld a, [hli] ; field move name index
	ld b, [hl] ; field move leftmost X coordinate
	pop hl
	ld [hli], a ; store name index in wFieldMoves
	ld a, [wNumFieldMoves]
	inc a
	ld [wNumFieldMoves], a
	ld a, [wFieldMovesLeftmostXCoord]
	cp b
	jr c, .skipUpdatingLeftmostXCoord
	ld a, b
	ld [wFieldMovesLeftmostXCoord], a
.skipUpdatingLeftmostXCoord
	ld a, [wLastFieldMoveID]
	ld b, a
	jr .loop
.done
	pop hl
	ret

; Format: [Move id], [name index], [leftmost tile]
; Move id = id of move
; Name index = index of name in FieldMoveNames
; Leftmost tile = -1 + tile column in which the first letter of the move's name should be displayed
;                 "SOFTBOILED" is $08 because it has 4 more letters than "SURF", for example, whose value is $0C
FieldMoveDisplayData:
	db CUT, $01, $0C
	db FLY, $02, $0C
	db $B4, $03, $0C ; unused field move
	db SURF, $04, $0C
	db STRENGTH, $05, $0A
	db FLASH, $06, $0C
	db DIG, $07, $0C
	db TELEPORT, $08, $0A
	db SOFTBOILED, $09, $08
	db $ff ; list terminator
