PokemonTower4Object: ; 0x6088b (size=65)
	db $1 ; border block

	db $2 ; warps
	db $9, $3, $0, POKEMONTOWER_5
	db $9, $12, $1, POKEMONTOWER_3

	db $0 ; signs

	db $6 ; objects
	object SPRITE_MEDIUM, $5, $a, FACE, LEFT, $1, CHANNELER + $C8, $9
	object SPRITE_MEDIUM, $f, $7, FACE, DOWN, $2, CHANNELER + $C8, $a
	object SPRITE_MEDIUM, $e, $c, FACE, RIGHT, $3, CHANNELER + $C8, $c
	object SPRITE_BALL, $c, $a, FACE, STAY, $4, ELIXER
	object SPRITE_BALL, $9, $a, FACE, STAY, $5, AWAKENING
	object SPRITE_BALL, $c, $10, FACE, STAY, $6, HP_UP

	; warp-to
	EVENT_DISP POKEMONTOWER_4_WIDTH, $9, $3 ; POKEMONTOWER_5
	EVENT_DISP POKEMONTOWER_4_WIDTH, $9, $12 ; POKEMONTOWER_3
