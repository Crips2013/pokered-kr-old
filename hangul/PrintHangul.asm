vHangulCounter EQU $8DB0
vHangulDest EQU $8DB2
vHangulSrc EQU $8DB4
vUploadedTile EQU $8DC0
PrintHangul:
	
	;hl(TileMap) bc(Script Bytes), return a : FontBank
	push hl
	push bc
	ld bc,-20
	add hl,bc
	pop bc
	call FindUploadedTile
	cp a,$FF
	jr nz,.AlreadyExist
	jr .NotFound
.AlreadyExist
	sla a
	add a,$80
	ld [hl],a
	inc a
	pop hl
	ld [hli],a
	ret
.NotFound ;based on http://cafe.naver.com/hansicgu/66
		push hl
		ld hl,vHangulCounter
		call ReadVRAM
		pop hl
	sla a
		push hl
		ld hl,vUploadedTile

		push af
		
		add a,l
		ld l,a
		
		ld a,b
		call WriteVRAM
		inc hl
		ld a,c
		call WriteVRAM
		pop af
		pop hl
	add a,$80
	ld [hl],a
	pop hl
	inc a
	ld [hli],a
	dec a
	push bc
	ld b,$08
	ld c,a
	ld a,$04
.loop
	sla c
	rl b
	dec a
	jr nz,.loop

		push hl
		ld hl,vHangulDest
		ld a,b
		call WriteVRAM
		inc hl
		ld a,c
		call WriteVRAM
		pop hl
	
	pop bc
	
		push hl
		ld hl,vHangulCounter
		call ReadVRAM
		pop hl
	
	inc a
	cp a,$20
	jr c,.Pass
	ld a,$00
.Pass
	push hl
	ld hl,vHangulCounter
	call WriteVRAM

	ld a,b
	and a,$0C
	rrca
	rrca
	add a,$30
	push af ; bank

	
	ld a,b
	and a,$03
	add a,$04
	ld b,a
	ld a,$04
.loop2
	sla c
	rl b
	dec a
	jr nz,.loop2
	
	ld a,c
	ld [H_VBCOPYDOUBLESRC],a
	ld a,b
	ld [H_VBCOPYDOUBLESRC+1],a
	ld a,$02
	ld [H_VBCOPYDOUBLESIZE],a
	
	
	
		push bc
		
			push hl
			ld hl,vHangulDest
			call ReadVRAM
			ld b,a
			inc hl
			call ReadVRAM
			ld c,a
			pop hl
				push bc
				pop hl ; hl : Dest
		
		pop de ;de : Src
	pop af ;bank
	
	ld b,a
	ld c,$2
	call CopyVideoDataDouble
	pop hl
	ret
	
FindUploadedTile: ;VRAM : 8DC0~8DFF, bc : Hangul 2bytes, return a : TileNumber
	push hl
	ld hl,vUploadedTile
.loop
	ld a,h
	cp a,$8E
	jr z,.NotFound
	
	call ReadVRAM
	cp a,b
	jr nz,.PrepareLoop
	inc hl
	call ReadVRAM
	cp a,c
	jr z,.Found
	dec hl
.PrepareLoop
	inc hl
	inc hl
	jr .loop
.Found
	push bc
	ld bc,$FFFF-vUploadedTile+1
	add hl,bc
	pop bc
	ld a,l
	sra a
	
	pop hl
	ret
.NotFound
	pop hl
	ld a,$FF
	ret
	
ReadVRAM: ;hl : VRAM Address, return : a
	;if LCD is off
	ld a,[rLCDC]
	bit rLCDC_ENABLE,a
	jr z,.ReadMemory
.LCDOn
	;if LCD is on
	ld a,[rSTAT]
	and a,%00000011
	cp a,$00
	jr z,.LCDOn 
.WaitForHBlank
	ld a,[rSTAT]
	and a,%00000011
	cp a,$00
	jr nz,.WaitForHBlank 
	;Wait For H-Blank Period
.ReadMemory
	ld a,[hl]
	ret
	
WriteVRAM: ;hl : VRAM Address, a : Value
	;if LCD is off
	push af
	ld a,[rLCDC]
	bit rLCDC_ENABLE,a
	jr z,.WriteMemory
.LCDOn
	;if LCD is on
	ld a,[rSTAT]
	and a,%00000011
	cp a,$00
	jr z,.LCDOn 
.WaitForHBlank
	ld a,[rSTAT]
	and a,%00000011
	cp a,$00
	jr nz,.WaitForHBlank 
	;Wait For H-Blank Period
.WriteMemory
	pop af
	ld [hl],a
	ret