DUT ?= V1
NAME=register_1_bit
COMP1=src/ff_d.vhdl
COMP2=src/mux_2x1_gate.vhdl
SRC=src/$(NAME)_$(DUT).vhdl
TB=tb/$(NAME)_tb.vhdl
TOP=$(NAME)_tb
BUILD_DIR=build

GHW=$(BUILD_DIR)/wave_$(NAME)_$(DUT).ghw

$(GHW): $(SRC) $(TB) clean
	mkdir -p $(BUILD_DIR)
	ghdl -a --workdir=$(BUILD_DIR) $(COMP1)
	ghdl -a --workdir=$(BUILD_DIR) $(COMP2)
	ghdl -a --workdir=$(BUILD_DIR) $(SRC)
	ghdl -a --workdir=$(BUILD_DIR) $(TB)
	ghdl -e --workdir=$(BUILD_DIR) $(TOP)
	ghdl -r --workdir=$(BUILD_DIR) $(TOP) --wave=$(GHW)

view: $(GHW)
	gtkwave $(GHW)

clean:
	rm -rf $(BUILD_DIR)