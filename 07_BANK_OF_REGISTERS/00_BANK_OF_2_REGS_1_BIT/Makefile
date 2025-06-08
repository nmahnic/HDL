DUT ?= V1
NAME=bank_regs_2_1_bit
COMP1=src/register_1_bit.vhdl
SRC=src/$(NAME)_$(DUT).vhdl
TB=tb/$(NAME)_tb.vhdl
TOP=$(NAME)_tb
BUILD_DIR=build

VCD=$(BUILD_DIR)/wave_$(NAME)_$(DUT).vcd

$(BUILD_DIR)/wave.vcd: $(SRC) $(TB) clean
	mkdir -p $(BUILD_DIR)
	ghdl -a --workdir=$(BUILD_DIR) $(COMP1)
	ghdl -a --workdir=$(BUILD_DIR) $(SRC)
	ghdl -a --workdir=$(BUILD_DIR) $(TB)
	ghdl -e --workdir=$(BUILD_DIR) $(TOP)
	ghdl -r --workdir=$(BUILD_DIR) $(TOP) --vcd=$(VCD) --stop-time=10ns

view: $(BUILD_DIR)/wave.vcd
	gtkwave $(VCD)

clean:
	rm -rf $(BUILD_DIR)