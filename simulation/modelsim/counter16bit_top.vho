-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "04/28/2022 23:46:36"

-- 
-- Device: Altera 10M08DAF256C8G Package FBGA256
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter16bit_top IS
    PORT (
	leds : OUT std_logic;
	dot : OUT std_logic;
	cathode_sel : OUT std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	sel_out : OUT std_logic_vector(6 DOWNTO 0);
	RST : IN std_logic
	);
END counter16bit_top;

-- Design Ports Information
-- leds	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dot	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode_sel[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode_sel[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode_sel[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode_sel[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[6]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter16bit_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_leds : std_logic;
SIGNAL ww_dot : std_logic;
SIGNAL ww_cathode_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_sel_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_RST : std_logic;
SIGNAL \pll2|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll2|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \pll2|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|state_var[0]~1_combout\ : std_logic;
SIGNAL \inst8|state_var[1]~0_combout\ : std_logic;
SIGNAL \demux|sel_out[3]~0_combout\ : std_logic;
SIGNAL \demux|sel_out[3]~1_combout\ : std_logic;
SIGNAL \demux|sel_out[3]~2_combout\ : std_logic;
SIGNAL \demux|sel_out[3]~3_combout\ : std_logic;
SIGNAL \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \16bitcounter|state_var[0]~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \16bitcounter|Add0~0_combout\ : std_logic;
SIGNAL \16bitcounter|Add0~1\ : std_logic;
SIGNAL \16bitcounter|Add0~2_combout\ : std_logic;
SIGNAL \16bitcounter|Add0~3\ : std_logic;
SIGNAL \16bitcounter|Add0~4_combout\ : std_logic;
SIGNAL \16bitcounter|Add0~5\ : std_logic;
SIGNAL \16bitcounter|Add0~6_combout\ : std_logic;
SIGNAL \16bitcounter|Add0~7\ : std_logic;
SIGNAL \16bitcounter|Add0~8_combout\ : std_logic;
SIGNAL \16bitcounter|Add0~9\ : std_logic;
SIGNAL \16bitcounter|Add0~10_combout\ : std_logic;
SIGNAL \16bitcounter|Add0~11\ : std_logic;
SIGNAL \16bitcounter|Add0~12_combout\ : std_logic;
SIGNAL \16bitcounter|Add0~13\ : std_logic;
SIGNAL \16bitcounter|Add0~14_combout\ : std_logic;
SIGNAL \16bitcounter|Add0~15\ : std_logic;
SIGNAL \16bitcounter|Add0~16_combout\ : std_logic;
SIGNAL \16bitcounter|Add0~17\ : std_logic;
SIGNAL \16bitcounter|Add0~18_combout\ : std_logic;
SIGNAL \16bitcounter|Add0~19\ : std_logic;
SIGNAL \16bitcounter|Add0~20_combout\ : std_logic;
SIGNAL \16bitcounter|Add0~21\ : std_logic;
SIGNAL \16bitcounter|Add0~22_combout\ : std_logic;
SIGNAL \16bitcounter|Add0~23\ : std_logic;
SIGNAL \16bitcounter|Add0~24_combout\ : std_logic;
SIGNAL \16bitcounter|Add0~25\ : std_logic;
SIGNAL \16bitcounter|Add0~26_combout\ : std_logic;
SIGNAL \16bitcounter|Add0~27\ : std_logic;
SIGNAL \16bitcounter|Add0~28_combout\ : std_logic;
SIGNAL \LL|dec_out[6]~0_combout\ : std_logic;
SIGNAL \LH|dec_out[6]~0_combout\ : std_logic;
SIGNAL \HH|dec_out[6]~0_combout\ : std_logic;
SIGNAL \HL|dec_out[6]~0_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[6]~0_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[6]~1_combout\ : std_logic;
SIGNAL \LL|dec_out[5]~1_combout\ : std_logic;
SIGNAL \HH|dec_out[5]~1_combout\ : std_logic;
SIGNAL \LH|dec_out[5]~1_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \HL|dec_out[5]~1_combout\ : std_logic;
SIGNAL \HL|dec_out[5]~2_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \LH|dec_out[4]~2_combout\ : std_logic;
SIGNAL \HH|dec_out[4]~2_combout\ : std_logic;
SIGNAL \HL|dec_out[4]~3_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \LL|dec_out[4]~2_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[4]~5_combout\ : std_logic;
SIGNAL \LL|dec_out[3]~3_combout\ : std_logic;
SIGNAL \HL|dec_out[3]~4_combout\ : std_logic;
SIGNAL \HH|dec_out[3]~3_combout\ : std_logic;
SIGNAL \LH|dec_out[3]~3_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[3]~6_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[3]~7_combout\ : std_logic;
SIGNAL \LH|dec_out[2]~4_combout\ : std_logic;
SIGNAL \HL|dec_out[2]~5_combout\ : std_logic;
SIGNAL \HH|dec_out[2]~4_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[2]~8_combout\ : std_logic;
SIGNAL \LL|dec_out[2]~4_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ : std_logic;
SIGNAL \LH|dec_out[1]~5_combout\ : std_logic;
SIGNAL \HH|dec_out[1]~5_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ : std_logic;
SIGNAL \HL|dec_out[1]~6_combout\ : std_logic;
SIGNAL \LL|dec_out[1]~5_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[1]~11_combout\ : std_logic;
SIGNAL \LH|dec_out[0]~6_combout\ : std_logic;
SIGNAL \HL|dec_out[0]~7_combout\ : std_logic;
SIGNAL \HH|dec_out[0]~6_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ : std_logic;
SIGNAL \LL|dec_out[0]~6_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[0]~13_combout\ : std_logic;
SIGNAL \inst8|state_var\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \16bitcounter|state_var\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pll2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \demux|ALT_INV_sel_out[3]~3_combout\ : std_logic;

BEGIN

leds <= ww_leds;
dot <= ww_dot;
cathode_sel <= ww_cathode_sel;
ww_CLK <= CLK;
sel_out <= ww_sel_out;
ww_RST <= RST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll2|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

\pll2|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll2|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll2|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll2|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll2|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll2|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll2|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll2|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll2|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll2|altpll_component|auto_generated|pll1_CLK_bus\(4);

\pll|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\pll|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll|altpll_component|auto_generated|wire_pll1_clk\(0));

\pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll2|altpll_component|auto_generated|wire_pll1_clk\(0));

\pll2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll2|altpll_component|auto_generated|wire_pll1_clk\(1));
\demux|ALT_INV_sel_out[3]~3_combout\ <= NOT \demux|sel_out[3]~3_combout\;

-- Location: LCCOMB_X11_Y12_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X31_Y22_N2
\leds~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_leds);

-- Location: IOOBUF_X31_Y14_N2
\dot~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dot);

-- Location: IOOBUF_X31_Y12_N23
\cathode_sel[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \demux|sel_out[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_cathode_sel(3));

-- Location: IOOBUF_X31_Y22_N9
\cathode_sel[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \demux|sel_out[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_cathode_sel(2));

-- Location: IOOBUF_X31_Y19_N9
\cathode_sel[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \demux|sel_out[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_cathode_sel(1));

-- Location: IOOBUF_X31_Y19_N2
\cathode_sel[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \demux|ALT_INV_sel_out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_cathode_sel(0));

-- Location: IOOBUF_X31_Y6_N2
\sel_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_MUX_component|auto_generated|result_node[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_sel_out(6));

-- Location: IOOBUF_X31_Y11_N23
\sel_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_MUX_component|auto_generated|result_node[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_sel_out(5));

-- Location: IOOBUF_X31_Y11_N16
\sel_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_MUX_component|auto_generated|result_node[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_sel_out(4));

-- Location: IOOBUF_X31_Y11_N9
\sel_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_MUX_component|auto_generated|result_node[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_sel_out(3));

-- Location: IOOBUF_X31_Y11_N2
\sel_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	devoe => ww_devoe,
	o => ww_sel_out(2));

-- Location: IOOBUF_X31_Y14_N16
\sel_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_MUX_component|auto_generated|result_node[1]~11_combout\,
	devoe => ww_devoe,
	o => ww_sel_out(1));

-- Location: IOOBUF_X31_Y14_N9
\sel_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_MUX_component|auto_generated|result_node[0]~13_combout\,
	devoe => ww_devoe,
	o => ww_sel_out(0));

-- Location: IOIBUF_X0_Y7_N22
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: PLL_1
\pll|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 40,
	c0_initial => 1,
	c0_low => 40,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 1000,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 100000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 20,
	m => 40,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 312,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \pll|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \pll|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G4
\pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: PLL_2
\pll2|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 40,
	c0_initial => 1,
	c0_low => 40,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 200,
	c2_initial => 1,
	c2_low => 200,
	c2_mode => "even",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 1000,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "c2",
	clk1_divide_by => 10,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 1,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 100000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 20,
	m => 40,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 312,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \pll2|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll2|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \pll2|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll2|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G7
\pll2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y14_N16
\inst8|state_var[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|state_var[0]~1_combout\ = !\inst8|state_var\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|state_var\(0),
	combout => \inst8|state_var[0]~1_combout\);

-- Location: FF_X25_Y14_N17
\inst8|state_var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst8|state_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|state_var\(0));

-- Location: LCCOMB_X25_Y15_N16
\inst8|state_var[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|state_var[1]~0_combout\ = \inst8|state_var\(0) $ (\inst8|state_var\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|state_var\(0),
	datac => \inst8|state_var\(1),
	combout => \inst8|state_var[1]~0_combout\);

-- Location: FF_X25_Y15_N17
\inst8|state_var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst8|state_var[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|state_var\(1));

-- Location: LCCOMB_X28_Y13_N24
\demux|sel_out[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \demux|sel_out[3]~0_combout\ = (\inst8|state_var\(0) & \inst8|state_var\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|state_var\(0),
	datad => \inst8|state_var\(1),
	combout => \demux|sel_out[3]~0_combout\);

-- Location: LCCOMB_X28_Y21_N0
\demux|sel_out[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \demux|sel_out[3]~1_combout\ = (!\inst8|state_var\(0) & \inst8|state_var\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|state_var\(0),
	datad => \inst8|state_var\(1),
	combout => \demux|sel_out[3]~1_combout\);

-- Location: LCCOMB_X28_Y21_N2
\demux|sel_out[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \demux|sel_out[3]~2_combout\ = (\inst8|state_var\(0) & !\inst8|state_var\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|state_var\(0),
	datad => \inst8|state_var\(1),
	combout => \demux|sel_out[3]~2_combout\);

-- Location: LCCOMB_X28_Y21_N28
\demux|sel_out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \demux|sel_out[3]~3_combout\ = (\inst8|state_var\(0)) # (\inst8|state_var\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|state_var\(0),
	datad => \inst8|state_var\(1),
	combout => \demux|sel_out[3]~3_combout\);

-- Location: CLKCTRL_G9
\pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y16_N30
\16bitcounter|state_var[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|state_var[0]~0_combout\ = !\16bitcounter|state_var\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \16bitcounter|state_var\(0),
	combout => \16bitcounter|state_var[0]~0_combout\);

-- Location: IOIBUF_X31_Y17_N8
\RST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X25_Y16_N31
\16bitcounter|state_var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|state_var[0]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(0));

-- Location: LCCOMB_X25_Y16_N0
\16bitcounter|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~0_combout\ = (\16bitcounter|state_var\(0) & (\16bitcounter|state_var\(1) $ (VCC))) # (!\16bitcounter|state_var\(0) & (\16bitcounter|state_var\(1) & VCC))
-- \16bitcounter|Add0~1\ = CARRY((\16bitcounter|state_var\(0) & \16bitcounter|state_var\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(0),
	datab => \16bitcounter|state_var\(1),
	datad => VCC,
	combout => \16bitcounter|Add0~0_combout\,
	cout => \16bitcounter|Add0~1\);

-- Location: FF_X25_Y16_N1
\16bitcounter|state_var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(1));

-- Location: LCCOMB_X25_Y16_N2
\16bitcounter|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~2_combout\ = (\16bitcounter|state_var\(2) & (!\16bitcounter|Add0~1\)) # (!\16bitcounter|state_var\(2) & ((\16bitcounter|Add0~1\) # (GND)))
-- \16bitcounter|Add0~3\ = CARRY((!\16bitcounter|Add0~1\) # (!\16bitcounter|state_var\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \16bitcounter|state_var\(2),
	datad => VCC,
	cin => \16bitcounter|Add0~1\,
	combout => \16bitcounter|Add0~2_combout\,
	cout => \16bitcounter|Add0~3\);

-- Location: FF_X25_Y16_N3
\16bitcounter|state_var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(2));

-- Location: LCCOMB_X25_Y16_N4
\16bitcounter|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~4_combout\ = (\16bitcounter|state_var\(3) & (\16bitcounter|Add0~3\ $ (GND))) # (!\16bitcounter|state_var\(3) & (!\16bitcounter|Add0~3\ & VCC))
-- \16bitcounter|Add0~5\ = CARRY((\16bitcounter|state_var\(3) & !\16bitcounter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \16bitcounter|state_var\(3),
	datad => VCC,
	cin => \16bitcounter|Add0~3\,
	combout => \16bitcounter|Add0~4_combout\,
	cout => \16bitcounter|Add0~5\);

-- Location: FF_X25_Y16_N5
\16bitcounter|state_var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~4_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(3));

-- Location: LCCOMB_X25_Y16_N6
\16bitcounter|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~6_combout\ = (\16bitcounter|state_var\(4) & (!\16bitcounter|Add0~5\)) # (!\16bitcounter|state_var\(4) & ((\16bitcounter|Add0~5\) # (GND)))
-- \16bitcounter|Add0~7\ = CARRY((!\16bitcounter|Add0~5\) # (!\16bitcounter|state_var\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(4),
	datad => VCC,
	cin => \16bitcounter|Add0~5\,
	combout => \16bitcounter|Add0~6_combout\,
	cout => \16bitcounter|Add0~7\);

-- Location: FF_X25_Y16_N7
\16bitcounter|state_var[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~6_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(4));

-- Location: LCCOMB_X25_Y16_N8
\16bitcounter|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~8_combout\ = (\16bitcounter|state_var\(5) & (\16bitcounter|Add0~7\ $ (GND))) # (!\16bitcounter|state_var\(5) & (!\16bitcounter|Add0~7\ & VCC))
-- \16bitcounter|Add0~9\ = CARRY((\16bitcounter|state_var\(5) & !\16bitcounter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \16bitcounter|state_var\(5),
	datad => VCC,
	cin => \16bitcounter|Add0~7\,
	combout => \16bitcounter|Add0~8_combout\,
	cout => \16bitcounter|Add0~9\);

-- Location: FF_X25_Y16_N9
\16bitcounter|state_var[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~8_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(5));

-- Location: LCCOMB_X25_Y16_N10
\16bitcounter|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~10_combout\ = (\16bitcounter|state_var\(6) & (!\16bitcounter|Add0~9\)) # (!\16bitcounter|state_var\(6) & ((\16bitcounter|Add0~9\) # (GND)))
-- \16bitcounter|Add0~11\ = CARRY((!\16bitcounter|Add0~9\) # (!\16bitcounter|state_var\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(6),
	datad => VCC,
	cin => \16bitcounter|Add0~9\,
	combout => \16bitcounter|Add0~10_combout\,
	cout => \16bitcounter|Add0~11\);

-- Location: FF_X25_Y16_N11
\16bitcounter|state_var[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~10_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(6));

-- Location: LCCOMB_X25_Y16_N12
\16bitcounter|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~12_combout\ = (\16bitcounter|state_var\(7) & (\16bitcounter|Add0~11\ $ (GND))) # (!\16bitcounter|state_var\(7) & (!\16bitcounter|Add0~11\ & VCC))
-- \16bitcounter|Add0~13\ = CARRY((\16bitcounter|state_var\(7) & !\16bitcounter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(7),
	datad => VCC,
	cin => \16bitcounter|Add0~11\,
	combout => \16bitcounter|Add0~12_combout\,
	cout => \16bitcounter|Add0~13\);

-- Location: FF_X25_Y16_N13
\16bitcounter|state_var[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~12_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(7));

-- Location: LCCOMB_X25_Y16_N14
\16bitcounter|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~14_combout\ = (\16bitcounter|state_var\(8) & (!\16bitcounter|Add0~13\)) # (!\16bitcounter|state_var\(8) & ((\16bitcounter|Add0~13\) # (GND)))
-- \16bitcounter|Add0~15\ = CARRY((!\16bitcounter|Add0~13\) # (!\16bitcounter|state_var\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \16bitcounter|state_var\(8),
	datad => VCC,
	cin => \16bitcounter|Add0~13\,
	combout => \16bitcounter|Add0~14_combout\,
	cout => \16bitcounter|Add0~15\);

-- Location: FF_X25_Y16_N15
\16bitcounter|state_var[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~14_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(8));

-- Location: LCCOMB_X25_Y16_N16
\16bitcounter|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~16_combout\ = (\16bitcounter|state_var\(9) & (\16bitcounter|Add0~15\ $ (GND))) # (!\16bitcounter|state_var\(9) & (!\16bitcounter|Add0~15\ & VCC))
-- \16bitcounter|Add0~17\ = CARRY((\16bitcounter|state_var\(9) & !\16bitcounter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \16bitcounter|state_var\(9),
	datad => VCC,
	cin => \16bitcounter|Add0~15\,
	combout => \16bitcounter|Add0~16_combout\,
	cout => \16bitcounter|Add0~17\);

-- Location: FF_X25_Y16_N17
\16bitcounter|state_var[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~16_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(9));

-- Location: LCCOMB_X25_Y16_N18
\16bitcounter|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~18_combout\ = (\16bitcounter|state_var\(10) & (!\16bitcounter|Add0~17\)) # (!\16bitcounter|state_var\(10) & ((\16bitcounter|Add0~17\) # (GND)))
-- \16bitcounter|Add0~19\ = CARRY((!\16bitcounter|Add0~17\) # (!\16bitcounter|state_var\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \16bitcounter|state_var\(10),
	datad => VCC,
	cin => \16bitcounter|Add0~17\,
	combout => \16bitcounter|Add0~18_combout\,
	cout => \16bitcounter|Add0~19\);

-- Location: FF_X25_Y16_N19
\16bitcounter|state_var[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~18_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(10));

-- Location: LCCOMB_X25_Y16_N20
\16bitcounter|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~20_combout\ = (\16bitcounter|state_var\(11) & (\16bitcounter|Add0~19\ $ (GND))) # (!\16bitcounter|state_var\(11) & (!\16bitcounter|Add0~19\ & VCC))
-- \16bitcounter|Add0~21\ = CARRY((\16bitcounter|state_var\(11) & !\16bitcounter|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \16bitcounter|state_var\(11),
	datad => VCC,
	cin => \16bitcounter|Add0~19\,
	combout => \16bitcounter|Add0~20_combout\,
	cout => \16bitcounter|Add0~21\);

-- Location: FF_X25_Y16_N21
\16bitcounter|state_var[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~20_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(11));

-- Location: LCCOMB_X25_Y16_N22
\16bitcounter|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~22_combout\ = (\16bitcounter|state_var\(12) & (!\16bitcounter|Add0~21\)) # (!\16bitcounter|state_var\(12) & ((\16bitcounter|Add0~21\) # (GND)))
-- \16bitcounter|Add0~23\ = CARRY((!\16bitcounter|Add0~21\) # (!\16bitcounter|state_var\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(12),
	datad => VCC,
	cin => \16bitcounter|Add0~21\,
	combout => \16bitcounter|Add0~22_combout\,
	cout => \16bitcounter|Add0~23\);

-- Location: FF_X25_Y16_N23
\16bitcounter|state_var[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~22_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(12));

-- Location: LCCOMB_X25_Y16_N24
\16bitcounter|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~24_combout\ = (\16bitcounter|state_var\(13) & (\16bitcounter|Add0~23\ $ (GND))) # (!\16bitcounter|state_var\(13) & (!\16bitcounter|Add0~23\ & VCC))
-- \16bitcounter|Add0~25\ = CARRY((\16bitcounter|state_var\(13) & !\16bitcounter|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \16bitcounter|state_var\(13),
	datad => VCC,
	cin => \16bitcounter|Add0~23\,
	combout => \16bitcounter|Add0~24_combout\,
	cout => \16bitcounter|Add0~25\);

-- Location: FF_X25_Y16_N25
\16bitcounter|state_var[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~24_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(13));

-- Location: LCCOMB_X25_Y16_N26
\16bitcounter|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~26_combout\ = (\16bitcounter|state_var\(14) & (!\16bitcounter|Add0~25\)) # (!\16bitcounter|state_var\(14) & ((\16bitcounter|Add0~25\) # (GND)))
-- \16bitcounter|Add0~27\ = CARRY((!\16bitcounter|Add0~25\) # (!\16bitcounter|state_var\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(14),
	datad => VCC,
	cin => \16bitcounter|Add0~25\,
	combout => \16bitcounter|Add0~26_combout\,
	cout => \16bitcounter|Add0~27\);

-- Location: FF_X25_Y16_N27
\16bitcounter|state_var[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~26_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(14));

-- Location: LCCOMB_X25_Y16_N28
\16bitcounter|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \16bitcounter|Add0~28_combout\ = \16bitcounter|state_var\(15) $ (!\16bitcounter|Add0~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \16bitcounter|state_var\(15),
	cin => \16bitcounter|Add0~27\,
	combout => \16bitcounter|Add0~28_combout\);

-- Location: FF_X25_Y16_N29
\16bitcounter|state_var[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \16bitcounter|Add0~28_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \16bitcounter|state_var\(15));

-- Location: LCCOMB_X25_Y15_N30
\LL|dec_out[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LL|dec_out[6]~0_combout\ = (\16bitcounter|state_var\(15) & ((\16bitcounter|state_var\(14) $ (!\16bitcounter|state_var\(13))) # (!\16bitcounter|state_var\(12)))) # (!\16bitcounter|state_var\(15) & ((\16bitcounter|state_var\(13)) # 
-- (\16bitcounter|state_var\(14) $ (!\16bitcounter|state_var\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(15),
	datab => \16bitcounter|state_var\(14),
	datac => \16bitcounter|state_var\(13),
	datad => \16bitcounter|state_var\(12),
	combout => \LL|dec_out[6]~0_combout\);

-- Location: LCCOMB_X28_Y15_N16
\LH|dec_out[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LH|dec_out[6]~0_combout\ = (\16bitcounter|state_var\(11) & ((\16bitcounter|state_var\(9) $ (!\16bitcounter|state_var\(10))) # (!\16bitcounter|state_var\(8)))) # (!\16bitcounter|state_var\(11) & ((\16bitcounter|state_var\(9)) # 
-- (\16bitcounter|state_var\(8) $ (!\16bitcounter|state_var\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(8),
	datab => \16bitcounter|state_var\(9),
	datac => \16bitcounter|state_var\(11),
	datad => \16bitcounter|state_var\(10),
	combout => \LH|dec_out[6]~0_combout\);

-- Location: LCCOMB_X28_Y15_N26
\HH|dec_out[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HH|dec_out[6]~0_combout\ = (\16bitcounter|state_var\(7) & ((\16bitcounter|state_var\(6) $ (!\16bitcounter|state_var\(5))) # (!\16bitcounter|state_var\(4)))) # (!\16bitcounter|state_var\(7) & ((\16bitcounter|state_var\(5)) # (\16bitcounter|state_var\(4) $ 
-- (!\16bitcounter|state_var\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(7),
	datab => \16bitcounter|state_var\(4),
	datac => \16bitcounter|state_var\(6),
	datad => \16bitcounter|state_var\(5),
	combout => \HH|dec_out[6]~0_combout\);

-- Location: LCCOMB_X25_Y15_N2
\HL|dec_out[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HL|dec_out[6]~0_combout\ = (\16bitcounter|state_var\(3) & ((\16bitcounter|state_var\(1) $ (!\16bitcounter|state_var\(2))) # (!\16bitcounter|state_var\(0)))) # (!\16bitcounter|state_var\(3) & ((\16bitcounter|state_var\(1)) # (\16bitcounter|state_var\(0) $ 
-- (!\16bitcounter|state_var\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(0),
	datab => \16bitcounter|state_var\(1),
	datac => \16bitcounter|state_var\(3),
	datad => \16bitcounter|state_var\(2),
	combout => \HL|dec_out[6]~0_combout\);

-- Location: LCCOMB_X25_Y15_N12
\inst7|LPM_MUX_component|auto_generated|result_node[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[6]~0_combout\ = (\inst8|state_var\(0) & (((\HL|dec_out[6]~0_combout\) # (\inst8|state_var\(1))))) # (!\inst8|state_var\(0) & (\HH|dec_out[6]~0_combout\ & ((!\inst8|state_var\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HH|dec_out[6]~0_combout\,
	datab => \HL|dec_out[6]~0_combout\,
	datac => \inst8|state_var\(0),
	datad => \inst8|state_var\(1),
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[6]~0_combout\);

-- Location: LCCOMB_X25_Y15_N0
\inst7|LPM_MUX_component|auto_generated|result_node[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[6]~1_combout\ = (\inst8|state_var\(1) & ((\inst7|LPM_MUX_component|auto_generated|result_node[6]~0_combout\ & (\LL|dec_out[6]~0_combout\)) # 
-- (!\inst7|LPM_MUX_component|auto_generated|result_node[6]~0_combout\ & ((\LH|dec_out[6]~0_combout\))))) # (!\inst8|state_var\(1) & (((\inst7|LPM_MUX_component|auto_generated|result_node[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LL|dec_out[6]~0_combout\,
	datab => \inst8|state_var\(1),
	datac => \LH|dec_out[6]~0_combout\,
	datad => \inst7|LPM_MUX_component|auto_generated|result_node[6]~0_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[6]~1_combout\);

-- Location: LCCOMB_X28_Y21_N6
\LL|dec_out[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LL|dec_out[5]~1_combout\ = (\16bitcounter|state_var\(15) & ((\16bitcounter|state_var\(12) & ((!\16bitcounter|state_var\(13)))) # (!\16bitcounter|state_var\(12) & (!\16bitcounter|state_var\(14))))) # (!\16bitcounter|state_var\(15) & 
-- ((\16bitcounter|state_var\(12) $ (!\16bitcounter|state_var\(13))) # (!\16bitcounter|state_var\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(14),
	datab => \16bitcounter|state_var\(15),
	datac => \16bitcounter|state_var\(12),
	datad => \16bitcounter|state_var\(13),
	combout => \LL|dec_out[5]~1_combout\);

-- Location: LCCOMB_X28_Y15_N14
\HH|dec_out[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HH|dec_out[5]~1_combout\ = (\16bitcounter|state_var\(7) & ((\16bitcounter|state_var\(4) & ((!\16bitcounter|state_var\(5)))) # (!\16bitcounter|state_var\(4) & (!\16bitcounter|state_var\(6))))) # (!\16bitcounter|state_var\(7) & 
-- ((\16bitcounter|state_var\(4) $ (!\16bitcounter|state_var\(5))) # (!\16bitcounter|state_var\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(7),
	datab => \16bitcounter|state_var\(4),
	datac => \16bitcounter|state_var\(6),
	datad => \16bitcounter|state_var\(5),
	combout => \HH|dec_out[5]~1_combout\);

-- Location: LCCOMB_X28_Y15_N20
\LH|dec_out[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LH|dec_out[5]~1_combout\ = (\16bitcounter|state_var\(9) & ((\16bitcounter|state_var\(8) & (!\16bitcounter|state_var\(11))) # (!\16bitcounter|state_var\(8) & ((!\16bitcounter|state_var\(10)))))) # (!\16bitcounter|state_var\(9) & 
-- ((\16bitcounter|state_var\(8) $ (!\16bitcounter|state_var\(11))) # (!\16bitcounter|state_var\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(8),
	datab => \16bitcounter|state_var\(9),
	datac => \16bitcounter|state_var\(11),
	datad => \16bitcounter|state_var\(10),
	combout => \LH|dec_out[5]~1_combout\);

-- Location: LCCOMB_X25_Y15_N14
\inst7|LPM_MUX_component|auto_generated|result_node[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ = (\inst8|state_var\(1) & (((\inst8|state_var\(0)) # (\LH|dec_out[5]~1_combout\)))) # (!\inst8|state_var\(1) & (\HH|dec_out[5]~1_combout\ & (!\inst8|state_var\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HH|dec_out[5]~1_combout\,
	datab => \inst8|state_var\(1),
	datac => \inst8|state_var\(0),
	datad => \LH|dec_out[5]~1_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X25_Y15_N26
\HL|dec_out[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HL|dec_out[5]~1_combout\ = (\16bitcounter|state_var\(0) & ((\16bitcounter|state_var\(3) & (!\16bitcounter|state_var\(1))) # (!\16bitcounter|state_var\(3) & ((!\16bitcounter|state_var\(2)))))) # (!\16bitcounter|state_var\(0) & 
-- (((!\16bitcounter|state_var\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(0),
	datab => \16bitcounter|state_var\(1),
	datac => \16bitcounter|state_var\(3),
	datad => \16bitcounter|state_var\(2),
	combout => \HL|dec_out[5]~1_combout\);

-- Location: LCCOMB_X25_Y15_N28
\HL|dec_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HL|dec_out[5]~2_combout\ = (\HL|dec_out[5]~1_combout\) # ((!\16bitcounter|state_var\(3) & !\16bitcounter|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(3),
	datac => \HL|dec_out[5]~1_combout\,
	datad => \16bitcounter|Add0~0_combout\,
	combout => \HL|dec_out[5]~2_combout\);

-- Location: LCCOMB_X25_Y15_N24
\inst7|LPM_MUX_component|auto_generated|result_node[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[5]~3_combout\ = (\inst8|state_var\(0) & ((\inst7|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ & (\LL|dec_out[5]~1_combout\)) # 
-- (!\inst7|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ & ((\HL|dec_out[5]~2_combout\))))) # (!\inst8|state_var\(0) & (((\inst7|LPM_MUX_component|auto_generated|result_node[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LL|dec_out[5]~1_combout\,
	datab => \inst8|state_var\(0),
	datac => \inst7|LPM_MUX_component|auto_generated|result_node[5]~2_combout\,
	datad => \HL|dec_out[5]~2_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X28_Y15_N8
\LH|dec_out[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LH|dec_out[4]~2_combout\ = (\16bitcounter|state_var\(11) & (((\16bitcounter|state_var\(8) & !\16bitcounter|state_var\(9))) # (!\16bitcounter|state_var\(10)))) # (!\16bitcounter|state_var\(11) & ((\16bitcounter|state_var\(8)) # 
-- ((\16bitcounter|state_var\(10)) # (!\16bitcounter|state_var\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(8),
	datab => \16bitcounter|state_var\(9),
	datac => \16bitcounter|state_var\(11),
	datad => \16bitcounter|state_var\(10),
	combout => \LH|dec_out[4]~2_combout\);

-- Location: LCCOMB_X28_Y15_N10
\HH|dec_out[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HH|dec_out[4]~2_combout\ = (\16bitcounter|state_var\(7) & (((\16bitcounter|state_var\(4) & !\16bitcounter|state_var\(5))) # (!\16bitcounter|state_var\(6)))) # (!\16bitcounter|state_var\(7) & ((\16bitcounter|state_var\(4)) # ((\16bitcounter|state_var\(6)) 
-- # (!\16bitcounter|state_var\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(7),
	datab => \16bitcounter|state_var\(4),
	datac => \16bitcounter|state_var\(6),
	datad => \16bitcounter|state_var\(5),
	combout => \HH|dec_out[4]~2_combout\);

-- Location: LCCOMB_X25_Y15_N18
\HL|dec_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HL|dec_out[4]~3_combout\ = (\16bitcounter|state_var\(3) & (((\16bitcounter|state_var\(0) & !\16bitcounter|state_var\(1))) # (!\16bitcounter|state_var\(2)))) # (!\16bitcounter|state_var\(3) & ((\16bitcounter|state_var\(0)) # ((\16bitcounter|state_var\(2)) 
-- # (!\16bitcounter|state_var\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(0),
	datab => \16bitcounter|state_var\(1),
	datac => \16bitcounter|state_var\(3),
	datad => \16bitcounter|state_var\(2),
	combout => \HL|dec_out[4]~3_combout\);

-- Location: LCCOMB_X25_Y15_N4
\inst7|LPM_MUX_component|auto_generated|result_node[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[4]~4_combout\ = (\inst8|state_var\(0) & (((\HL|dec_out[4]~3_combout\) # (\inst8|state_var\(1))))) # (!\inst8|state_var\(0) & (\HH|dec_out[4]~2_combout\ & ((!\inst8|state_var\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HH|dec_out[4]~2_combout\,
	datab => \HL|dec_out[4]~3_combout\,
	datac => \inst8|state_var\(0),
	datad => \inst8|state_var\(1),
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X28_Y21_N16
\LL|dec_out[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LL|dec_out[4]~2_combout\ = (\16bitcounter|state_var\(14) & (((\16bitcounter|state_var\(12) & !\16bitcounter|state_var\(13))) # (!\16bitcounter|state_var\(15)))) # (!\16bitcounter|state_var\(14) & ((\16bitcounter|state_var\(15)) # 
-- ((\16bitcounter|state_var\(12)) # (!\16bitcounter|state_var\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(14),
	datab => \16bitcounter|state_var\(15),
	datac => \16bitcounter|state_var\(12),
	datad => \16bitcounter|state_var\(13),
	combout => \LL|dec_out[4]~2_combout\);

-- Location: LCCOMB_X25_Y15_N6
\inst7|LPM_MUX_component|auto_generated|result_node[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[4]~5_combout\ = (\inst8|state_var\(1) & ((\inst7|LPM_MUX_component|auto_generated|result_node[4]~4_combout\ & ((\LL|dec_out[4]~2_combout\))) # 
-- (!\inst7|LPM_MUX_component|auto_generated|result_node[4]~4_combout\ & (\LH|dec_out[4]~2_combout\)))) # (!\inst8|state_var\(1) & (((\inst7|LPM_MUX_component|auto_generated|result_node[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LH|dec_out[4]~2_combout\,
	datab => \inst8|state_var\(1),
	datac => \inst7|LPM_MUX_component|auto_generated|result_node[4]~4_combout\,
	datad => \LL|dec_out[4]~2_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[4]~5_combout\);

-- Location: LCCOMB_X28_Y21_N12
\LL|dec_out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LL|dec_out[3]~3_combout\ = (\16bitcounter|state_var\(13) & ((\16bitcounter|state_var\(14) & ((\16bitcounter|state_var\(12)))) # (!\16bitcounter|state_var\(14) & (\16bitcounter|state_var\(15) & !\16bitcounter|state_var\(12))))) # 
-- (!\16bitcounter|state_var\(13) & (!\16bitcounter|state_var\(15) & (\16bitcounter|state_var\(14) $ (\16bitcounter|state_var\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(14),
	datab => \16bitcounter|state_var\(15),
	datac => \16bitcounter|state_var\(12),
	datad => \16bitcounter|state_var\(13),
	combout => \LL|dec_out[3]~3_combout\);

-- Location: LCCOMB_X25_Y15_N8
\HL|dec_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HL|dec_out[3]~4_combout\ = (\16bitcounter|state_var\(1) & ((\16bitcounter|state_var\(0) & ((\16bitcounter|state_var\(2)))) # (!\16bitcounter|state_var\(0) & (\16bitcounter|state_var\(3) & !\16bitcounter|state_var\(2))))) # (!\16bitcounter|state_var\(1) & 
-- (!\16bitcounter|state_var\(3) & (\16bitcounter|state_var\(0) $ (\16bitcounter|state_var\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(0),
	datab => \16bitcounter|state_var\(1),
	datac => \16bitcounter|state_var\(3),
	datad => \16bitcounter|state_var\(2),
	combout => \HL|dec_out[3]~4_combout\);

-- Location: LCCOMB_X28_Y15_N22
\HH|dec_out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HH|dec_out[3]~3_combout\ = (\16bitcounter|state_var\(5) & ((\16bitcounter|state_var\(4) & ((\16bitcounter|state_var\(6)))) # (!\16bitcounter|state_var\(4) & (\16bitcounter|state_var\(7) & !\16bitcounter|state_var\(6))))) # (!\16bitcounter|state_var\(5) & 
-- (!\16bitcounter|state_var\(7) & (\16bitcounter|state_var\(4) $ (\16bitcounter|state_var\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(7),
	datab => \16bitcounter|state_var\(4),
	datac => \16bitcounter|state_var\(6),
	datad => \16bitcounter|state_var\(5),
	combout => \HH|dec_out[3]~3_combout\);

-- Location: LCCOMB_X28_Y15_N28
\LH|dec_out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LH|dec_out[3]~3_combout\ = (\16bitcounter|state_var\(9) & ((\16bitcounter|state_var\(8) & ((\16bitcounter|state_var\(10)))) # (!\16bitcounter|state_var\(8) & (\16bitcounter|state_var\(11) & !\16bitcounter|state_var\(10))))) # 
-- (!\16bitcounter|state_var\(9) & (!\16bitcounter|state_var\(11) & (\16bitcounter|state_var\(8) $ (\16bitcounter|state_var\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(8),
	datab => \16bitcounter|state_var\(9),
	datac => \16bitcounter|state_var\(11),
	datad => \16bitcounter|state_var\(10),
	combout => \LH|dec_out[3]~3_combout\);

-- Location: LCCOMB_X28_Y21_N10
\inst7|LPM_MUX_component|auto_generated|result_node[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[3]~6_combout\ = (\inst8|state_var\(1) & (((\inst8|state_var\(0)) # (!\LH|dec_out[3]~3_combout\)))) # (!\inst8|state_var\(1) & (!\HH|dec_out[3]~3_combout\ & (!\inst8|state_var\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state_var\(1),
	datab => \HH|dec_out[3]~3_combout\,
	datac => \inst8|state_var\(0),
	datad => \LH|dec_out[3]~3_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[3]~6_combout\);

-- Location: LCCOMB_X28_Y21_N14
\inst7|LPM_MUX_component|auto_generated|result_node[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[3]~7_combout\ = (\inst8|state_var\(0) & ((\inst7|LPM_MUX_component|auto_generated|result_node[3]~6_combout\ & (!\LL|dec_out[3]~3_combout\)) # 
-- (!\inst7|LPM_MUX_component|auto_generated|result_node[3]~6_combout\ & ((!\HL|dec_out[3]~4_combout\))))) # (!\inst8|state_var\(0) & (((\inst7|LPM_MUX_component|auto_generated|result_node[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LL|dec_out[3]~3_combout\,
	datab => \HL|dec_out[3]~4_combout\,
	datac => \inst8|state_var\(0),
	datad => \inst7|LPM_MUX_component|auto_generated|result_node[3]~6_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[3]~7_combout\);

-- Location: LCCOMB_X28_Y15_N0
\LH|dec_out[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LH|dec_out[2]~4_combout\ = (\16bitcounter|state_var\(9) & (\16bitcounter|state_var\(8) & (!\16bitcounter|state_var\(11)))) # (!\16bitcounter|state_var\(9) & ((\16bitcounter|state_var\(10) & ((!\16bitcounter|state_var\(11)))) # 
-- (!\16bitcounter|state_var\(10) & (\16bitcounter|state_var\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(8),
	datab => \16bitcounter|state_var\(9),
	datac => \16bitcounter|state_var\(11),
	datad => \16bitcounter|state_var\(10),
	combout => \LH|dec_out[2]~4_combout\);

-- Location: LCCOMB_X25_Y15_N10
\HL|dec_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HL|dec_out[2]~5_combout\ = (\16bitcounter|state_var\(1) & (\16bitcounter|state_var\(0) & (!\16bitcounter|state_var\(3)))) # (!\16bitcounter|state_var\(1) & ((\16bitcounter|state_var\(2) & ((!\16bitcounter|state_var\(3)))) # (!\16bitcounter|state_var\(2) 
-- & (\16bitcounter|state_var\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(0),
	datab => \16bitcounter|state_var\(1),
	datac => \16bitcounter|state_var\(3),
	datad => \16bitcounter|state_var\(2),
	combout => \HL|dec_out[2]~5_combout\);

-- Location: LCCOMB_X28_Y15_N18
\HH|dec_out[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HH|dec_out[2]~4_combout\ = (\16bitcounter|state_var\(5) & (!\16bitcounter|state_var\(7) & (\16bitcounter|state_var\(4)))) # (!\16bitcounter|state_var\(5) & ((\16bitcounter|state_var\(6) & (!\16bitcounter|state_var\(7))) # (!\16bitcounter|state_var\(6) & 
-- ((\16bitcounter|state_var\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(7),
	datab => \16bitcounter|state_var\(4),
	datac => \16bitcounter|state_var\(6),
	datad => \16bitcounter|state_var\(5),
	combout => \HH|dec_out[2]~4_combout\);

-- Location: LCCOMB_X28_Y15_N12
\inst7|LPM_MUX_component|auto_generated|result_node[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[2]~8_combout\ = (\inst8|state_var\(0) & (((\inst8|state_var\(1))) # (!\HL|dec_out[2]~5_combout\))) # (!\inst8|state_var\(0) & (((!\inst8|state_var\(1) & !\HH|dec_out[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state_var\(0),
	datab => \HL|dec_out[2]~5_combout\,
	datac => \inst8|state_var\(1),
	datad => \HH|dec_out[2]~4_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[2]~8_combout\);

-- Location: LCCOMB_X28_Y21_N8
\LL|dec_out[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LL|dec_out[2]~4_combout\ = (\16bitcounter|state_var\(13) & (((!\16bitcounter|state_var\(15) & \16bitcounter|state_var\(12))))) # (!\16bitcounter|state_var\(13) & ((\16bitcounter|state_var\(14) & (!\16bitcounter|state_var\(15))) # 
-- (!\16bitcounter|state_var\(14) & ((\16bitcounter|state_var\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(14),
	datab => \16bitcounter|state_var\(15),
	datac => \16bitcounter|state_var\(12),
	datad => \16bitcounter|state_var\(13),
	combout => \LL|dec_out[2]~4_combout\);

-- Location: LCCOMB_X28_Y21_N18
\inst7|LPM_MUX_component|auto_generated|result_node[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ = (\inst8|state_var\(1) & ((\inst7|LPM_MUX_component|auto_generated|result_node[2]~8_combout\ & ((!\LL|dec_out[2]~4_combout\))) # 
-- (!\inst7|LPM_MUX_component|auto_generated|result_node[2]~8_combout\ & (!\LH|dec_out[2]~4_combout\)))) # (!\inst8|state_var\(1) & (((\inst7|LPM_MUX_component|auto_generated|result_node[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state_var\(1),
	datab => \LH|dec_out[2]~4_combout\,
	datac => \inst7|LPM_MUX_component|auto_generated|result_node[2]~8_combout\,
	datad => \LL|dec_out[2]~4_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[2]~9_combout\);

-- Location: LCCOMB_X28_Y15_N30
\LH|dec_out[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LH|dec_out[1]~5_combout\ = (\16bitcounter|state_var\(8) & (\16bitcounter|state_var\(11) $ (((!\16bitcounter|state_var\(9) & \16bitcounter|state_var\(10)))))) # (!\16bitcounter|state_var\(8) & (((\16bitcounter|state_var\(11)) # 
-- (\16bitcounter|state_var\(10))) # (!\16bitcounter|state_var\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(8),
	datab => \16bitcounter|state_var\(9),
	datac => \16bitcounter|state_var\(11),
	datad => \16bitcounter|state_var\(10),
	combout => \LH|dec_out[1]~5_combout\);

-- Location: LCCOMB_X28_Y15_N24
\HH|dec_out[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HH|dec_out[1]~5_combout\ = (\16bitcounter|state_var\(4) & (\16bitcounter|state_var\(7) $ (((\16bitcounter|state_var\(6) & !\16bitcounter|state_var\(5)))))) # (!\16bitcounter|state_var\(4) & ((\16bitcounter|state_var\(7)) # ((\16bitcounter|state_var\(6)) 
-- # (!\16bitcounter|state_var\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(7),
	datab => \16bitcounter|state_var\(4),
	datac => \16bitcounter|state_var\(6),
	datad => \16bitcounter|state_var\(5),
	combout => \HH|dec_out[1]~5_combout\);

-- Location: LCCOMB_X28_Y15_N2
\inst7|LPM_MUX_component|auto_generated|result_node[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ = (\inst8|state_var\(1) & ((\inst8|state_var\(0)) # ((\LH|dec_out[1]~5_combout\)))) # (!\inst8|state_var\(1) & (!\inst8|state_var\(0) & ((\HH|dec_out[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state_var\(1),
	datab => \inst8|state_var\(0),
	datac => \LH|dec_out[1]~5_combout\,
	datad => \HH|dec_out[1]~5_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[1]~10_combout\);

-- Location: LCCOMB_X25_Y15_N20
\HL|dec_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HL|dec_out[1]~6_combout\ = (\16bitcounter|state_var\(0) & (\16bitcounter|state_var\(3) $ (((!\16bitcounter|state_var\(1) & \16bitcounter|state_var\(2)))))) # (!\16bitcounter|state_var\(0) & (((\16bitcounter|state_var\(3)) # (\16bitcounter|state_var\(2))) 
-- # (!\16bitcounter|state_var\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(0),
	datab => \16bitcounter|state_var\(1),
	datac => \16bitcounter|state_var\(3),
	datad => \16bitcounter|state_var\(2),
	combout => \HL|dec_out[1]~6_combout\);

-- Location: LCCOMB_X28_Y21_N20
\LL|dec_out[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LL|dec_out[1]~5_combout\ = (\16bitcounter|state_var\(14) & ((\16bitcounter|state_var\(15) $ (!\16bitcounter|state_var\(13))) # (!\16bitcounter|state_var\(12)))) # (!\16bitcounter|state_var\(14) & ((\16bitcounter|state_var\(15)) # 
-- ((!\16bitcounter|state_var\(12) & !\16bitcounter|state_var\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(14),
	datab => \16bitcounter|state_var\(15),
	datac => \16bitcounter|state_var\(12),
	datad => \16bitcounter|state_var\(13),
	combout => \LL|dec_out[1]~5_combout\);

-- Location: LCCOMB_X27_Y18_N24
\inst7|LPM_MUX_component|auto_generated|result_node[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[1]~11_combout\ = (\inst7|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ & (((\LL|dec_out[1]~5_combout\) # (!\inst8|state_var\(0))))) # 
-- (!\inst7|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ & (\HL|dec_out[1]~6_combout\ & (\inst8|state_var\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_MUX_component|auto_generated|result_node[1]~10_combout\,
	datab => \HL|dec_out[1]~6_combout\,
	datac => \inst8|state_var\(0),
	datad => \LL|dec_out[1]~5_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[1]~11_combout\);

-- Location: LCCOMB_X28_Y15_N4
\LH|dec_out[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LH|dec_out[0]~6_combout\ = (\16bitcounter|state_var\(8) & ((\16bitcounter|state_var\(11)) # (\16bitcounter|state_var\(9) $ (\16bitcounter|state_var\(10))))) # (!\16bitcounter|state_var\(8) & ((\16bitcounter|state_var\(9)) # (\16bitcounter|state_var\(11) 
-- $ (\16bitcounter|state_var\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(8),
	datab => \16bitcounter|state_var\(9),
	datac => \16bitcounter|state_var\(11),
	datad => \16bitcounter|state_var\(10),
	combout => \LH|dec_out[0]~6_combout\);

-- Location: LCCOMB_X25_Y15_N22
\HL|dec_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HL|dec_out[0]~7_combout\ = (\16bitcounter|state_var\(0) & ((\16bitcounter|state_var\(3)) # (\16bitcounter|state_var\(1) $ (\16bitcounter|state_var\(2))))) # (!\16bitcounter|state_var\(0) & ((\16bitcounter|state_var\(1)) # (\16bitcounter|state_var\(3) $ 
-- (\16bitcounter|state_var\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(0),
	datab => \16bitcounter|state_var\(1),
	datac => \16bitcounter|state_var\(3),
	datad => \16bitcounter|state_var\(2),
	combout => \HL|dec_out[0]~7_combout\);

-- Location: LCCOMB_X28_Y15_N6
\HH|dec_out[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HH|dec_out[0]~6_combout\ = (\16bitcounter|state_var\(4) & ((\16bitcounter|state_var\(7)) # (\16bitcounter|state_var\(6) $ (\16bitcounter|state_var\(5))))) # (!\16bitcounter|state_var\(4) & ((\16bitcounter|state_var\(5)) # (\16bitcounter|state_var\(7) $ 
-- (\16bitcounter|state_var\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(7),
	datab => \16bitcounter|state_var\(4),
	datac => \16bitcounter|state_var\(6),
	datad => \16bitcounter|state_var\(5),
	combout => \HH|dec_out[0]~6_combout\);

-- Location: LCCOMB_X28_Y21_N22
\inst7|LPM_MUX_component|auto_generated|result_node[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ = (\inst8|state_var\(0) & ((\inst8|state_var\(1)) # ((\HL|dec_out[0]~7_combout\)))) # (!\inst8|state_var\(0) & (!\inst8|state_var\(1) & ((\HH|dec_out[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state_var\(0),
	datab => \inst8|state_var\(1),
	datac => \HL|dec_out[0]~7_combout\,
	datad => \HH|dec_out[0]~6_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[0]~12_combout\);

-- Location: LCCOMB_X28_Y21_N24
\LL|dec_out[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LL|dec_out[0]~6_combout\ = (\16bitcounter|state_var\(12) & ((\16bitcounter|state_var\(15)) # (\16bitcounter|state_var\(14) $ (\16bitcounter|state_var\(13))))) # (!\16bitcounter|state_var\(12) & ((\16bitcounter|state_var\(13)) # 
-- (\16bitcounter|state_var\(14) $ (\16bitcounter|state_var\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \16bitcounter|state_var\(14),
	datab => \16bitcounter|state_var\(15),
	datac => \16bitcounter|state_var\(12),
	datad => \16bitcounter|state_var\(13),
	combout => \LL|dec_out[0]~6_combout\);

-- Location: LCCOMB_X28_Y21_N26
\inst7|LPM_MUX_component|auto_generated|result_node[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[0]~13_combout\ = (\inst8|state_var\(1) & ((\inst7|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ & ((\LL|dec_out[0]~6_combout\))) # 
-- (!\inst7|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ & (\LH|dec_out[0]~6_combout\)))) # (!\inst8|state_var\(1) & (((\inst7|LPM_MUX_component|auto_generated|result_node[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state_var\(1),
	datab => \LH|dec_out[0]~6_combout\,
	datac => \inst7|LPM_MUX_component|auto_generated|result_node[0]~12_combout\,
	datad => \LL|dec_out[0]~6_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[0]~13_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);
END structure;


