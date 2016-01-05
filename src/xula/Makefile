ISE := /home/engstad/Electronics/tools/Xilinx/14.7/ISE_DS/ISE/bin/lin64
XST := $(ISE)/xst
NGB := $(ISE)/ngdbuild
MAP := $(ISE)/map
PAR := $(ISE)/par
TRC := $(ISE)/trce
BITGEN := $(ISE)/bitgen

SIL := -intstyle silent 

PRJ := icx

# Smallest Chip ($11.48, 300 LABs, 2840 Cells, 221,184 RAM bits)
CHIP := xc6slx4
SPEED := 2
PACK := tqg144

# Xula2
#CHIP := xc6slx25
#PACK := ftg256

PART := $(CHIP)-$(SPEED)-$(PACK)

all: bit/$(PRJ).bit

xst/$(PRJ).ngc: main.v icx.v $(PRJ).xst
	mkdir -p xst/tmp
	mkdir -p xst/reports
	cd xst && $(XST) $(SIL) -ifn ../$(PRJ).xst -ofn reports/ast.syr && cd ..

ngb/$(PRJ).ngd: xst/$(PRJ).ngc $(PACK).ucf
	mkdir -p ngb/tmp
	mkdir -p ngb/reports
	cd ngb && ($(NGB) $(SIL) -sd ../xst -dd tmp -nt timestamp -uc ../$(PACK).ucf -p $(PART) ../xst/$(PRJ).ngc $(PRJ).ngd > reports/cmd.log) && cd ..

map/$(PRJ).ncd: ngb/$(PRJ).ngd
	mkdir -p map/tmp
	mkdir -p map/reports
	cd map && ($(MAP) $(SIL) -p $(PART) -w -logic_opt off -ol std -t 1 -xt 0 -register_duplication off -r 4 -global_opt on -mt 2 -ir off -pr b -lc off -power off -timing -o $(PRJ).ncd ../ngb/$(PRJ).ngd $(PRJ).pcf > reports/cmd.log) && cd ..

par/$(PRJ).ncd: ngb/$(PRJ).ngd map/$(PRJ).ncd
	mkdir -p par/tmp
	mkdir -p par/reports
	cd par && $(PAR) $(SIL) -w -ol std -mt 2 ../map/$(PRJ).ncd $(PRJ).ncd ../map/$(PRJ).pcf && cd ..

trc/reports/$(PRJ).twx trc/reports/$(PRJ).twr: par/$(PRJ).ncd map/$(PRJ).pcf
	mkdir -p trc/tmp
	mkdir -p trc/reports
	cd trc && $(TRC) $(SIL) -v 3 -s 2 -n 3 -fastpaths -xml reports/$(PRJ).twx -o reports/$(PRJ).twr ../par/$(PRJ).ncd ../map/$(PRJ).pcf && cd ..

bit/$(PRJ).bit: $(PRJ).ut par/$(PRJ).ncd trc/reports/$(PRJ).twx
	mkdir -p bit/reports
	cd bit && $(BITGEN) $(SIL) -d -f ../$(PRJ).ut ../par/$(PRJ).ncd $(PRJ).bit ../map/$(PRJ).pcf && cd ..

run: bit/$(PRJ).bit
	xsload --fpga $<

clean:
	rm -rf xst
	rm -rf ngb
	rm -rf map
	rm -rf par
	rm -rf trc
	rm -rf bit
