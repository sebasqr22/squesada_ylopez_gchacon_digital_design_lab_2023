-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "08/27/2023 17:35:27"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	four_bit_adder IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	cin : IN std_logic;
	sum : BUFFER std_logic_vector(3 DOWNTO 0);
	cout : BUFFER std_logic
	);
END four_bit_adder;

-- Design Ports Information
-- sum[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF four_bit_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_sum : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \FA0|s~combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \FA1|s~combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \FA1|cout~combout\ : std_logic;
SIGNAL \FA2|s~combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \FA3|s~combout\ : std_logic;
SIGNAL \FA3|cout~combout\ : std_logic;
SIGNAL \FA1|ALT_INV_cout~combout\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_cin~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_cin <= cin;
sum <= ww_sum;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FA1|ALT_INV_cout~combout\ <= NOT \FA1|cout~combout\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_cin~input_o\ <= NOT \cin~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA0|s~combout\,
	devoe => ww_devoe,
	o => ww_sum(0));

-- Location: IOOBUF_X52_Y0_N19
\sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA1|s~combout\,
	devoe => ww_devoe,
	o => ww_sum(1));

-- Location: IOOBUF_X60_Y0_N2
\sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA2|s~combout\,
	devoe => ww_devoe,
	o => ww_sum(2));

-- Location: IOOBUF_X80_Y0_N2
\sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA3|s~combout\,
	devoe => ww_devoe,
	o => ww_sum(3));

-- Location: IOOBUF_X60_Y0_N19
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA3|cout~combout\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOIBUF_X10_Y0_N92
\cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LABCELL_X10_Y1_N0
\FA0|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA0|s~combout\ = ( \a[0]~input_o\ & ( !\cin~input_o\ $ (\b[0]~input_o\) ) ) # ( !\a[0]~input_o\ & ( !\cin~input_o\ $ (!\b[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	combout => \FA0|s~combout\);

-- Location: IOIBUF_X4_Y0_N1
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LABCELL_X10_Y1_N9
\FA1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA1|s~combout\ = ( \a[0]~input_o\ & ( \a[1]~input_o\ & ( !\b[1]~input_o\ $ (((\cin~input_o\) # (\b[0]~input_o\))) ) ) ) # ( !\a[0]~input_o\ & ( \a[1]~input_o\ & ( !\b[1]~input_o\ $ (((\b[0]~input_o\ & \cin~input_o\))) ) ) ) # ( \a[0]~input_o\ & ( 
-- !\a[1]~input_o\ & ( !\b[1]~input_o\ $ (((!\b[0]~input_o\ & !\cin~input_o\))) ) ) ) # ( !\a[0]~input_o\ & ( !\a[1]~input_o\ & ( !\b[1]~input_o\ $ (((!\b[0]~input_o\) # (!\cin~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110011110000111100011100001111000011000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \FA1|s~combout\);

-- Location: IOIBUF_X8_Y0_N35
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LABCELL_X10_Y1_N42
\FA1|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA1|cout~combout\ = ( \a[0]~input_o\ & ( \a[1]~input_o\ & ( ((\cin~input_o\) # (\b[0]~input_o\)) # (\b[1]~input_o\) ) ) ) # ( !\a[0]~input_o\ & ( \a[1]~input_o\ & ( ((\b[0]~input_o\ & \cin~input_o\)) # (\b[1]~input_o\) ) ) ) # ( \a[0]~input_o\ & ( 
-- !\a[1]~input_o\ & ( (\b[1]~input_o\ & ((\cin~input_o\) # (\b[0]~input_o\))) ) ) ) # ( !\a[0]~input_o\ & ( !\a[1]~input_o\ & ( (\b[1]~input_o\ & (\b[0]~input_o\ & \cin~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000110011001100110011001111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \FA1|cout~combout\);

-- Location: LABCELL_X10_Y1_N21
\FA2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA2|s~combout\ = ( \b[2]~input_o\ & ( \FA1|cout~combout\ & ( \a[2]~input_o\ ) ) ) # ( !\b[2]~input_o\ & ( \FA1|cout~combout\ & ( !\a[2]~input_o\ ) ) ) # ( \b[2]~input_o\ & ( !\FA1|cout~combout\ & ( !\a[2]~input_o\ ) ) ) # ( !\b[2]~input_o\ & ( 
-- !\FA1|cout~combout\ & ( \a[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \FA1|ALT_INV_cout~combout\,
	combout => \FA2|s~combout\);

-- Location: IOIBUF_X4_Y0_N52
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LABCELL_X10_Y1_N24
\FA3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA3|s~combout\ = ( \b[3]~input_o\ & ( \FA1|cout~combout\ & ( !\a[3]~input_o\ $ (((\a[2]~input_o\) # (\b[2]~input_o\))) ) ) ) # ( !\b[3]~input_o\ & ( \FA1|cout~combout\ & ( !\a[3]~input_o\ $ (((!\b[2]~input_o\ & !\a[2]~input_o\))) ) ) ) # ( \b[3]~input_o\ 
-- & ( !\FA1|cout~combout\ & ( !\a[3]~input_o\ $ (((\b[2]~input_o\ & \a[2]~input_o\))) ) ) ) # ( !\b[3]~input_o\ & ( !\FA1|cout~combout\ & ( !\a[3]~input_o\ $ (((!\b[2]~input_o\) # (!\a[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100111111000000001100111111110000001100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_a[3]~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \FA1|ALT_INV_cout~combout\,
	combout => \FA3|s~combout\);

-- Location: LABCELL_X10_Y1_N33
\FA3|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA3|cout~combout\ = ( \b[3]~input_o\ & ( \FA1|cout~combout\ & ( ((\b[2]~input_o\) # (\a[3]~input_o\)) # (\a[2]~input_o\) ) ) ) # ( !\b[3]~input_o\ & ( \FA1|cout~combout\ & ( (\a[3]~input_o\ & ((\b[2]~input_o\) # (\a[2]~input_o\))) ) ) ) # ( 
-- \b[3]~input_o\ & ( !\FA1|cout~combout\ & ( ((\a[2]~input_o\ & \b[2]~input_o\)) # (\a[3]~input_o\) ) ) ) # ( !\b[3]~input_o\ & ( !\FA1|cout~combout\ & ( (\a[2]~input_o\ & (\a[3]~input_o\ & \b[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001101110011011100010011000100110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_b[2]~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \FA1|ALT_INV_cout~combout\,
	combout => \FA3|cout~combout\);

-- Location: LABCELL_X43_Y3_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


