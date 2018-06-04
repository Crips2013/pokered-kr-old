BuildCounter = cmd //c "tools\BuildCounter.bat"
MD5 := md5sum -c

pokered_obj := audio_red.o main_red.o text_red.o wram_red.o
pokegreen_obj := audio_green.o main_green.o text_green.o wram_green.o
pokeblue_obj := audio_blue.o main_blue.o text_blue.o wram_blue.o

.SUFFIXES:
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:
.PHONY: all clean red blue green compare tools

roms := pokered.gbc pokeblue.gbc pokegreen.gbc

all: $(roms)
red: pokered.gbc
blue: pokeblue.gbc
green: pokegreen.gbc

# For contributors to make sure a change didn't affect the contents of the rom.
compare: red green blue
	@$(MD5) roms.md5

clean:
	rm -f $(roms) $(pokered_obj) $(pokegreen_obj) $(pokeblue_obj) $(roms:.gbc=.sym)
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' -o -iname '*.pic' \) -exec rm {} +
	$(MAKE) clean -C tools/

tools:
	$(MAKE) -C tools/


# Build tools when building the rom.
# This has to happen before the rules are processed, since that's when scan_includes is run.
ifeq (,$(filter clean tools,$(MAKECMDGOALS)))
$(info $(shell $(MAKE) -C tools))
endif


%.asm: ;

%_red.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
$(pokered_obj): %_red.o: %.asm $$(dep)
	$(BuildCounter)
	rgbasm -D _RED -h -o $@ $*.asm

%_blue.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
$(pokeblue_obj): %_blue.o: %.asm $$(dep)
	$(BuildCounter)
	rgbasm -D _BLUE -h -o $@ $*.asm

%_green.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
$(pokegreen_obj): %_green.o: %.asm $$(dep)
	$(BuildCounter)
	rgbasm -D _GREEN -h -o $@ $*.asm

pokered_opt  = -jsv -k 01 -l 0x33 -m 0x13 -p 0 -r 03 -t "POKEMON RED"
pokeblue_opt = -jsv -k 01 -l 0x33 -m 0x13 -p 0 -r 03 -t "POKEMON BLUE"
pokegreen_opt = -jsv -k 01 -l 0x33 -m 0x13 -p 0 -r 03 -t "POKEMONGREEN"

%.gbc: $$(%_obj)
	rgblink -d -n $*.sym -l pokered.link -o $@ $^
	rgbfix $($*_opt) $@

gfx/blue/intro_purin_1.2bpp: rgbgfx += -h
gfx/blue/intro_purin_2.2bpp: rgbgfx += -h
gfx/blue/intro_purin_3.2bpp: rgbgfx += -h
gfx/red/intro_nido_1.6x6.2bpp: rgbgfx += -h
gfx/red/intro_nido_2.6x6.2bpp: rgbgfx += -h
gfx/red/intro_nido_3.6x6.2bpp: rgbgfx += -h
gfx/green/intro_omstar_1.2bpp: rgbgfx += -h
gfx/green/intro_omstar_2.2bpp: rgbgfx += -h
gfx/green/intro_omstar_3.2bpp: rgbgfx += -h

gfx/game_boy.2bpp: tools/gfx += --remove-duplicates
gfx/theend.2bpp: tools/gfx += --interleave --png=$<
gfx/tilesets/%.2bpp: tools/gfx += --trim-whitespace

%.png: ;

%.2bpp: %.png
	rgbgfx $(rgbgfx) -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -o $@ $@)
%.1bpp: %.png
	rgbgfx -d1 $(rgbgfx) -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -d1 -o $@ $@)
%.pic:  %.2bpp
	tools/pkmncompress $< $@