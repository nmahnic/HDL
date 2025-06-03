SRC=src/and_gate.vhdl
TB=tb/and_gate_tb.vhdl
TOP=and_gate_tb
BUILD_DIR=build

all: $(BUILD_DIR)/wave.vcd

$(BUILD_DIR)/wave.vcd: $(SRC) $(TB)
	mkdir -p $(BUILD_DIR)
	ghdl -a --workdir=$(BUILD_DIR) $(SRC)
	ghdl -a --workdir=$(BUILD_DIR) $(TB)
	ghdl -e --workdir=$(BUILD_DIR) $(TOP)
	ghdl -r --workdir=$(BUILD_DIR) $(TOP) --vcd=$(BUILD_DIR)/wave.vcd

view:
	gtkwave $(BUILD_DIR)/wave.vcd

clean:
	rm -rf $(BUILD_DIR)