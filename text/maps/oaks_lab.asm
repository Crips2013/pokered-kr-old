_OaksLabGaryText1::
	text "<RIVAL>: Yo"
	line "<PLAYER>! Gramps"
	cont "isn't around!"
IF DEF(_YELLOW)
	para "I ran here 'cos"
	line "he said he had a"
	cont "#MON for me."
ENDC
	done

_OaksLabText40::
IF DEF(_YELLOW)
	text "<RIVAL>: Humph!"
	line "I'll get a better"
	cont "#MON than you!"	
ELSE
	text "<RIVAL>: Heh, I"
	line "don't need to be"
	cont "greedy like you!"

	para "Go ahead and"
	line "choose, <PLAYER>!"
ENDC
	done

_OaksLabText41::
IF DEF(_YELLOW)
	text "<RIVAL>: Heh, my"	
ELSE
	text "<RIVAL>: My"
ENDC
	line "#MON looks a"
	cont "lot stronger."
	done

_OaksLabText39::
IF DEF(_YELLOW)
	text "That's a #"
	line "BALL. There's a"
	cont "#MON inside!"
ELSE
	text "Those are #"
	line "BALLs. They"
	cont "contain #MON!"
ENDC
	done
IF DEF(_YELLOW)
_OaksLabPikachuText::
	text "OAK: Go ahead,"
	line "it's yours!"
	done

ELSE
_OaksLabCharmanderText::
	text "So! You want the"
	line "fire #MON,"
	cont "CHARMANDER?"
	done

_OaksLabSquirtleText::
	text "So! You want the"
	line "water #MON,"
	cont "SQUIRTLE?"
	done

_OaksLabBulbasaurText::
	text "So! You want the"
	line "plant #MON,"
	cont "BULBASAUR?"
	done

_OaksLabMonEnergeticText::
	text "This #MON is"
	line "really energetic!"
	prompt

_OaksLabReceivedMonText::
	text "<PLAYER> received"
	line "a @"
	TX_RAM wcd6d
	text "!@@"

_OaksLabLastMonText::
	text "That's PROF.OAK's"
	line "last #MON!"
	done

_OaksLabText_1d2f0::
	text "OAK: Now, <PLAYER>,"
	line "which #MON do"
	cont "you want?"
	done
ENDC
_OaksLabText_1d2f5::
	text "OAK: If a wild"
	line "#MON appears,"
	cont "your #MON can"
	cont "fight against it!"
IF DEF(_YELLOW)
	para "Afterward, go on"
	line "to the next town."
ENDC
	done

_OaksLabText_1d2fa::
IF DEF(_YELLOW)
	text "OAK: You should"
	line "talk to it and"
	cont "see how it feels."
ELSE
	text "OAK: <PLAYER>,"
	line "raise your young"
	cont "#MON by making"
	cont "it fight!"

ENDC
	done

_OaksLabDeliverParcelText1::
	text "OAK: Oh, <PLAYER>!"

	para "How is my old"
	line "#MON?"

	para "Well, it seems to"
	line "like you a lot."

	para "You must be"
	line "talented as a"
	cont "#MON trainer!"

	para "What? You have"
	line "something for me?"

	para "<PLAYER> delivered"
	line "OAK's PARCEL.@@"

_OaksLabDeliverParcelText2::
	text ""
	para "Ah! This is the"
	line "custom # BALL"
	cont "I ordered!"
IF DEF(_YELLOW)
	cont "Thanks, <PLAYER>!"

	para "By the way, I must"
	line "ask you to do"
	cont "something for me."	
ELSE
	cont "Thank you!"
ENDC
	done

_OaksLabAroundWorldText::
	text "#MON around the"
	line "world wait for"
	cont "you, <PLAYER>!"
	done

_OaksLabGivePokeballsText1::
	text "OAK: You can't get"
	line "detailed data on"
	cont "#MON by just"
	cont "seeing them."

	para "You must catch"
	line "them! Use these"
	cont "to capture wild"
	cont "#MON."

	para "<PLAYER> got 5"
	line "# BALLs!@@"

_OaksLabGivePokeballsText2::
	text ""
	para "When a wild"
	line "#MON appears,"
	cont "it's fair game."
IF DEF(_YELLOW)
	para "Just like I showed"
	line "you, throw a #"
	cont "BALL at it and try"
	cont "to catch it!"
ELSE
	para "Just throw a #"
	line "BALL at it and try"
	line "to catch it!"

ENDC


	para "This won't always"
	line "work, though."

	para "A healthy #MON"
	line "could escape. You"
	cont "have to be lucky!"
	done

_OaksLabPleaseVisitText::
	text "OAK: Come see me"
	line "sometimes."

	para "I want to know how"
	line "your #DEX is"
	cont "coming along."
	done

_OaksLabText_1d31d::
	text "OAK: Good to see "
	line "you! How is your "
	cont "#DEX coming? "
	cont "Here, let me take"
	cont "a look!"
	prompt

_OaksLabText_1d32c::
	text "It's encyclopedia-"
	line "like, but the"
	cont "pages are blank!"
	done

_OaksLabText8::
	text "?"
	done

_OaksLabText_1d340::
	text "PROF.OAK is the"
	line "authority on"
	cont "#MON!"

	para "Many #MON"
	line "trainers hold him"
	cont "in high regard!"
	done

_OaksLabRivalWaitingText::
	text "<RIVAL>: Gramps!"
	line "I'm fed up with"
	cont "waiting!"
	done

_OaksLabChooseMonText::
IF DEF(_YELLOW)
	text "OAK: Hmm? <RIVAL>?"
	line "Why are you here"
	cont "already?"

	para "I said for you to"
	line "come by later..."

	para "Ah, whatever!"
	line "Just wait there."

	para "Look, <PLAYER>! Do"
	line "you see that ball"
	cont "on the table?"

	para "It's called a #"
	line "BALL. It holds a"
	cont "#MON inside."

	para "You may have it!"
	line "Go on, take it!"
ELSE
	text "OAK: <RIVAL>?"
	line "Let me think..."

	para "Oh, that's right,"
	line "I told you to"
	cont "come! Just wait!"

	para "Here, <PLAYER>!"

	para "There are 3"
	line "#MON here!"

	para "Haha!"

	para "They are inside"
	line "the # BALLs."

	para "When I was young,"
	line "I was a serious"
	cont "#MON trainer!"

	para "In my old age, I"
	line "have only 3 left,"
	cont "but you can have"
	cont "one! Choose!"
	done
ENDC

_OaksLabRivalInterjectionText::
	text "<RIVAL>: Hey!"
	line "Gramps! What"
	cont "about me?"
	done

_OaksLabBePatientText::
IF DEF(_YELLOW)
	text "OAK: Be patient,"
	line "<RIVAL>, I'll give"
	cont "you one later."
ELSE
	text "OAK: Be patient!"
	line "<RIVAL>, you can"
	cont "have one too!"
ENDC
	done
IF DEF(_YELLOW)
_OaksLabRivalTakesText1::
	text "<RIVAL>: No way!"
	line "<PLAYER>, I want"
	cont "this #MON!"
	prompt

_OaksLabRivalTakesText2::
	text "<RIVAL> snatched"
	line "the #MON!@@"

_OaksLabRivalTakesText3::
	text "OAK: <RIVAL>! What"
	line "are you doing?"
	prompt

_OaksLabRivalTakesText4::
	text "<RIVAL>: Gramps, I"
	line "want this one!"
	prompt

_OaksLabRivalTakesText5::
	text "OAK: But, I... Oh,"
	line "all right then."
	cont "That #MON is"
	cont "yours."

	para "I was going to"
	line "give you one"
	cont "anyway..."

	para "<PLAYER>, come over"
	line "here."
	done

_OaksLabOakGivesText::
	text "OAK: <PLAYER>, this"
	line "is the #MON I"
	cont "caught earlier."

	para "You can have it."
	line "I caught it in"
	cont "the wild and it's"
	cont "not tame yet."
	prompt

_OaksLabReceivedText::
	text "<PLAYER> received"
	line "a @"
	TX_RAM wcd6d
	text "!@@"
	
ELSE



_OaksLabRivalPickingMonText::
	text "<RIVAL>: I'll take"
	line "this one, then!"
	done

_OaksLabRivalReceivedMonText::
	text "<RIVAL> received"
	line "a @"
	TX_RAM wcd6d
	text "!@@"
ENDC
_OaksLabLeavingText::
	text "OAK: Hey! Don't go"
	line "away yet!"
	done

_OaksLabRivalChallengeText::
	text "<RIVAL>: Wait"
	line "<PLAYER>!"
	cont "Let's check out"
	cont "our #MON!"

	para "Come on, I'll take"
	line "you on!"
	done

_OaksLabText_1d3be::
	text "WHAT?"
	line "Unbelievable!"
	cont "I picked the"
	cont "wrong #MON!"
	prompt

_OaksLabText_1d3c3::
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	prompt

_OaksLabRivalToughenUpText::
	text "<RIVAL>: Okay!"
	line "I'll make my"
	cont "#MON fight to"
	cont "toughen it up!"

	para "<PLAYER>! Gramps!"
	line "Smell you later!"
	done

IF DEF(_YELLOW)
_OaksLabPikachuDislikesPokeballsText1::
	text "OAK: What?"
	done

_OaksLabPikachuDislikesPokeballsText2::
	text "OAK: Would you"
	line "look at that!"

	para "It's odd, but it"
	line "appears that your"
	cont "PIKACHU dislikes"
	cont "# BALLs."

	para "You should just"
	line "keep it with you."

	para "That should make"
	line "it happy!"

	para "You can talk to it"
	line "and see how it"
	cont "feels about you."
	done



ENDC
_OaksLabText21::
	text "<RIVAL>: Gramps!"
	done

_OaksLabText22::
IF DEF(_YELLOW)
	text "<RIVAL>: Gramps,"
	line "my #MON has"
	cont "grown stronger!"
	cont "Check it out!"	
ELSE
	text "<RIVAL>: What did"
	line "you call me for?"
ENDC
	done

_OaksLabText23::
IF DEF(_YELLOW)
	text "OAK: Ah, <RIVAL>,"
	line "good timing!"

	para "I needed to ask"
	line "both of you to do"
	cont "something for me."	
ELSE
	text "OAK: Oh right! I"
	line "have a request"
	cont "of you two."
ENDC
	done

_OaksLabText24::
	text "On the desk there"
	line "is my invention,"
	cont "#DEX!"

	para "It automatically"
	line "records data on"
	cont "#MON you've"
	cont "seen or caught!"

	para "It's a hi-tech"
	line "encyclopedia!"
	done

_OaksLabText25::
	text "OAK: <PLAYER> and"
	line "<RIVAL>! Take"
	cont "these with you!"

	para "<PLAYER> got"
	line "#DEX from OAK!@@"

_OaksLabText26::
	text "To make a complete"
	line "guide on all the"
	cont "#MON in the"
	cont "world..."

	para "That was my dream!"

	para "But, I'm too old!"
	line "I can't do it!"

	para "So, I want you two"
	line "to fulfill my"
	cont "dream for me!"

	para "Get moving, you"
	line "two!"

	para "This is a great"
	line "undertaking in"
	cont "#MON history!"
	done

_OaksLabText27::
	text "<RIVAL>: Alright"
	line "Gramps! Leave it"
	cont "all to me!"

	para "<PLAYER>, I hate to"
	line "say it, but I"
	cont "don't need you!"

	para "I know! I'll"
	line "borrow a TOWN MAP"
	cont "from my sis!"

	para "I'll tell her not"
	line "to lend you one,"
	cont "<PLAYER>! Hahaha!"
	done

_OaksLabText_1d405::
	text "I study #MON as"
	line "PROF.OAK's AIDE."

IF DEF(_YELLOW)
	done
	
ELSE
	done

_OaksLabText_441cc::
	text "#DEX comp-"
	line "letion is:"

	para "@"
	TX_NUM hDexRatingNumMonsSeen, 1, 3
	text " #MON seen"
	line "@"
	TX_NUM hDexRatingNumMonsOwned, 1, 3
	text " #MON owned"

	para "PROF.OAK's"
	line "Rating:"
	prompt

_OaksLabText_44201::
	text "You still have"
	line "lots to do."
	cont "Look for #MON"
	cont "in grassy areas!"
	done

_OaksLabText_44206::
	text "You're on the"
	line "right track! "
	cont "Get a FLASH HM"
	cont "from my AIDE!"
	done

_OaksLabText_4420b::
	text "You still need"
	line "more #MON!"
	cont "Try to catch"
	cont "other species!"
	done

_OaksLabText_44210::
	text "Good, you're"
	line "trying hard!"
	cont "Get an ITEMFINDER"
	cont "from my AIDE!"
	done

_OaksLabText_44215::
	text "Looking good!"
	line "Go find my AIDE"
	cont "when you get 50!"
	done

_OaksLabText_4421a::
	text "You finally got at"
	line "least 50 species!"
	cont "Be sure to get"
	cont "EXP.ALL from my"
	cont "AIDE!"
	done

_OaksLabText_4421f::
	text "Ho! This is geting"
	line "even better!"
	done

_OaksLabText_44224::
	text "Very good!"
	line "Go fish for some"
	cont "marine #MON!"
	done

_OaksLabText_44229::
	text "Wonderful!"
	line "Do you like to"
	cont "collect things?"
	done

_OaksLabText_4422e::
	text "I'm impressed!"
	line "It must have been"
	cont "difficult to do!"
	done

_OaksLabText_44233::
	text "You finally got at"
	line "least 100 species!"
	cont "I can't believe"
	cont "how good you are!"
	done

_OaksLabText_44238::
	text "You even have the"
	line "evolved forms of"
	cont "#MON! Super!"
	done

_OaksLabText_4423d::
	text "Excellent! Trade"
	line "with friends to"
	cont "get some more!"
	done

_OaksLabText_44242::
	text "Outstanding!"
	line "You've become a"
	cont "real pro at this!"
	done

_OaksLabText_44247::
	text "I have nothing"
	line "left to say!"
	cont "You're the"
	cont "authority now!"
	done

_OaksLabText_4424c::
	text "Your #DEX is"
	line "entirely complete!"
	cont "Congratulations!"
	done

ENDC
