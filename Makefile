PROJECTNAME = game
GBDKDIR = ~/.gbdk
EMULATOR = mgba

LCC = $(GBDKDIR)/bin/lcc 
LCCFLAGS += -v
LCCFLAGS += -I$(GBDKDIR)/include

GB_BIN = $(PROJECTNAME).gb
GB_CSRC := $(wildcard *.c)
GB_ASM := $(wildcard *.s)

.PHONY: all clean

all: $(GB_BIN)
	$(EMULATOR) $(GB_BIN)
$(GB_BIN): $(GB_CSRC) $(GB_ASM)
	$(LCC) $(LCCFLAGS) -o $@ $(GB_CSRC) $(GB_ASM)
clean:
	rm -f *.o *.lst *.map *.gb *.ihx *.sym *.cdb *.adb *.asm

