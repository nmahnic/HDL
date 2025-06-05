NAME=min_sec_timer
COMP1=src/counter_10_c.vhdl
COMP2=src/counter_60_c.vhdl
COMP3=src/seconds_timer.vhdl
SRC=src/$(NAME).vhdl
TB=tb/$(NAME)_tb.vhdl
TOP=$(NAME)_tb
BUILD_DIR=build

VCD=$(BUILD_DIR)/wave_$(NAME).vcd

$(BUILD_DIR)/wave.vcd: $(SRC) $(TB) clean
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