DUT ?= V1
NAME=vector_mux_2x1_gate
SRC=src/$(NAME)$(DUT).vhdl
TB=tb/$(NAME)_tb.vhdl
TOP=$(NAME)_tb
BUILD_DIR=build

VCD=$(BUILD_DIR)/wave_$(NAME)$(DUT).vcd

$(BUILD_DIR)/wave.vcd: $(SRC) $(TB)
	mkdir -p $(BUILD_DIR)
	ghdl -a --workdir=$(BUILD_DIR) $(SRC)
	ghdl -a --workdir=$(BUILD_DIR) $(TB)
	ghdl -e --workdir=$(BUILD_DIR) $(TOP)
	ghdl -r --workdir=$(BUILD_DIR) $(TOP) --vcd=$(VCD)

view: $(BUILD_DIR)/wave.vcd
	gtkwave $(VCD)

clean:
	rm -rf $(BUILD_DIR)