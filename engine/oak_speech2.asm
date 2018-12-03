ChoosePlayerName:
	call OakSpeechSlidePicRight
	ld de, DefaultNamesPlayer
	call DisplayIntroNameTextBox
	ld a, [wCurrentMenuItem]
	and a
	jr z, .customName
	ld hl, DefaultNamesPlayerList
	call GetDefaultName
	ld de, wPlayerName
	call OakSpeechSlidePicLeft
	jr .done
.customName
	ld hl, wPlayerName
	xor a ; NAME_PLAYER_SCREEN
	ld [wNamingScreenType], a
	call DisplayNamingScreen
	ld a, [wcf4b]
	cp "@"
	jr z, .customName
	call ClearScreen
	call Delay3
	ld de, RedPicFront
	ld b, BANK(RedPicFront)
	call IntroDisplayPicCenteredOrUpperRight
.done
	ld hl, YourNameIsText
	jp PrintText

YourNameIsText:
	TX_FAR _YourNameIsText
	db "@"

ChooseRivalName:
	call OakSpeechSlidePicRight
	ld de, DefaultNamesRival
	call DisplayIntroNameTextBox
	ld a, [wCurrentMenuItem]
	and a
	jr z, .customName
	ld hl, DefaultNamesRivalList
	call GetDefaultName
	ld de, wRivalName
	call OakSpeechSlidePicLeft
	jr .done
.customName
	ld hl, wRivalName
	ld a, NAME_RIVAL_SCREEN
	ld [wNamingScreenType], a
	call DisplayNamingScreen
	ld a, [wcf4b]
	cp "@"
	jr z, .customName
	call ClearScreen
	call Delay3
	ld de, Rival1Pic
	ld b, $13
	call IntroDisplayPicCenteredOrUpperRight
.done
	ld hl, HisNameIsText
	jp PrintText

HisNameIsText:
	TX_FAR _HisNameIsText
	db "@"

OakSpeechSlidePicLeft:
	push de
	coord hl, 0, 0
	lb bc, 12, 11
	call ClearScreenArea ; clear the name list text box
	ld c, 10
	call DelayFrames
	pop de
	ld hl, wcd6d
	ld bc, NAME_LENGTH
	call CopyData
	call Delay3
	coord hl, 12, 4
	lb de, 6, 6 * SCREEN_WIDTH + 5
	ld a, $ff
	jr OakSpeechSlidePicCommon

OakSpeechSlidePicRight:
	coord hl, 5, 4
	lb de, 6, 6 * SCREEN_WIDTH + 5
	xor a

OakSpeechSlidePicCommon:
	push hl
	push de
	push bc
	ld [hSlideDirection], a
	ld a, d
	ld [hSlideAmount], a
	ld a, e
	ld [hSlidingRegionSize], a
	ld c, a
	ld a, [hSlideDirection]
	and a
	jr nz, .next
; If sliding right, point hl to the end of the pic's tiles.
	ld d, 0
	add hl, de
.next
	ld d, h
	ld e, l
.loop
	xor a
	ld [H_AUTOBGTRANSFERENABLED], a
	ld a, [hSlideDirection]
	and a
	jr nz, .slideLeft
; sliding right
	ld a, [hli]
	ld [hld], a
	dec hl
	jr .next2
.slideLeft
	ld a, [hld]
	ld [hli], a
	inc hl
.next2
	dec c
	jr nz, .loop
	ld a, [hSlideDirection]
	and a
	jr z, .next3
; If sliding left, we need to zero the last tile in the pic (there is no need
; to take a corresponding action when sliding right because hl initially points
; to a 0 tile in that case).
	xor a
	dec hl
	ld [hl], a
.next3
	ld a, 1
	ld [H_AUTOBGTRANSFERENABLED], a
	call Delay3
	ld a, [hSlidingRegionSize]
	ld c, a
	ld h, d
	ld l, e
	ld a, [hSlideDirection]
	and a
	jr nz, .slideLeft2
	inc hl
	jr .next4
.slideLeft2
	dec hl
.next4
	ld d, h
	ld e, l
	ld a, [hSlideAmount]
	dec a
	ld [hSlideAmount], a
	jr nz, .loop
	pop bc
	pop de
	pop hl
	ret

DisplayIntroNameTextBox:
	push de
	coord hl, 0, 1
	ld b, $a
	ld c, $9
	call TextBoxBorder
	coord hl, 3, 1
	ld de, .namestring
	call PlaceString
	pop de
	coord hl, 2, 3
	call PlaceString
	call UpdateSprites
	xor a
	ld [wCurrentMenuItem], a
	ld [wLastMenuItem], a
	inc a
	ld [wMenuWatchedKeys], a ; A_BUTTON
	
	ld [wTopMenuItemX], a
	inc a
	inc a
	ld [wTopMenuItemY], a
	inc a
	ld [wMaxMenuItem], a
	jp HandleMenuInput

.namestring
	db $07,$9C,$04,$37,$7F,$0A,$C4,$05,$18,$50

IF DEF(_RED)
DefaultNamesPlayer:
	db   $06,$4A,$06,$4A,$03,$FE,$7F,$01,$41,$07,$D4,$0A,$6F,$02,$D9,$50
	next $03, $E9, $03, $45,$50
	next $08,$26,$07,$4C,$50
	next $04,$8D,$05,$DE,$50
	next $07,$79,$03,$15,$09,$88,$07,$9C,$01,$25; RAW DATA : 	next "윈도타이거"
	db   $50

DefaultNamesRival:
	db   $06,$4A,$06,$4A,$03,$FE,$7F,$01,$41,$07,$D4,$0A,$6F,$02,$D9,$50
	next $01,$A7,$04,$40
	next $04,$D9,$03,$C7
	next $04,$AE,$0A,$AF
	next $02,$9A,$06,$BE; RAW DATA : 	next "뇌씨"
	db   $50
ENDC

IF DEF(_BLUE)
DefaultNamesPlayer:
	db   $06,$4A,$06,$4A,$03,$FE,$7F,$01,$41,$07,$D4,$0A,$6F,$02,$D9
	next  $05, $4D, $04, $17
	next $08,$26,$07,$4C
	next $04,$8D,$05,$DE
	next $07,$79,$03,$15,$09,$88,$07,$9C,$01,$25; RAW DATA : 	next "윈도타이거"
	db   $50

DefaultNamesRival:
	db   $06,$4A,$06,$4A,$03,$FE,$7F,$01,$41,$07,$D4,$0A,$6F,$02,$D9
	next $01,$A7,$04,$40
	next $04,$D9,$03,$C7
	next $04,$AE,$0A,$AF
	next $02,$9A,$06,$BE; RAW DATA : 	next "뇌씨"
	db   $50
ENDC

IF DEF(_GREEN)
DefaultNamesPlayer:
	db   $06,$4A,$06,$4A,$03,$FE,$7F,$01,$41,$07,$D4,$0A,$6F,$02,$D9
	next $01,$A7,$04,$40
	next $04,$D9,$03,$C7
	next $04,$AE,$0A,$AF
	next $02,$9A,$06,$BE; RAW DATA : 	next "뇌씨"
	db   $50

DefaultNamesRival:
	db   $06,$4A,$06,$4A,$03,$FE,$7F,$01,$41,$07,$D4,$0A,$6F,$02,$D9
	next $03, $E9, $03, $45
	next $08,$26,$07,$4C
	next $04,$8D,$05,$DE
	next $07,$79,$03,$15,$09,$88,$07,$9C,$01,$25; RAW DATA : 	next "윈도타이거"
	db   $50
ENDC
GetDefaultName:
; a = name index
; hl = name list
	ld b, a
	ld c, 0
.loop
	ld d, h
	ld e, l
.innerLoop
	ld a, [hli]
	cp "@"
	jr nz, .innerLoop
	ld a, b
	cp c
	jr z, .foundName
	inc c
	jr .loop
.foundName
	ld h, d
	ld l, e
	ld de, wcd6d
	ld bc, $14
	jp CopyData

IF DEF(_RED)
DefaultNamesPlayerList:
	db   $06,$4A,$06,$4A,$03,$FE,$7F,$01,$41,$07,$D4,$0A,$6F,$02,$D9
	db $50, $03, $E9, $03, $45
	db $50,  $08,$26,$07,$4C
	db $50,  $04,$8D,$05,$DE
	db $50,  $07,$79,$03,$15,$09,$88,$07,$9C,$01,$25,$50; RAW DATA : 	db $50,  "윈도타이거"
DefaultNamesRivalList:
	db   $06,$4A,$06,$4A,$03,$FE,$7F,$01,$41,$07,$D4,$0A,$6F,$02,$D9
	db $50,  $01,$A7,$04,$40
	db $50,  $04,$D9,$03,$C7
	db $50,  $04,$AE,$0A,$AF
	db $50,  $02,$9A,$06,$BE,$50; RAW DATA : 	db $50,  "뇌씨"
ENDC
IF DEF(_BLUE)
DefaultNamesPlayerList:
	db   $06,$4A,$06,$4A,$03,$FE,$7F,$01,$41,$07,$D4,$0A,$6F,$02,$D9
	db $50, $05, $4D, $04, $17
	db $50,  $08,$26,$07,$4C
	db $50,  $04,$8D,$05,$DE
	db $50,  $07,$79,$03,$15,$09,$88,$07,$9C,$01,$25,$50; RAW DATA : 	db $50,  "윈도타이거"
DefaultNamesRivalList:
	db   $06,$4A,$06,$4A,$03,$FE,$7F,$01,$41,$07,$D4,$0A,$6F,$02,$D9
	db $50,  $01,$A7,$04,$40
	db $50,  $04,$D9,$03,$C7
	db $50,  $04,$AE,$0A,$AF
	db $50,  $02,$9A,$06,$BE,$50; RAW DATA : 	db $50,  "뇌씨"
ENDC
IF DEF(_GREEN)
DefaultNamesPlayerList:
	db   $06,$4A,$06,$4A,$03,$FE,$7F,$01,$41,$07,$D4,$0A,$6F,$02,$D9
	db $50,  $01,$A7,$04,$40
	db $50,  $04,$D9,$03,$C7
	db $50,  $04,$AE,$0A,$AF
	db $50,  $02,$9A,$06,$BE,$50; RAW DATA : 	db $50,  "뇌씨"
DefaultNamesRivalList:
	db   $06,$4A,$06,$4A,$03,$FE,$7F,$01,$41,$07,$D4,$0A,$6F,$02,$D9
	db $50, $03, $E9, $03, $45
	db $50,  $08,$26,$07,$4C
	db $50,  $04,$8D,$05,$DE
	db $50,  $07,$79,$03,$15,$09,$88,$07,$9C,$01,$25,$50; RAW DATA : 	db $50,  "윈도타이거"
ENDC

TextTerminator_6b20:
	db "@"
