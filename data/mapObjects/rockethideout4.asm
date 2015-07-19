RocketHideout4Object: ; 0x455f1 (size=95)
	db $2e ; border block

	db $3 ; warps
	db $a, $13, $1, ROCKET_HIDEOUT_3
	db $f, $18, $0, ROCKET_HIDEOUT_ELEVATOR
	db $f, $19, $1, ROCKET_HIDEOUT_ELEVATOR

	db $0 ; signs

	db $9 ; objects
	object SPRITE_GIOVANNI, $19, $3, FACE, DOWN, $1, GIOVANNI + $C8, $1
	object SPRITE_ROCKET, $17, $c, FACE, DOWN, $2, ROCKET + $C8, $10
	object SPRITE_ROCKET, $1a, $c, FACE, DOWN, $3, ROCKET + $C8, $11
	object SPRITE_ROCKET, $b, $2, FACE, DOWN, $4, ROCKET + $C8, $12
	object SPRITE_BALL, $a, $c, FACE, STAY, $5, HP_UP
	object SPRITE_BALL, $9, $4, FACE, STAY, $6, TM_02
	object SPRITE_BALL, $c, $14, FACE, STAY, $7, IRON
	object SPRITE_BALL, $19, $2, FACE, STAY, $8, SILPH_SCOPE
	object SPRITE_BALL, $a, $2, FACE, STAY, $9, LIFT_KEY

	; warp-to
	EVENT_DISP ROCKET_HIDEOUT_4_WIDTH, $a, $13 ; ROCKET_HIDEOUT_3
	EVENT_DISP ROCKET_HIDEOUT_4_WIDTH, $f, $18 ; ROCKET_HIDEOUT_ELEVATOR
	EVENT_DISP ROCKET_HIDEOUT_4_WIDTH, $f, $19 ; ROCKET_HIDEOUT_ELEVATOR
