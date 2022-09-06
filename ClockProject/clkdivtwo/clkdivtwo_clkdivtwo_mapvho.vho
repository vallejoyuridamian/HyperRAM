-- VHDL netlist produced by program ldbanno, Version Diamond Version 3.5.0.102

-- ldbanno -n VHDL -o clkdivtwo_clkdivtwo_mapvho.vho -w -neg -gui -msgset C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/promote.xml clkdivtwo_clkdivtwo_map.ncd 
-- Netlist created on Sun Jul 03 12:04:20 2022
-- Netlist written on Sun Jul 03 12:16:56 2022
-- Design is for device LFE5U-25F
-- Design is for package CSFBGA285
-- Design is for performance grade 6

-- entity sapiobuf
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf : ENTITY IS TRUE;

  end sapiobuf;

  architecture Structure of sapiobuf is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity resetB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity resetB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "resetB";

      tipd_resetS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_resetS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_resetS 	: VitalDelayType := 0 ns;
      tpw_resetS_posedge	: VitalDelayType := 0 ns;
      tpw_resetS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; resetS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF resetB : ENTITY IS TRUE;

  end resetB;

  architecture Structure of resetB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal resetS_ipd 	: std_logic := 'X';

    component sapiobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    reset_pad: sapiobuf
      port map (Z=>PADDI_out, PAD=>resetS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(resetS_ipd, resetS, tipd_resetS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, resetS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_resetS_resetS          	: x01 := '0';
    VARIABLE periodcheckinfo_resetS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => resetS_ipd,
        TestSignalName => "resetS",
        Period => tperiod_resetS,
        PulseWidthHigh => tpw_resetS_posedge,
        PulseWidthLow => tpw_resetS_negedge,
        PeriodData => periodcheckinfo_resetS,
        Violation => tviol_resetS_resetS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => resetS_ipd'last_event,
                           PathDelay => tpd_resetS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity clk_inB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity clk_inB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "clk_inB";

      tipd_clkin  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_clkin_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_clkin 	: VitalDelayType := 0 ns;
      tpw_clkin_posedge	: VitalDelayType := 0 ns;
      tpw_clkin_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; clkin: in Std_logic);

    ATTRIBUTE Vital_Level0 OF clk_inB : ENTITY IS TRUE;

  end clk_inB;

  architecture Structure of clk_inB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal clkin_ipd 	: std_logic := 'X';

    component sapiobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    clk_in_pad: sapiobuf
      port map (Z=>PADDI_out, PAD=>clkin_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(clkin_ipd, clkin, tipd_clkin);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, clkin_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_clkin_clkin          	: x01 := '0';
    VARIABLE periodcheckinfo_clkin	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => clkin_ipd,
        TestSignalName => "clkin",
        Period => tperiod_clkin,
        PulseWidthHigh => tpw_clkin_posedge,
        PulseWidthLow => tpw_clkin_negedge,
        PeriodData => periodcheckinfo_clkin,
        Violation => tviol_clkin_clkin,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => clkin_ipd'last_event,
                           PathDelay => tpd_clkin_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0001
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0001 is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0001 : ENTITY IS TRUE;

  end sapiobuf0001;

  architecture Structure of sapiobuf0001 is
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
  end Structure;

-- entity clk_outB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity clk_outB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "clk_outB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_clkout	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; clkout: out Std_logic);

    ATTRIBUTE Vital_Level0 OF clk_outB : ENTITY IS TRUE;

  end clk_outB;

  architecture Structure of clk_outB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal clkout_out 	: std_logic := 'X';

    component sapiobuf0001
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    clk_out_pad: sapiobuf0001
      port map (I=>PADDO_ipd, PAD=>clkout_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, clkout_out)
    VARIABLE clkout_zd         	: std_logic := 'X';
    VARIABLE clkout_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    clkout_zd 	:= clkout_out;

    VitalPathDelay01 (
      OutSignal => clkout, OutSignalName => "clkout", OutTemp => clkout_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_clkout,
                           PathCondition => TRUE)),
      GlitchData => clkout_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity GSR5MODE
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity GSR5MODE is
    port (GSRP: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR5MODE : ENTITY IS TRUE;

  end GSR5MODE;

  architecture Structure of GSR5MODE is
    signal GSRMODE: Std_logic;
  begin
    INST10: INV
      port map (A=>GSRP, Z=>GSRMODE);
    INST20: GSR
      port map (GSR=>GSRMODE);
  end Structure;

-- entity GSR_INSTB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity GSR_INSTB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "GSR_INSTB";

      tipd_GSRNET  	: VitalDelayType01 := (0 ns, 0 ns));

    port (GSRNET: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR_INSTB : ENTITY IS TRUE;

  end GSR_INSTB;

  architecture Structure of GSR_INSTB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal GSRNET_ipd 	: std_logic := 'X';

    component GSR5MODE
      port (GSRP: in Std_logic);
    end component;
  begin
    GSR_INST_GSRMODE: GSR5MODE
      port map (GSRP=>GSRNET_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(GSRNET_ipd, GSRNET, tipd_GSRNET);
    END BLOCK;

    VitalBehavior : PROCESS (GSRNET_ipd)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;



    END PROCESS;

  end Structure;

-- entity Tb_clock_divider
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity Tb_clock_divider is
    port (clk_in: in Std_logic; reset: in Std_logic; clk_out: out Std_logic);



  end Tb_clock_divider;

  architecture Structure of Tb_clock_divider is
    signal counter_26: Std_logic;
    signal counter_25: Std_logic;
    signal counter_31_N_33_26: Std_logic;
    signal counter_31_N_33_25: Std_logic;
    signal n39: Std_logic;
    signal clk_in_c: Std_logic;
    signal n273: Std_logic;
    signal n274: Std_logic;
    signal counter_24: Std_logic;
    signal counter_23: Std_logic;
    signal counter_31_N_33_24: Std_logic;
    signal counter_31_N_33_23: Std_logic;
    signal n272: Std_logic;
    signal counter_22: Std_logic;
    signal counter_21: Std_logic;
    signal counter_31_N_33_22: Std_logic;
    signal counter_31_N_33_21: Std_logic;
    signal n271: Std_logic;
    signal counter_28: Std_logic;
    signal counter_27: Std_logic;
    signal counter_31_N_33_28: Std_logic;
    signal counter_31_N_33_27: Std_logic;
    signal n275: Std_logic;
    signal counter_30: Std_logic;
    signal counter_29: Std_logic;
    signal counter_31_N_33_30: Std_logic;
    signal counter_31_N_33_29: Std_logic;
    signal n276: Std_logic;
    signal counter_31: Std_logic;
    signal counter_31_N_33_31: Std_logic;
    signal counter_20: Std_logic;
    signal counter_19: Std_logic;
    signal counter_31_N_33_20: Std_logic;
    signal counter_31_N_33_19: Std_logic;
    signal n270: Std_logic;
    signal counter_18: Std_logic;
    signal counter_17: Std_logic;
    signal counter_31_N_33_18: Std_logic;
    signal counter_31_N_33_17: Std_logic;
    signal n269: Std_logic;
    signal counter_16: Std_logic;
    signal counter_15: Std_logic;
    signal counter_31_N_33_16: Std_logic;
    signal counter_31_N_33_15: Std_logic;
    signal n268: Std_logic;
    signal counter_14: Std_logic;
    signal counter_13: Std_logic;
    signal counter_31_N_33_14: Std_logic;
    signal counter_31_N_33_13: Std_logic;
    signal n267: Std_logic;
    signal counter_12: Std_logic;
    signal counter_11: Std_logic;
    signal counter_31_N_33_12: Std_logic;
    signal counter_31_N_33_11: Std_logic;
    signal n266: Std_logic;
    signal counter_10: Std_logic;
    signal counter_9: Std_logic;
    signal counter_31_N_33_10: Std_logic;
    signal counter_31_N_33_9: Std_logic;
    signal n265: Std_logic;
    signal counter_8: Std_logic;
    signal counter_7: Std_logic;
    signal counter_31_N_33_8: Std_logic;
    signal counter_31_N_33_7: Std_logic;
    signal n264: Std_logic;
    signal counter_6: Std_logic;
    signal counter_5: Std_logic;
    signal counter_31_N_33_6: Std_logic;
    signal counter_31_N_33_5: Std_logic;
    signal n263: Std_logic;
    signal counter_4: Std_logic;
    signal counter_3: Std_logic;
    signal counter_31_N_33_4: Std_logic;
    signal counter_31_N_33_3: Std_logic;
    signal n262: Std_logic;
    signal counter_2: Std_logic;
    signal counter_1: Std_logic;
    signal counter_31_N_33_2: Std_logic;
    signal counter_31_N_33_1: Std_logic;
    signal n261: Std_logic;
    signal counter_0: Std_logic;
    signal counter_31_N_33_0: Std_logic;
    signal n260: Std_logic;
    signal n259: Std_logic;
    signal n258: Std_logic;
    signal n257: Std_logic;
    signal n256: Std_logic;
    signal n255: Std_logic;
    signal n254: Std_logic;
    signal n253: Std_logic;
    signal n252: Std_logic;
    signal n251: Std_logic;
    signal n250: Std_logic;
    signal n249: Std_logic;
    signal n248: Std_logic;
    signal n247: Std_logic;
    signal n246: Std_logic;
    signal n245: Std_logic;
    signal clk_out_c: Std_logic;
    signal uut_clk_out_N_66: Std_logic;
    signal uut_counter_31_N_1_0: Std_logic;
    signal reset_c: Std_logic;
    signal VCCI: Std_logic;
    component resetB
      port (PADDI: out Std_logic; resetS: in Std_logic);
    end component;
    component clk_inB
      port (PADDI: out Std_logic; clkin: in Std_logic);
    end component;
    component clk_outB
      port (PADDO: in Std_logic; clkout: out Std_logic);
    end component;
    component GSR_INSTB
      port (GSRNET: in Std_logic);
    end component;
  begin
    SLICE_0I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_26, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_26, DI0=>counter_31_N_33_25, 
                A0=>counter_25, B0=>'X', C0=>'X', D0=>'1', FCI=>n273, M0=>'X', 
                CE=>'X', CLK=>clk_in_c, LSR=>n39, FCO=>n274, 
                F1=>counter_31_N_33_26, Q1=>counter_26, F0=>counter_31_N_33_25, 
                Q0=>counter_25);
    SLICE_1I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_24, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_24, DI0=>counter_31_N_33_23, 
                A0=>counter_23, B0=>'X', C0=>'X', D0=>'1', FCI=>n272, M0=>'X', 
                CE=>'X', CLK=>clk_in_c, LSR=>n39, FCO=>n273, 
                F1=>counter_31_N_33_24, Q1=>counter_24, F0=>counter_31_N_33_23, 
                Q0=>counter_23);
    SLICE_2I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_22, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_22, DI0=>counter_31_N_33_21, 
                A0=>counter_21, B0=>'X', C0=>'X', D0=>'1', FCI=>n271, M0=>'X', 
                CE=>'X', CLK=>clk_in_c, LSR=>n39, FCO=>n272, 
                F1=>counter_31_N_33_22, Q1=>counter_22, F0=>counter_31_N_33_21, 
                Q0=>counter_21);
    SLICE_3I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_28, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_28, DI0=>counter_31_N_33_27, 
                A0=>counter_27, B0=>'X', C0=>'X', D0=>'1', FCI=>n274, M0=>'X', 
                CE=>'X', CLK=>clk_in_c, LSR=>n39, FCO=>n275, 
                F1=>counter_31_N_33_28, Q1=>counter_28, F0=>counter_31_N_33_27, 
                Q0=>counter_27);
    SLICE_4I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_30, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_30, DI0=>counter_31_N_33_29, 
                A0=>counter_29, B0=>'X', C0=>'X', D0=>'1', FCI=>n275, M0=>'X', 
                CE=>'X', CLK=>clk_in_c, LSR=>n39, FCO=>n276, 
                F1=>counter_31_N_33_30, Q1=>counter_30, F0=>counter_31_N_33_29, 
                Q0=>counter_29);
    SLICE_5I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"0000", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>counter_31_N_33_31, A0=>counter_31, B0=>'X', C0=>'X', 
                D0=>'1', FCI=>n276, M0=>'X', CE=>'X', CLK=>clk_in_c, LSR=>n39, 
                FCO=>open, F1=>open, Q1=>open, F0=>counter_31_N_33_31, 
                Q0=>counter_31);
    SLICE_6I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_20, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_20, DI0=>counter_31_N_33_19, 
                A0=>counter_19, B0=>'X', C0=>'X', D0=>'1', FCI=>n270, M0=>'X', 
                CE=>'X', CLK=>clk_in_c, LSR=>n39, FCO=>n271, 
                F1=>counter_31_N_33_20, Q1=>counter_20, F0=>counter_31_N_33_19, 
                Q0=>counter_19);
    SLICE_7I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_18, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_18, DI0=>counter_31_N_33_17, 
                A0=>counter_17, B0=>'X', C0=>'X', D0=>'1', FCI=>n269, M0=>'X', 
                CE=>'X', CLK=>clk_in_c, LSR=>n39, FCO=>n270, 
                F1=>counter_31_N_33_18, Q1=>counter_18, F0=>counter_31_N_33_17, 
                Q0=>counter_17);
    SLICE_8I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_16, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_16, DI0=>counter_31_N_33_15, 
                A0=>counter_15, B0=>'X', C0=>'X', D0=>'1', FCI=>n268, M0=>'X', 
                CE=>'X', CLK=>clk_in_c, LSR=>n39, FCO=>n269, 
                F1=>counter_31_N_33_16, Q1=>counter_16, F0=>counter_31_N_33_15, 
                Q0=>counter_15);
    SLICE_9I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_14, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_14, DI0=>counter_31_N_33_13, 
                A0=>counter_13, B0=>'X', C0=>'X', D0=>'1', FCI=>n267, M0=>'X', 
                CE=>'X', CLK=>clk_in_c, LSR=>n39, FCO=>n268, 
                F1=>counter_31_N_33_14, Q1=>counter_14, F0=>counter_31_N_33_13, 
                Q0=>counter_13);
    SLICE_10I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_12, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_12, DI0=>counter_31_N_33_11, 
                A0=>counter_11, B0=>'X', C0=>'X', D0=>'1', FCI=>n266, M0=>'X', 
                CE=>'X', CLK=>clk_in_c, LSR=>n39, FCO=>n267, 
                F1=>counter_31_N_33_12, Q1=>counter_12, F0=>counter_31_N_33_11, 
                Q0=>counter_11);
    SLICE_11I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_10, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_10, DI0=>counter_31_N_33_9, A0=>counter_9, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n265, M0=>'X', CE=>'X', 
                CLK=>clk_in_c, LSR=>n39, FCO=>n266, F1=>counter_31_N_33_10, 
                Q1=>counter_10, F0=>counter_31_N_33_9, Q0=>counter_9);
    SLICE_12I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_8, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_8, DI0=>counter_31_N_33_7, A0=>counter_7, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n264, M0=>'X', CE=>'X', 
                CLK=>clk_in_c, LSR=>n39, FCO=>n265, F1=>counter_31_N_33_8, 
                Q1=>counter_8, F0=>counter_31_N_33_7, Q0=>counter_7);
    SLICE_13I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_6, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_6, DI0=>counter_31_N_33_5, A0=>counter_5, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n263, M0=>'X', CE=>'X', 
                CLK=>clk_in_c, LSR=>n39, FCO=>n264, F1=>counter_31_N_33_6, 
                Q1=>counter_6, F0=>counter_31_N_33_5, Q0=>counter_5);
    SLICE_14I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_4, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_4, DI0=>counter_31_N_33_3, A0=>counter_3, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n262, M0=>'X', CE=>'X', 
                CLK=>clk_in_c, LSR=>n39, FCO=>n263, F1=>counter_31_N_33_4, 
                Q1=>counter_4, F0=>counter_31_N_33_3, Q0=>counter_3);
    SLICE_15I: SCCU2C
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"INV", 
                   CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA00", INIT1_INITVAL=>X"AA00", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', A1=>counter_2, B1=>'X', C1=>'X', D1=>'1', 
                DI1=>counter_31_N_33_2, DI0=>counter_31_N_33_1, A0=>counter_1, 
                B0=>'X', C0=>'X', D0=>'1', FCI=>n261, M0=>'X', CE=>'X', 
                CLK=>clk_in_c, LSR=>n39, FCO=>n262, F1=>counter_31_N_33_2, 
                Q1=>counter_2, F0=>counter_31_N_33_1, Q0=>counter_1);
    SLICE_16I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"55FF")
      port map (M1=>'X', A1=>counter_0, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n261, 
                F1=>counter_31_N_33_0, Q1=>open, F0=>open, Q0=>open);
    SLICE_17I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"55FF", INIT1_INITVAL=>X"0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>counter_31, B0=>'X', C0=>'X', D0=>'1', FCI=>n260, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, F1=>n39, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_18I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_30, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_29, B0=>'X', C0=>'X', D0=>'1', FCI=>n259, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n260, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_19I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_28, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_27, B0=>'X', C0=>'X', D0=>'1', FCI=>n258, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n259, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_20I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_26, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_25, B0=>'X', C0=>'X', D0=>'1', FCI=>n257, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n258, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_21I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_24, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_23, B0=>'X', C0=>'X', D0=>'1', FCI=>n256, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n257, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_22I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_22, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_21, B0=>'X', C0=>'X', D0=>'1', FCI=>n255, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n256, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_23I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_20, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_19, B0=>'X', C0=>'X', D0=>'1', FCI=>n254, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n255, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_24I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_18, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_17, B0=>'X', C0=>'X', D0=>'1', FCI=>n253, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n254, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_25I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_16, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_15, B0=>'X', C0=>'X', D0=>'1', FCI=>n252, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n253, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_26I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_14, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_13, B0=>'X', C0=>'X', D0=>'1', FCI=>n251, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n252, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_27I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_12, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_11, B0=>'X', C0=>'X', D0=>'1', FCI=>n250, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n251, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_28I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_10, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_9, B0=>'X', C0=>'X', D0=>'1', FCI=>n249, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n250, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_29I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_8, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_7, B0=>'X', C0=>'X', D0=>'1', FCI=>n248, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n249, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_30I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_6, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_5, B0=>'X', C0=>'X', D0=>'1', FCI=>n247, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n248, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_31I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5555", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_4, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_3, B0=>'X', C0=>'X', D0=>'1', FCI=>n246, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n247, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_32I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AA55", INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>counter_2, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>counter_1, B0=>'X', C0=>'X', D0=>'1', FCI=>n245, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n246, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_33I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"0000", INIT1_INITVAL=>X"AAFF")
      port map (M1=>'X', A1=>counter_0, B1=>'X', C1=>'X', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>n245, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    uut_SLICE_34I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"9999", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>uut_clk_out_N_66, A0=>clk_out_c, 
                B0=>n39, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>clk_in_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>uut_clk_out_N_66, Q0=>clk_out_c);
    uut_SLICE_35I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", REG0_REGSET=>"SET", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"8888", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>uut_counter_31_N_1_0, 
                A0=>counter_31_N_33_0, B0=>n39, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>clk_in_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>uut_counter_31_N_1_0, Q0=>counter_0);
    resetI: resetB
      port map (PADDI=>reset_c, resetS=>reset);
    clk_inI: clk_inB
      port map (PADDI=>clk_in_c, clkin=>clk_in);
    clk_outI: clk_outB
      port map (PADDO=>clk_out_c, clkout=>clk_out);
    GSR_INST: GSR_INSTB
      port map (GSRNET=>reset_c);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
  end Structure;



  library IEEE, vital2000, ECP5U;
  configuration Structure_CON of Tb_clock_divider is
    for Structure
    end for;
  end Structure_CON;


