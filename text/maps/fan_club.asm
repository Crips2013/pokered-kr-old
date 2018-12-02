PikachuFanText::
IF DEF(_YELLOW)
	text $02,$4B,$7F,$05,$AF,$05,$AF,$07,$97,$7F,$05,$B7,$03,$CB,$06,$4A,$03,$E1,$7F,$01,$EF,$04,$3E,$07,$EB,$05,$21; RAW DATA : 	text "내 삐삐의 사랑스런 꼬리좀봐"
	line $07,$D4,$04,$4B,$7F,$01,$9D,$07,$11,$08,$26,$7F,$06,$CA,$06,$C6,$0B,$67; RAW DATA : 	line "정말 귀엽지 않아?"
ELSE
	; text "내 피카츄의 사랑스런 꼬리좀봐"
	text $02, $4B, " ", $0A, $67, $09, $0B, $08, $F2, $07, $97, " ", $05, $B7, $03, $CB, $06, $4A, $03, $E1, " ", $01, $EF, $04, $3E, $07, $EB, $05, $21
	; line "정말 귀엽지 않아?"
	line $07, $D4, $04, $4B, " ", $01, $9D, $07, $11, $08, $26, " ", $06, $CA, $06, $C6, $0B, $67


ENDC
	done

PikachuFanBetterText::
IF DEF(_YELLOW)
		text $0A,$EF,$0B,$66; RAW DATA : 	text "흥!"
	line $02,$4B,$7F,$05,$AF,$05,$AF,$01,$01,$7F,$03,$2E,$04,$E8,$02,$C2,$7F,$02,$F5,$7F,$01,$9D,$07,$11,$02,$D9,$01,$88,$0B,$66; RAW DATA : 	line "내 삐삐가 두배는 더 귀엽다구!"
	done
ELSE
	; text "흥!"
	text $0A, $EF, $0B, $66
	; line "내 피카츄가 두배는 더 귀엽다구!"
	line $02, $4B, " ", $0A, $67, $09, $0B, $08, $F2, $01, $01, " ", $03, $2E, $04, $E8, $02, $C2, " ", $02, $F5, " ", $01, $9D, $07, $11, $02, $D9, $01, $88, $0B, $66

ENDC


IF DEF(_YELLOW)
PikachuFanPrintText::
	text "Our CHAIRMAN's new"
	line "hobby is taking"
	cont "#MON photos."

	para "He gave me a nice"
	line "PRINT of my cute"
	cont "CLEFAIRY."
	done
ENDC

SeelFanText::
	text "I just love my"
	line "SEEL!"

	para "It squeals when I"
	line "hug it!"
	done

SeelFanBetterText::
	text "Oh dear!"

	para "My SEEL is far"
	line "more attractive!"
	done

IF DEF(_YELLOW)
SeelFanPrintText::
	text "I'm going to hook"
	line "up the cable to"
	cont "get a photo PRINT"
	cont "of my SEEL!"
	done
ENDC
FanClubPikachuText::
IF DEF(_YELLOW)
	text "CLEFAIRY: Pippii!"
ELSE

	text "PIKACHU: Chu!"
	line "Pikachu!"
ENDC
	done

FanClubSeelText::
	text "SEEL: Kyuoo!"
	done

FanClubMeetChairText::
	text "I chair the"
	line "#MON Fan Club!"

IF DEF(_YELLOW)
	para "I have more than"
	line "100 #MON. I"
	cont "love them all!"	
ELSE
	para "I have collected"
	line "over 100 #MON!"

ENDC

	para "I'm very fussy"
	line "when it comes to"
	cont "#MON!"

	para "So..."
IF DEF(_YELLOW)
	para "Did you come to"
	line "hear me brag"
ELSE
	para "Did you come"
	line "visit to hear"
ENDC
	cont "about my #MON?"
	done

FanClubChairStoryText::
	text "Good!"
	line "Then listen up!"

	para "My favorite"
	line "RAPIDASH..."

	para "It...cute..."
	line "lovely...smart..."
	cont "plus...amazing..."
	cont "you think so?..."
	cont "oh yes...it..."
	cont "stunning..."
	cont "kindly..."
	cont "love it!"

	para "Hug it...when..."
IF DEF(_YELLOW)
	line "sleeping...warm"	
ELSE
	cont "sleeping...warm"
ENDC

	cont "and cuddly..."
	cont "spectacular..."
	cont "ravishing..."
	cont "...Oops! Look at"
	cont "the time! I kept"
	cont "you too long!"

	para "Thanks for hearing"
	line "me out! I want"
	cont "you to have this!"
	prompt

ReceivedBikeVoucherText::
	text "<PLAYER> received"
	line "a @"
	TX_RAM wcf4b
	text "!@@"

ExplainBikeVoucherText::
	text ""
	para "Exchange that for"
	line "a BICYCLE!"

	para "Don't worry, my"
	line "FEAROW will FLY"
	cont "me anywhere!"

	para "So, I don't need a"
	line "BICYCLE!"

	para "I hope you like"
	line "cycling!"
	done

FanClubNoStoryText::
	text "Oh. Come back"
	line "when you want to"
	cont "hear my story!"
	done

FanClubChairFinalText::
	text "Hello, <PLAYER>!"

	para "Did you come see"
	line "me about my"
	cont "#MON again?"

	para "No? Too bad!"
	done

FanClubBagFullText::
	text "Make room for"
	line "this!"
	done
IF DEF(_YELLOW)
FanClubChairPrintText1::
	text "Hi there, <PLAYER>!"
	line "Have you seen my"
	cont "#MON photos?"

	para "I have them framed"
	line "up on that wall."

	para "Ah, I know!"

	para "Would you like me"
	line "to take a photo"
	cont "of your #MON?"
	done

FanClubChairPrintText2::
	text "No? That's really"
	line "disappointing."
	done

FanClubChairPrintText3::
	text "OK, I'm done."
	done

FanClubChairPrintText4::
	text "Maybe we won't"
	line "PRINT this now."
	done

_FanClubText6::
	text "Our CHAIRMAN is"
	line "very vocal about"
	cont "#MON."
	done
	
ELSE
_FanClubText6::
	text "Our Chairman is"
	line "very vocal about"
	cont "#MON."
	done

_FanClubText7::
	text "Let's all listen"
	line "politely to other"
	cont "trainers!"
	done

_FanClubText8::
	text "If someone brags,"
	line "brag right back!"
	done
ENDC
