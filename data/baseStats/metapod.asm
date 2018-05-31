db DEX_METAPOD ; pokedex id
db 50 ; base hp
db 20 ; base attack
db 55 ; base defense
db 30 ; base speed
db 25 ; base special
db BUG ; species type 1
db BUG ; species type 2
db 120 ; catch rate
db 72 ; base exp yield
IF DEF(_BLUE)
INCBIN  "pic/bmon/metapod.pic",0,1 ; 55, sprite dimensions
ENDC
IF DEF(_RED)
INCBIN "pic/rgmon/metapod.pic",0,1 ; 55, sprite dimensions
ENDC
IF DEF(_GREEN)
INCBIN "pic/rgmon/metapod.pic",0,1 ; 55, sprite dimensions
ENDC
dw MetapodPicFront
dw MetapodPicBack
; attacks known at lvl 0
db HARDEN
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db 0 ; padding
