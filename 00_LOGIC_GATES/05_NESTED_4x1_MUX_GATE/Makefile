DUT ?= V1
NAME=nested_mux_4x1_gate
COMP1=src/mux_2x1_gateV1.vhdl
COMP2=src/mux_2x1_gateV2.vhdl
COMP3=src/mux_2x1_gateV3.vhdl
SRC=src/$(NAME)$(DUT).vhdl
TB=tb/$(NAME)_tb.vhdl
TOP=$(NAME)_tb
BUILD_DIR=build

VCD=$(BUILD_DIR)/wave_$(NAME)$(DUT).vcd

$(BUILD_DIR)/wave.vcd: $(SRC) $(TB)
	mkdir -p $(BUILD_DIR)
	ghdl -a --workdir=$(BUILD_DIR) $(COMP1)
	ghdl -a --workdir=$(BUILD_DIR) $(COMP2)
	ghdl -a --workdir=$(BUILD_DIR) $(COMP3)
	ghdl -a --workdir=$(BUILD_DIR) $(SRC)
	ghdl -a --workdir=$(BUILD_DIR) $(TB)
	ghdl -e --workdir=$(BUILD_DIR) $(TOP)
	ghdl -r --workdir=$(BUILD_DIR) $(TOP) --vcd=$(VCD)

view: $(BUILD_DIR)/wave.vcd
	gtkwave $(VCD)

clean:
	rm -rf $(BUILD_DIR)