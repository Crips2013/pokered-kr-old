RocketHideout4Object:
	db 46 ; border block

	db 3 ; warps
	warp 19, 10, 1, ROCKET_HIDEOUT_3
	warp 24, 15, 0, ROCKET_HIDEOUT_ELEVATOR
	warp 25, 15, 1, ROCKET_HIDEOUT_ELEVATOR

	db 0 ; signs

	db 9 ; objects
	object SPRITE_GIOVANNI, 25, 3, STAY, DOWN, 1, OPP_GIOVANNI, 1
	object SPRITE_ROCKET, 23, 12, STAY, DOWN, 2, OPP_ROCKET, 16
	object SPRITE_ROCKET, 26, 12, STAY, DOWN, 3, OPP_ROCKET, 17
	object SPRITE_ROCKET, 11, 2, STAY, DOWN, 4, OPP_ROCKET, 18
	object SPRITE_BALL, 10, 12, STAY, NONE, 5, HP_UP
	object SPRITE_BALL, 9, 4, STAY, NONE, 6, TM_02
	object SPRITE_BALL, 12, 20, STAY, NONE, 7, IRON
	object SPRITE_BALL, 25, 2, STAY, NONE, 8, SILPH_SCOPE
	object SPRITE_BALL, 10, 2, STAY, NONE, 9, LIFT_KEY

	; warp-to
	warp_to 19, 10, ROCKET_HIDEOUT_4_WIDTH ; ROCKET_HIDEOUT_3
	warp_to 24, 15, ROCKET_HIDEOUT_4_WIDTH ; ROCKET_HIDEOUT_ELEVATOR
	warp_to 25, 15, ROCKET_HIDEOUT_4_WIDTH ; ROCKET_HIDEOUT_ELEVATOR
