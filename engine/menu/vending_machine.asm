VendingMachineMenu:
	ld hl, VendingMachineText1
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	xor a
	ld [wCurrentMenuItem], a
	ld [wLastMenuItem], a
	ld a, A_BUTTON | B_BUTTON
	ld [wMenuWatchedKeys], a
	ld a, 3
	ld [wMaxMenuItem], a
	ld a, 5
	ld [wTopMenuItemY], a
	ld a, 1
	ld [wTopMenuItemX], a
	ld hl, wd730
	set 6, [hl]
	coord hl, 0, 3
	ld b, 8
	ld c, 12
	call TextBoxBorder
	call UpdateSprites
	coord hl, 2, 5
	ld de, DrinkText
	call PlaceString
	coord hl, 9, 5
	ld de, DrinkPriceText
	call PlaceString
	ld hl, wd730
	res 6, [hl]
	call HandleMenuInput
	bit 1, a ; pressed B?
	jr nz, .notThirsty
	ld a, [wCurrentMenuItem]
	cp 3 ; chose Cancel?
	jr z, .notThirsty
	xor a
	ld [hMoney], a
	ld [hMoney + 2], a
	ld a, $2
	ld [hMoney + 1], a
	call HasEnoughMoney
	jr nc, .enoughMoney
	ld hl, VendingMachineText4
	jp PrintText
.enoughMoney
	call LoadVendingMachineItem
	ld a, [hVendingMachineItem]
	ld b, a
	ld c, 1
	call GiveItem
	jr nc, .BagFull

	ld b, 60 ; number of times to play the "brrrrr" sound
.playDeliverySound
	ld c, 2
	call DelayFrames
	push bc
	ld a, SFX_PUSH_BOULDER
	call PlaySound
	pop bc
	dec b
	jr nz, .playDeliverySound

	ld hl, VendingMachineText5
	call PrintText
	ld hl, hVendingMachinePrice + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	jp DisplayTextBoxID
.BagFull
	ld hl, VendingMachineText6
	jp PrintText
.notThirsty
	ld hl, VendingMachineText7
	jp PrintText

VendingMachineText1:
	TX_FAR _VendingMachineText1
	db "@"

DrinkText:
	db   $04,$60,$07,$A6,$02,$C2,$7F,$04,$B0; RAW DATA : 	db   "맛있는 물"
	next $04,$CC,$02,$77,$03,$C6,$7F,$05,$B7,$07,$9C,$02,$D9; RAW DATA : 	next "미네랄 사이다"
	next $0A,$C4,$04,$33,$08,$F7,$7F,$04,$D0,$09,$79; RAW DATA : 	next "후르츠 밀크"
	next $01,$A7,$04,$48,$03,$2E,$02,$D9,$50; RAW DATA : 	next "그만두다@"

DrinkPriceText:
	db   "200¥"
	next "300¥"
	next "350¥",$4E,"@"

VendingMachineText4:
	TX_FAR _VendingMachineText4
	db "@"

VendingMachineText5:
	TX_FAR _VendingMachineText5
	db "@"

VendingMachineText6:
	TX_FAR _VendingMachineText6
	db "@"

VendingMachineText7:
	TX_FAR _VendingMachineText7
	db "@"

LoadVendingMachineItem:
	ld hl, VendingPrices
	ld a, [wCurrentMenuItem]
	add a
	add a
	ld d, 0
	ld e, a
	add hl, de
	ld a, [hli]
	ld [hVendingMachineItem], a
	ld a, [hli]
	ld [hVendingMachinePrice], a
	ld a, [hli]
	ld [hVendingMachinePrice + 1], a
	ld a, [hl]
	ld [hVendingMachinePrice + 2], a
	ret

VendingPrices:
	db FRESH_WATER
	money 200
	db SODA_POP
	money 300
	db LEMONADE
	money 350
