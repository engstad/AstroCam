# Based on Karl Lunt's Makefile for Windows.
# Simplified for Linux/Unix by Mike Ditto <ford@omnicron.com>

#########################################################################
# First, describe the cross-compilation environment:

# Path to Teensyduino headers
TD_DIR = $(HOME)/Electronics/tools/Arduino/arduino-1.6.5/hardware/teensy/avr/cores/teensy3
BINDIR = $(TD_DIR)/../../../../tools/arm/bin/
TARGETTYPE = arm-none-eabi

#  Tools paths
CC = $(BINDIR)$(TARGETTYPE)-gcc
CPP= $(BINDIR)$(TARGETTYPE)-g++
AS = $(BINDIR)$(TARGETTYPE)-as
AR = $(BINDIR)$(TARGETTYPE)-ar
RANLIB = $(BINDIR)$(TARGETTYPE)-ranlib
LD = $(BINDIR)$(TARGETTYPE)-ld
OBJCOPY = $(BINDIR)$(TARGETTYPE)-objcopy
SIZE = $(BINDIR)$(TARGETTYPE)-size
OBJDUMP = $(BINDIR)$(TARGETTYPE)-objdump

#  Compiler options
OPTIONS = -DF_CPU=96000000 -DUSB_SERIAL -DLAYOUT_US_ENGLISH

# options needed by many Arduino libraries to configure for Teensy 3.0
OPTIONS += -D__MK20DX256__ -DARDUINO=10600 -DTEENSYDUINO=121

# OPTIONS += -DUSB_DISABLED=1

INCDIRS += -I$(TD_DIR)

#  Linker options
LSCRIPT = $(TD_DIR)/mk20dx128.ld

LDLIBS = -lgcc 

# CPPFLAGS = compiler options for C and C++
CPPFLAGS = -Wall -O3 -mcpu=cortex-m4 -mthumb -nostdlib -MMD $(OPTIONS)

# compiler options for C++ only
CXXFLAGS = -std=gnu++0x -felide-constructors -fno-exceptions -fno-rtti

# compiler options for C only
CFLAGS =

# linker options
LDFLAGS = -O3 -Wl,--gc-sections,--defsym=__rtc_localtime=0 --specs=nano.specs -mcpu=cortex-m4 -mthumb -T$(LSCRIPT) 


########################################################################
# Must compile teensyduino files
#

SYS_OBJECTS = pins_teensy.o analog.o mk20dx128.o yield.o serial1.o serial2.o serial3.o \
	usb_desc.o  usb_flightsim.o  usb_joystick.o  usb_mem.o   usb_mouse.o   usb_seremu.o \
	usb_dev.o   usb_inst.o       usb_keyboard.o  usb_midi.o  usb_rawhid.o  usb_serial.o \
	nonstd.o HardwareSerial1.o HardwareSerial2.o HardwareSerial3.o avr_emulation.o

VPATH = $(TD_DIR)

#########################################################################
# Project details

PROJECT=main

OBJECTS	= $(PROJECT).o

%.o : $(TD_DIR)/%.cpp
	$(CPP) -std=c++11 $(CPPFLAGS) $(CXXFLAGS) $(INCDIRS) -c $< -o $@

%.o : ./%.cpp reginit.dat
	$(CPP) -std=c++11 $(CPPFLAGS) $(CXXFLAGS) $(INCDIRS) -c $< -o $@

%.o : $(TD_DIR)/%.c
	$(CC) $(CPPFLAGS) $(INCDIRS) -c $< -o $@

%.o : ./%.c
	$(CC) $(CPPFLAGS) $(INCDIRS) -c $< -o $@

all:: $(PROJECT).hex $(PROJECT).bin stats dump

libarduino.a: $(SYS_OBJECTS)
	$(AR) -r $@ $(SYS_OBJECTS)
	$(RANLIB) $@

$(PROJECT).bin: $(PROJECT).elf
	$(OBJCOPY) -O binary -j .text -j .data $(PROJECT).elf $(PROJECT).bin

$(PROJECT).hex: $(PROJECT).elf
	$(OBJCOPY) -R .stack -O ihex $(PROJECT).elf $(PROJECT).hex

$(PROJECT).elf: $(OBJECTS) libarduino.a
	$(CC) $(LDFLAGS) $(OBJECTS) -o $(PROJECT).elf $(LDLIBS) -L. -larduino

stats: $(PROJECT).elf
	$(SIZE) $(PROJECT).elf

dump: $(PROJECT).elf
	$(OBJDUMP) -h $(PROJECT).elf

disasm: $(PROJECT).elf
	$(OBJDUMP) -d $(PROJECT).elf

clean:
	$(RM) $(OBJECTS) $(SYS_OBJECTS) libarduino.a *.d *~
	$(RM) $(PROJECT).hex $(PROJECT).elf $(PROJECT).map $(PROJECT).bin

run: all
	~/bin/teensy-load -mmcu=mk20dx256 -w -s -v $(PROJECT).hex

blinker:
	~/bin/teensy-load -mmcu=mk20dx256 -w -s -v ../teensy-barebones/main.hex
