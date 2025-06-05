V ?= V1
DUT ?= asc
NAME=counter_4_bits_
COMP1=src/ff_t.vhdl
COMP2=src/ff_d.vhdl
SRC=src/$(NAME)$(DUT)$(V).vhdl
TB=tb/$(NAME)tb.vhdl
TOP=$(NAME)tb
BUILD_DIR=build

VCD=$(BUILD_DIR)/wave_$(NAME)$(DUT)$(V).vcd

$(BUILD_DIR)/wave.vcd: $(SRC) $(TB) clean
	mkdir -p $(BUILD_DIR)
	ghdl -a --workdir=$(BUILD_DIR) $(COMP1)
	ghdl -a --workdir=$(BUILD_DIR) $(COMP2)
	ghdl -a --workdir=$(BUILD_DIR) $(SRC)
	ghdl -a --workdir=$(BUILD_DIR) $(TB)
	ghdl -e --workdir=$(BUILD_DIR) $(TOP)
	ghdl -r --workdir=$(BUILD_DIR) $(TOP) --vcd=$(VCD)

view: $(BUILD_DIR)/wave.vcd
	gtkwave $(VCD)

clean:
	rm -rf $(BUILD_DIR)