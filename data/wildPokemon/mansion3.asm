MansionMons3:
	db $0A
	IF _RED
		db 31,KOFFING
		db 33,GROWLITHE
		db 35,KOFFING
		db 32,PONYTA
		db 34,PONYTA
		db 40,WEEZING
		db 34,GRIMER
		db 38,WEEZING
		db 36,PONYTA
		db 42,MUK
	ENDC

	IF _GREEN || !_JAPAN && _BLUE
		db 31,GRIMER
		db 33,VULPIX
		db 35,GRIMER
		db 32,PONYTA
		db 34,MAGMAR
		db 40,MUK
		db 34,KOFFING
		db 38,MUK
		db 36,PONYTA
		db 42,WEEZING
	ENDC

	IF _JAPAN && _BLUE
		db 31,GRIMER
		db 33,GROWLITHE
		db 35,GRIMER
		db 32,PONYTA
		db 34,PONYTA
		db 40,MUK
		db 34,KOFFING
		db 38,MUK
		db 36,PONYTA
		db 42,WEEZING
	ENDC

	IF _YELLOW
		db 40,RATTATA
		db 40,RATICATE
		db 32,GRIMER
		db 35,GRIMER
		db 43,RATTATA
		db 43,RATICATE
		db 38,GRIMER
		db 38,GRIMER
		db 38,MUK
		db 41,MUK
	ENDC

	db $00

