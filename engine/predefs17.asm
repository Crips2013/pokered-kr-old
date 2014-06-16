; this function temporarily makes the starters (and Ivysaur) seen
; so that the full Pokedex information gets displayed in Oak's lab
DisplayStarterMonDex: ; 5c0dc (17:40dc)
	ld a, %01001011 ; set starter flags
	ld [wPokedexOwned], a ; wPokedexOwned
	ld a, $3d
	call Predef
	xor a ; unset starter flags
	ld [wPokedexOwned], a ; wPokedexOwned
	ret
