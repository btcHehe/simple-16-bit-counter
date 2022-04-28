create_clock -period 10.000 -name CLK CLK
derive_pll_clocks
derive_clock_uncertainty
set_false_path -from {get_ports CLK RST}
set_false_path -to {get_ports sel_cat* sel_out* leds dot}
