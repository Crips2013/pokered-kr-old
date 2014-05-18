NameRaterScript: ; 1da12 (7:5a12)
	jp EnableAutoTextBoxDrawing

NameRaterScript_1da15: ; 1da15 (7:5a15)
	call PrintText
	call YesNoChoice
	ld a, [$cc26]
	and a
	ret

NameRaterScript_1da20: ; 1da20 (7:5a20)
	ld hl, W_PARTYMON1OT
	ld bc, $000b
	ld a, [wWhichPokemon]
	call AddNTimes
	ld de, W_PLAYERNAME
	ld c, $b
	call .asm_1da47
	jr c, .asm_1da52 ; 0x1da34 $1c
	ld hl, $d177
	ld bc, $002c
	ld a, [wWhichPokemon]
	call AddNTimes
	ld de, $d359
	ld c, $2
.asm_1da47
	ld a, [de]
	cp [hl]
	jr nz, .asm_1da52 ; 0x1da49 $7
	inc hl
	inc de
	dec c
	jr nz, .asm_1da47 ; 0x1da4e $f7
	and a
	ret
.asm_1da52
	scf
	ret

NameRaterTextPointers: ; 1da54 (7:5a54)
	dw NameRaterText1

NameRaterText1: ; 1da56 (7:5a56)
	db $8
	call SaveScreenTilesToBuffer2
	ld hl, NameRaterText_1dab3
	call NameRaterScript_1da15
	jr nz, .asm_1daae ; 0x1da60 $4c
	ld hl, NameRaterText_1dab8
	call PrintText
	xor a
	ld [$d07d], a
	ld [$cfcb], a
	ld [$cc35], a
	call DisplayPartyMenu
	push af
	call GBPalWhiteOutWithDelay3
	call Func_3dbe
	call LoadGBPal
	pop af
	jr c, .asm_1daae ; 0x1da80 $2c
	call GetPartyMonName2
	call NameRaterScript_1da20
	ld hl, NameRaterText_1dad1
	jr c, .asm_1daa8 ; 0x1da8b $1b
	ld hl, NameRaterText_1dabd
	call NameRaterScript_1da15
	jr nz, .asm_1daae ; 0x1da93 $19
	ld hl, NameRaterText_1dac2
	call PrintText
	ld b, BANK(Func_655c)
	ld hl, Func_655c
	call Bankswitch
	jr c, .asm_1daae ; 0x1daa3 $9
	ld hl, NameRaterText_1dac7
.asm_1daa8
	call PrintText
	jp TextScriptEnd
.asm_1daae
	ld hl, NameRaterText_1dacc
	jr .asm_1daa8 ; 0x1dab1 $f5

NameRaterText_1dab3: ; 1dab3 (7:5ab3)
	TX_FAR _NameRaterText_1dab3
	db "@"

NameRaterText_1dab8: ; 1dab8 (7:5ab8)
	TX_FAR _NameRaterText_1dab8
	db "@"

NameRaterText_1dabd: ; 1dabd (7:5abd)
	TX_FAR _NameRaterText_1dabd
	db "@"

NameRaterText_1dac2: ; 1dac2 (7:5ac2)
	TX_FAR _NameRaterText_1dac2
	db "@"

NameRaterText_1dac7: ; 1dac7 (7:5ac7)
	TX_FAR _NameRaterText_1dac7
	db "@"

NameRaterText_1dacc: ; 1dacc (7:5acc)
	TX_FAR _NameRaterText_1dacc
	db "@"

NameRaterText_1dad1: ; 1dad1 (7:5ad1)
	TX_FAR _NameRaterText_1dad1
	db "@"
