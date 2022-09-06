-- VHDL netlist produced by program ldbanno, Version Diamond Version 3.5.0.102

-- ldbanno -n VHDL -o HyperRAM_hyperram_vho.vho -w -neg -gui -msgset C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/promote.xml HyperRAM_hyperram.ncd 
-- Netlist created on Mon Jul 04 10:08:39 2022
-- Netlist written on Mon Jul 04 10:18:20 2022
-- Design is for device LFE5U-25F
-- Design is for package CSFBGA285
-- Design is for performance grade 6

-- entity sapiobuf
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf is
    port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
          PAD: out Std_logic; PADI: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf : ENTITY IS TRUE;

  end sapiobuf;

  architecture Structure of sapiobuf is
  begin
    INST1: IBPD
      port map (I=>PADI, O=>Z);
    INST2: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity inverter
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity inverter is
    port (I: in Std_logic; Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF inverter : ENTITY IS TRUE;

  end inverter;

  architecture Structure of inverter is
  begin
    INST1: INV
      port map (A=>I, Z=>Z);
  end Structure;

-- entity DQ_test_4_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest4  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest4	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest4	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest4 	: VitalDelayType := 0 ns;
      tpw_DQtest4_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest4_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest4_DQtest4	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest4: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_4_B : ENTITY IS TRUE;

  end DQ_test_4_B;

  architecture Structure of DQ_test_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest4_ipd 	: std_logic := 'X';
    signal DQtest4_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_4: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest4_out, 
                PADI=>DQtest4_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest4_ipd, DQtest4, tipd_DQtest4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest4_ipd, 
      DQtest4_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest4_zd         	: std_logic := 'X';
    VARIABLE DQtest4_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest4_DQtest4          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest4_ipd,
        TestSignalName => "DQtest4",
        Period => tperiod_DQtest4,
        PulseWidthHigh => tpw_DQtest4_posedge,
        PulseWidthLow => tpw_DQtest4_negedge,
        PeriodData => periodcheckinfo_DQtest4,
        Violation => tviol_DQtest4_DQtest4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest4_zd 	:= DQtest4_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest4_ipd'last_event,
                           PathDelay => tpd_DQtest4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest4, OutSignalName => "DQtest4", OutTemp => DQtest4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest4,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest4,
                           PathCondition => TRUE)),
      GlitchData => DQtest4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_5_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_5_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest5  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest5	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest5	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest5_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest5 	: VitalDelayType := 0 ns;
      tpw_DQtest5_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest5_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest5_DQtest5	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest5: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_5_B : ENTITY IS TRUE;

  end DQ_test_5_B;

  architecture Structure of DQ_test_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest5_ipd 	: std_logic := 'X';
    signal DQtest5_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_5: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest5_out, 
                PADI=>DQtest5_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest5_ipd, DQtest5, tipd_DQtest5);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest5_ipd, 
      DQtest5_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest5_zd         	: std_logic := 'X';
    VARIABLE DQtest5_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest5_DQtest5          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest5	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest5_ipd,
        TestSignalName => "DQtest5",
        Period => tperiod_DQtest5,
        PulseWidthHigh => tpw_DQtest5_posedge,
        PulseWidthLow => tpw_DQtest5_negedge,
        PeriodData => periodcheckinfo_DQtest5,
        Violation => tviol_DQtest5_DQtest5,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest5_zd 	:= DQtest5_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest5_ipd'last_event,
                           PathDelay => tpd_DQtest5_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest5, OutSignalName => "DQtest5", OutTemp => DQtest5_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest5,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest5,
                           PathCondition => TRUE)),
      GlitchData => DQtest5_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_6_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_6_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest6  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest6	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest6	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest6_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest6 	: VitalDelayType := 0 ns;
      tpw_DQtest6_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest6_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest6_DQtest6	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest6: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_6_B : ENTITY IS TRUE;

  end DQ_test_6_B;

  architecture Structure of DQ_test_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest6_ipd 	: std_logic := 'X';
    signal DQtest6_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_6: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest6_out, 
                PADI=>DQtest6_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest6_ipd, DQtest6, tipd_DQtest6);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest6_ipd, 
      DQtest6_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest6_zd         	: std_logic := 'X';
    VARIABLE DQtest6_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest6_DQtest6          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest6	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest6_ipd,
        TestSignalName => "DQtest6",
        Period => tperiod_DQtest6,
        PulseWidthHigh => tpw_DQtest6_posedge,
        PulseWidthLow => tpw_DQtest6_negedge,
        PeriodData => periodcheckinfo_DQtest6,
        Violation => tviol_DQtest6_DQtest6,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest6_zd 	:= DQtest6_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest6_ipd'last_event,
                           PathDelay => tpd_DQtest6_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest6, OutSignalName => "DQtest6", OutTemp => DQtest6_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest6,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest6,
                           PathCondition => TRUE)),
      GlitchData => DQtest6_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_7_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_7_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest7  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest7	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest7	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest7_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest7 	: VitalDelayType := 0 ns;
      tpw_DQtest7_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest7_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest7_DQtest7	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest7: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_7_B : ENTITY IS TRUE;

  end DQ_test_7_B;

  architecture Structure of DQ_test_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest7_ipd 	: std_logic := 'X';
    signal DQtest7_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_7: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest7_out, 
                PADI=>DQtest7_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest7_ipd, DQtest7, tipd_DQtest7);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest7_ipd, 
      DQtest7_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest7_zd         	: std_logic := 'X';
    VARIABLE DQtest7_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest7_DQtest7          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest7	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest7_ipd,
        TestSignalName => "DQtest7",
        Period => tperiod_DQtest7,
        PulseWidthHigh => tpw_DQtest7_posedge,
        PulseWidthLow => tpw_DQtest7_negedge,
        PeriodData => periodcheckinfo_DQtest7,
        Violation => tviol_DQtest7_DQtest7,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest7_zd 	:= DQtest7_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest7_ipd'last_event,
                           PathDelay => tpd_DQtest7_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest7, OutSignalName => "DQtest7", OutTemp => DQtest7_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest7,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest7,
                           PathCondition => TRUE)),
      GlitchData => DQtest7_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_8_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_8_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_8_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest8  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest8	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest8	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest8_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest8 	: VitalDelayType := 0 ns;
      tpw_DQtest8_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest8_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest8_DQtest8	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest8: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_8_B : ENTITY IS TRUE;

  end DQ_test_8_B;

  architecture Structure of DQ_test_8_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest8_ipd 	: std_logic := 'X';
    signal DQtest8_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_8: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest8_out, 
                PADI=>DQtest8_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest8_ipd, DQtest8, tipd_DQtest8);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest8_ipd, 
      DQtest8_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest8_zd         	: std_logic := 'X';
    VARIABLE DQtest8_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest8_DQtest8          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest8	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest8_ipd,
        TestSignalName => "DQtest8",
        Period => tperiod_DQtest8,
        PulseWidthHigh => tpw_DQtest8_posedge,
        PulseWidthLow => tpw_DQtest8_negedge,
        PeriodData => periodcheckinfo_DQtest8,
        Violation => tviol_DQtest8_DQtest8,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest8_zd 	:= DQtest8_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest8_ipd'last_event,
                           PathDelay => tpd_DQtest8_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest8, OutSignalName => "DQtest8", OutTemp => DQtest8_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest8,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest8,
                           PathCondition => TRUE)),
      GlitchData => DQtest8_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_9_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_9_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_9_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest9  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest9	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest9	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest9_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest9 	: VitalDelayType := 0 ns;
      tpw_DQtest9_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest9_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest9_DQtest9	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest9: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_9_B : ENTITY IS TRUE;

  end DQ_test_9_B;

  architecture Structure of DQ_test_9_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest9_ipd 	: std_logic := 'X';
    signal DQtest9_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_9: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest9_out, 
                PADI=>DQtest9_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest9_ipd, DQtest9, tipd_DQtest9);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest9_ipd, 
      DQtest9_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest9_zd         	: std_logic := 'X';
    VARIABLE DQtest9_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest9_DQtest9          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest9	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest9_ipd,
        TestSignalName => "DQtest9",
        Period => tperiod_DQtest9,
        PulseWidthHigh => tpw_DQtest9_posedge,
        PulseWidthLow => tpw_DQtest9_negedge,
        PeriodData => periodcheckinfo_DQtest9,
        Violation => tviol_DQtest9_DQtest9,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest9_zd 	:= DQtest9_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest9_ipd'last_event,
                           PathDelay => tpd_DQtest9_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest9, OutSignalName => "DQtest9", OutTemp => DQtest9_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest9,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest9,
                           PathCondition => TRUE)),
      GlitchData => DQtest9_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_10_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_10_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_10_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest10  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest10	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest10	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest10_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest10 	: VitalDelayType := 0 ns;
      tpw_DQtest10_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest10_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest10_DQtest10	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest10: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_10_B : ENTITY IS TRUE;

  end DQ_test_10_B;

  architecture Structure of DQ_test_10_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest10_ipd 	: std_logic := 'X';
    signal DQtest10_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_10: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest10_out, 
                PADI=>DQtest10_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest10_ipd, DQtest10, tipd_DQtest10);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest10_ipd, 
      DQtest10_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest10_zd         	: std_logic := 'X';
    VARIABLE DQtest10_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest10_DQtest10          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest10	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest10_ipd,
        TestSignalName => "DQtest10",
        Period => tperiod_DQtest10,
        PulseWidthHigh => tpw_DQtest10_posedge,
        PulseWidthLow => tpw_DQtest10_negedge,
        PeriodData => periodcheckinfo_DQtest10,
        Violation => tviol_DQtest10_DQtest10,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest10_zd 	:= DQtest10_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest10_ipd'last_event,
                           PathDelay => tpd_DQtest10_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest10, OutSignalName => "DQtest10", OutTemp => DQtest10_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest10,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest10,
                           PathCondition => TRUE)),
      GlitchData => DQtest10_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_11_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_11_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_11_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest11  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest11	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest11	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest11_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest11 	: VitalDelayType := 0 ns;
      tpw_DQtest11_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest11_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest11_DQtest11	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest11: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_11_B : ENTITY IS TRUE;

  end DQ_test_11_B;

  architecture Structure of DQ_test_11_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest11_ipd 	: std_logic := 'X';
    signal DQtest11_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_11: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest11_out, 
                PADI=>DQtest11_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest11_ipd, DQtest11, tipd_DQtest11);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest11_ipd, 
      DQtest11_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest11_zd         	: std_logic := 'X';
    VARIABLE DQtest11_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest11_DQtest11          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest11	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest11_ipd,
        TestSignalName => "DQtest11",
        Period => tperiod_DQtest11,
        PulseWidthHigh => tpw_DQtest11_posedge,
        PulseWidthLow => tpw_DQtest11_negedge,
        PeriodData => periodcheckinfo_DQtest11,
        Violation => tviol_DQtest11_DQtest11,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest11_zd 	:= DQtest11_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest11_ipd'last_event,
                           PathDelay => tpd_DQtest11_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest11, OutSignalName => "DQtest11", OutTemp => DQtest11_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest11,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest11,
                           PathCondition => TRUE)),
      GlitchData => DQtest11_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0001
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0001 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0001 : ENTITY IS TRUE;

  end sapiobuf0001;

  architecture Structure of sapiobuf0001 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity reset_testB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity reset_testB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "reset_testB";

      tipd_resettest  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_resettest_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_resettest 	: VitalDelayType := 0 ns;
      tpw_resettest_posedge	: VitalDelayType := 0 ns;
      tpw_resettest_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; resettest: in Std_logic);

    ATTRIBUTE Vital_Level0 OF reset_testB : ENTITY IS TRUE;

  end reset_testB;

  architecture Structure of reset_testB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal resettest_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    reset_test_pad: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>resettest_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(resettest_ipd, resettest, tipd_resettest);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, resettest_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_resettest_resettest          	: x01 := '0';
    VARIABLE periodcheckinfo_resettest	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => resettest_ipd,
        TestSignalName => "resettest",
        Period => tperiod_resettest,
        PulseWidthHigh => tpw_resettest_posedge,
        PulseWidthLow => tpw_resettest_negedge,
        PeriodData => periodcheckinfo_resettest,
        Violation => tviol_resettest_resettest,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => resettest_ipd'last_event,
                           PathDelay => tpd_resettest_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_12_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_12_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_12_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest12  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest12	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest12	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest12_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest12 	: VitalDelayType := 0 ns;
      tpw_DQtest12_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest12_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest12_DQtest12	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest12: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_12_B : ENTITY IS TRUE;

  end DQ_test_12_B;

  architecture Structure of DQ_test_12_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest12_ipd 	: std_logic := 'X';
    signal DQtest12_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_12: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest12_out, 
                PADI=>DQtest12_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest12_ipd, DQtest12, tipd_DQtest12);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest12_ipd, 
      DQtest12_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest12_zd         	: std_logic := 'X';
    VARIABLE DQtest12_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest12_DQtest12          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest12	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest12_ipd,
        TestSignalName => "DQtest12",
        Period => tperiod_DQtest12,
        PulseWidthHigh => tpw_DQtest12_posedge,
        PulseWidthLow => tpw_DQtest12_negedge,
        PeriodData => periodcheckinfo_DQtest12,
        Violation => tviol_DQtest12_DQtest12,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest12_zd 	:= DQtest12_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest12_ipd'last_event,
                           PathDelay => tpd_DQtest12_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest12, OutSignalName => "DQtest12", OutTemp => DQtest12_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest12,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest12,
                           PathCondition => TRUE)),
      GlitchData => DQtest12_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity clk_in_testB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity clk_in_testB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "clk_in_testB";

      tipd_clkintest  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_clkintest_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_clkintest 	: VitalDelayType := 0 ns;
      tpw_clkintest_posedge	: VitalDelayType := 0 ns;
      tpw_clkintest_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; clkintest: in Std_logic);

    ATTRIBUTE Vital_Level0 OF clk_in_testB : ENTITY IS TRUE;

  end clk_in_testB;

  architecture Structure of clk_in_testB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal clkintest_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    clk_in_test_pad: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>clkintest_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(clkintest_ipd, clkintest, tipd_clkintest);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, clkintest_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_clkintest_clkintest          	: x01 := '0';
    VARIABLE periodcheckinfo_clkintest	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => clkintest_ipd,
        TestSignalName => "clkintest",
        Period => tperiod_clkintest,
        PulseWidthHigh => tpw_clkintest_posedge,
        PulseWidthLow => tpw_clkintest_negedge,
        PeriodData => periodcheckinfo_clkintest,
        Violation => tviol_clkintest_clkintest,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => clkintest_ipd'last_event,
                           PathDelay => tpd_clkintest_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0002
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0002 is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0002 : ENTITY IS TRUE;

  end sapiobuf0002;

  architecture Structure of sapiobuf0002 is
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
  end Structure;

-- entity gnd
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity ready_testB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity ready_testB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ready_testB");

    port (readytest: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ready_testB : ENTITY IS TRUE;

  end ready_testB;

  architecture Structure of ready_testB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal readytest_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    ready_test_pad: sapiobuf0002
      port map (I=>GNDI, PAD=>readytest_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (readytest_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    readytest 	<= readytest_out;


    END PROCESS;

  end Structure;

-- entity DQ_test_13_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_13_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_13_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest13  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest13	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest13	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest13_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest13 	: VitalDelayType := 0 ns;
      tpw_DQtest13_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest13_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest13_DQtest13	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest13: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_13_B : ENTITY IS TRUE;

  end DQ_test_13_B;

  architecture Structure of DQ_test_13_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest13_ipd 	: std_logic := 'X';
    signal DQtest13_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_13: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest13_out, 
                PADI=>DQtest13_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest13_ipd, DQtest13, tipd_DQtest13);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest13_ipd, 
      DQtest13_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest13_zd         	: std_logic := 'X';
    VARIABLE DQtest13_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest13_DQtest13          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest13	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest13_ipd,
        TestSignalName => "DQtest13",
        Period => tperiod_DQtest13,
        PulseWidthHigh => tpw_DQtest13_posedge,
        PulseWidthLow => tpw_DQtest13_negedge,
        PeriodData => periodcheckinfo_DQtest13,
        Violation => tviol_DQtest13_DQtest13,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest13_zd 	:= DQtest13_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest13_ipd'last_event,
                           PathDelay => tpd_DQtest13_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest13, OutSignalName => "DQtest13", OutTemp => DQtest13_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest13,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest13,
                           PathCondition => TRUE)),
      GlitchData => DQtest13_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity CS_n_testB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity CS_n_testB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "CS_n_testB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_CSntest	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; CSntest: out Std_logic);

    ATTRIBUTE Vital_Level0 OF CS_n_testB : ENTITY IS TRUE;

  end CS_n_testB;

  architecture Structure of CS_n_testB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal CSntest_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    CS_n_test_pad: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>CSntest_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, CSntest_out)
    VARIABLE CSntest_zd         	: std_logic := 'X';
    VARIABLE CSntest_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    CSntest_zd 	:= CSntest_out;

    VitalPathDelay01 (
      OutSignal => CSntest, OutSignalName => "CSntest", OutTemp => CSntest_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_CSntest,
                           PathCondition => TRUE)),
      GlitchData => CSntest_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity estado_testB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity estado_testB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "estado_testB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_estadotest	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; estadotest: out Std_logic);

    ATTRIBUTE Vital_Level0 OF estado_testB : ENTITY IS TRUE;

  end estado_testB;

  architecture Structure of estado_testB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal estadotest_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    estado_test_pad: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>estadotest_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, estadotest_out)
    VARIABLE estadotest_zd         	: std_logic := 'X';
    VARIABLE estadotest_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    estadotest_zd 	:= estadotest_out;

    VitalPathDelay01 (

        OutSignal => estadotest, OutSignalName => "estadotest", OutTemp => estadotest_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_estadotest,
                           PathCondition => TRUE)),
      GlitchData => estadotest_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_14_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_14_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_14_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest14  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest14	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest14	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest14_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest14 	: VitalDelayType := 0 ns;
      tpw_DQtest14_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest14_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest14_DQtest14	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest14: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_14_B : ENTITY IS TRUE;

  end DQ_test_14_B;

  architecture Structure of DQ_test_14_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest14_ipd 	: std_logic := 'X';
    signal DQtest14_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_14: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest14_out, 
                PADI=>DQtest14_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest14_ipd, DQtest14, tipd_DQtest14);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest14_ipd, 
      DQtest14_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest14_zd         	: std_logic := 'X';
    VARIABLE DQtest14_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest14_DQtest14          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest14	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest14_ipd,
        TestSignalName => "DQtest14",
        Period => tperiod_DQtest14,
        PulseWidthHigh => tpw_DQtest14_posedge,
        PulseWidthLow => tpw_DQtest14_negedge,
        PeriodData => periodcheckinfo_DQtest14,
        Violation => tviol_DQtest14_DQtest14,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest14_zd 	:= DQtest14_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest14_ipd'last_event,
                           PathDelay => tpd_DQtest14_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest14, OutSignalName => "DQtest14", OutTemp => DQtest14_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest14,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest14,
                           PathCondition => TRUE)),
      GlitchData => DQtest14_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity clk_out_testB
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity clk_out_testB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "clk_out_testB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_clkouttest	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; clkouttest: out Std_logic);

    ATTRIBUTE Vital_Level0 OF clk_out_testB : ENTITY IS TRUE;

  end clk_out_testB;

  architecture Structure of clk_out_testB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal clkouttest_out 	: std_logic := 'X';

    component sapiobuf0002
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    clk_out_test_pad: sapiobuf0002
      port map (I=>PADDO_ipd, PAD=>clkouttest_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, clkouttest_out)
    VARIABLE clkouttest_zd         	: std_logic := 'X';
    VARIABLE clkouttest_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    clkouttest_zd 	:= clkouttest_out;

    VitalPathDelay01 (

        OutSignal => clkouttest, OutSignalName => "clkouttest", OutTemp => clkouttest_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_clkouttest,
                           PathCondition => TRUE)),
      GlitchData => clkouttest_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_15_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_15_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_15_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest15  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest15	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest15	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest15_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest15 	: VitalDelayType := 0 ns;
      tpw_DQtest15_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest15_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest15_DQtest15	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest15: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_15_B : ENTITY IS TRUE;

  end DQ_test_15_B;

  architecture Structure of DQ_test_15_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest15_ipd 	: std_logic := 'X';
    signal DQtest15_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_15: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest15_out, 
                PADI=>DQtest15_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest15_ipd, DQtest15, tipd_DQtest15);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest15_ipd, 
      DQtest15_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest15_zd         	: std_logic := 'X';
    VARIABLE DQtest15_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest15_DQtest15          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest15	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest15_ipd,
        TestSignalName => "DQtest15",
        Period => tperiod_DQtest15,
        PulseWidthHigh => tpw_DQtest15_posedge,
        PulseWidthLow => tpw_DQtest15_negedge,
        PeriodData => periodcheckinfo_DQtest15,
        Violation => tviol_DQtest15_DQtest15,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest15_zd 	:= DQtest15_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest15_ipd'last_event,
                           PathDelay => tpd_DQtest15_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest15, OutSignalName => "DQtest15", OutTemp => DQtest15_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest15,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest15,
                           PathCondition => TRUE)),
      GlitchData => DQtest15_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_0_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest0  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest0	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest0	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest0 	: VitalDelayType := 0 ns;
      tpw_DQtest0_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest0_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest0_DQtest0	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest0: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_0_B : ENTITY IS TRUE;

  end DQ_test_0_B;

  architecture Structure of DQ_test_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest0_ipd 	: std_logic := 'X';
    signal DQtest0_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_0: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest0_out, 
                PADI=>DQtest0_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest0_ipd, DQtest0, tipd_DQtest0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest0_ipd, 
      DQtest0_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest0_zd         	: std_logic := 'X';
    VARIABLE DQtest0_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest0_DQtest0          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest0_ipd,
        TestSignalName => "DQtest0",
        Period => tperiod_DQtest0,
        PulseWidthHigh => tpw_DQtest0_posedge,
        PulseWidthLow => tpw_DQtest0_negedge,
        PeriodData => periodcheckinfo_DQtest0,
        Violation => tviol_DQtest0_DQtest0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest0_zd 	:= DQtest0_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest0_ipd'last_event,
                           PathDelay => tpd_DQtest0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest0, OutSignalName => "DQtest0", OutTemp => DQtest0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest0,
                           PathCondition => TRUE)),
      GlitchData => DQtest0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_16_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_16_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_16_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest16  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest16	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest16	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest16_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest16 	: VitalDelayType := 0 ns;
      tpw_DQtest16_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest16_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest16_DQtest16	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest16: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_16_B : ENTITY IS TRUE;

  end DQ_test_16_B;

  architecture Structure of DQ_test_16_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest16_ipd 	: std_logic := 'X';
    signal DQtest16_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_16: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest16_out, 
                PADI=>DQtest16_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest16_ipd, DQtest16, tipd_DQtest16);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest16_ipd, 
      DQtest16_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest16_zd         	: std_logic := 'X';
    VARIABLE DQtest16_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest16_DQtest16          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest16	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest16_ipd,
        TestSignalName => "DQtest16",
        Period => tperiod_DQtest16,
        PulseWidthHigh => tpw_DQtest16_posedge,
        PulseWidthLow => tpw_DQtest16_negedge,
        PeriodData => periodcheckinfo_DQtest16,
        Violation => tviol_DQtest16_DQtest16,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest16_zd 	:= DQtest16_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest16_ipd'last_event,
                           PathDelay => tpd_DQtest16_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest16, OutSignalName => "DQtest16", OutTemp => DQtest16_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest16,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest16,
                           PathCondition => TRUE)),
      GlitchData => DQtest16_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_1_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest1  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest1	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest1	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest1 	: VitalDelayType := 0 ns;
      tpw_DQtest1_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest1_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest1_DQtest1	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest1: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_1_B : ENTITY IS TRUE;

  end DQ_test_1_B;

  architecture Structure of DQ_test_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest1_ipd 	: std_logic := 'X';
    signal DQtest1_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_1: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest1_out, 
                PADI=>DQtest1_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest1_ipd, DQtest1, tipd_DQtest1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest1_ipd, 
      DQtest1_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest1_zd         	: std_logic := 'X';
    VARIABLE DQtest1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest1_DQtest1          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest1_ipd,
        TestSignalName => "DQtest1",
        Period => tperiod_DQtest1,
        PulseWidthHigh => tpw_DQtest1_posedge,
        PulseWidthLow => tpw_DQtest1_negedge,
        PeriodData => periodcheckinfo_DQtest1,
        Violation => tviol_DQtest1_DQtest1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest1_zd 	:= DQtest1_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest1_ipd'last_event,
                           PathDelay => tpd_DQtest1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest1, OutSignalName => "DQtest1", OutTemp => DQtest1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest1,
                           PathCondition => TRUE)),
      GlitchData => DQtest1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_17_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_17_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_17_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest17  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest17	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest17	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest17_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest17 	: VitalDelayType := 0 ns;
      tpw_DQtest17_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest17_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest17_DQtest17	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest17: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_17_B : ENTITY IS TRUE;

  end DQ_test_17_B;

  architecture Structure of DQ_test_17_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest17_ipd 	: std_logic := 'X';
    signal DQtest17_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_17: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest17_out, 
                PADI=>DQtest17_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest17_ipd, DQtest17, tipd_DQtest17);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest17_ipd, 
      DQtest17_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest17_zd         	: std_logic := 'X';
    VARIABLE DQtest17_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest17_DQtest17          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest17	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest17_ipd,
        TestSignalName => "DQtest17",
        Period => tperiod_DQtest17,
        PulseWidthHigh => tpw_DQtest17_posedge,
        PulseWidthLow => tpw_DQtest17_negedge,
        PeriodData => periodcheckinfo_DQtest17,
        Violation => tviol_DQtest17_DQtest17,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest17_zd 	:= DQtest17_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest17_ipd'last_event,
                           PathDelay => tpd_DQtest17_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest17, OutSignalName => "DQtest17", OutTemp => DQtest17_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest17,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest17,
                           PathCondition => TRUE)),
      GlitchData => DQtest17_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_2_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest2  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest2	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest2	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest2 	: VitalDelayType := 0 ns;
      tpw_DQtest2_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest2_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest2_DQtest2	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest2: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_2_B : ENTITY IS TRUE;

  end DQ_test_2_B;

  architecture Structure of DQ_test_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest2_ipd 	: std_logic := 'X';
    signal DQtest2_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_2: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest2_out, 
                PADI=>DQtest2_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest2_ipd, DQtest2, tipd_DQtest2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest2_ipd, 
      DQtest2_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest2_zd         	: std_logic := 'X';
    VARIABLE DQtest2_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest2_DQtest2          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest2_ipd,
        TestSignalName => "DQtest2",
        Period => tperiod_DQtest2,
        PulseWidthHigh => tpw_DQtest2_posedge,
        PulseWidthLow => tpw_DQtest2_negedge,
        PeriodData => periodcheckinfo_DQtest2,
        Violation => tviol_DQtest2_DQtest2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest2_zd 	:= DQtest2_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest2_ipd'last_event,
                           PathDelay => tpd_DQtest2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest2, OutSignalName => "DQtest2", OutTemp => DQtest2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest2,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest2,
                           PathCondition => TRUE)),
      GlitchData => DQtest2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_18_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_18_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_18_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest18  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest18	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest18	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest18_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest18 	: VitalDelayType := 0 ns;
      tpw_DQtest18_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest18_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest18_DQtest18	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest18: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_18_B : ENTITY IS TRUE;

  end DQ_test_18_B;

  architecture Structure of DQ_test_18_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest18_ipd 	: std_logic := 'X';
    signal DQtest18_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_18: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest18_out, 
                PADI=>DQtest18_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest18_ipd, DQtest18, tipd_DQtest18);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest18_ipd, 
      DQtest18_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest18_zd         	: std_logic := 'X';
    VARIABLE DQtest18_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest18_DQtest18          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest18	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest18_ipd,
        TestSignalName => "DQtest18",
        Period => tperiod_DQtest18,
        PulseWidthHigh => tpw_DQtest18_posedge,
        PulseWidthLow => tpw_DQtest18_negedge,
        PeriodData => periodcheckinfo_DQtest18,
        Violation => tviol_DQtest18_DQtest18,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest18_zd 	:= DQtest18_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest18_ipd'last_event,
                           PathDelay => tpd_DQtest18_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest18, OutSignalName => "DQtest18", OutTemp => DQtest18_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest18,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest18,
                           PathCondition => TRUE)),
      GlitchData => DQtest18_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_3_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest3  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest3	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest3	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest3 	: VitalDelayType := 0 ns;
      tpw_DQtest3_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest3_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest3_DQtest3	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest3: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_3_B : ENTITY IS TRUE;

  end DQ_test_3_B;

  architecture Structure of DQ_test_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest3_ipd 	: std_logic := 'X';
    signal DQtest3_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_3: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest3_out, 
                PADI=>DQtest3_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest3_ipd, DQtest3, tipd_DQtest3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest3_ipd, 
      DQtest3_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest3_zd         	: std_logic := 'X';
    VARIABLE DQtest3_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest3_DQtest3          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest3_ipd,
        TestSignalName => "DQtest3",
        Period => tperiod_DQtest3,
        PulseWidthHigh => tpw_DQtest3_posedge,
        PulseWidthLow => tpw_DQtest3_negedge,
        PeriodData => periodcheckinfo_DQtest3,
        Violation => tviol_DQtest3_DQtest3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest3_zd 	:= DQtest3_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest3_ipd'last_event,
                           PathDelay => tpd_DQtest3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest3, OutSignalName => "DQtest3", OutTemp => DQtest3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest3,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest3,
                           PathCondition => TRUE)),
      GlitchData => DQtest3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_19_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_19_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_19_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest19  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest19	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest19	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest19_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest19 	: VitalDelayType := 0 ns;
      tpw_DQtest19_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest19_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest19_DQtest19	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest19: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_19_B : ENTITY IS TRUE;

  end DQ_test_19_B;

  architecture Structure of DQ_test_19_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest19_ipd 	: std_logic := 'X';
    signal DQtest19_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_19: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest19_out, 
                PADI=>DQtest19_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest19_ipd, DQtest19, tipd_DQtest19);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest19_ipd, 
      DQtest19_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest19_zd         	: std_logic := 'X';
    VARIABLE DQtest19_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest19_DQtest19          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest19	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest19_ipd,
        TestSignalName => "DQtest19",
        Period => tperiod_DQtest19,
        PulseWidthHigh => tpw_DQtest19_posedge,
        PulseWidthLow => tpw_DQtest19_negedge,
        PeriodData => periodcheckinfo_DQtest19,
        Violation => tviol_DQtest19_DQtest19,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest19_zd 	:= DQtest19_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest19_ipd'last_event,
                           PathDelay => tpd_DQtest19_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest19, OutSignalName => "DQtest19", OutTemp => DQtest19_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest19,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest19,
                           PathCondition => TRUE)),
      GlitchData => DQtest19_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_20_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_20_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_20_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest20  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest20	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest20	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest20_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest20 	: VitalDelayType := 0 ns;
      tpw_DQtest20_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest20_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest20_DQtest20	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest20: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_20_B : ENTITY IS TRUE;

  end DQ_test_20_B;

  architecture Structure of DQ_test_20_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest20_ipd 	: std_logic := 'X';
    signal DQtest20_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_20: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest20_out, 
                PADI=>DQtest20_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest20_ipd, DQtest20, tipd_DQtest20);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest20_ipd, 
      DQtest20_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest20_zd         	: std_logic := 'X';
    VARIABLE DQtest20_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest20_DQtest20          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest20	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest20_ipd,
        TestSignalName => "DQtest20",
        Period => tperiod_DQtest20,
        PulseWidthHigh => tpw_DQtest20_posedge,
        PulseWidthLow => tpw_DQtest20_negedge,
        PeriodData => periodcheckinfo_DQtest20,
        Violation => tviol_DQtest20_DQtest20,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest20_zd 	:= DQtest20_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest20_ipd'last_event,
                           PathDelay => tpd_DQtest20_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest20, OutSignalName => "DQtest20", OutTemp => DQtest20_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest20,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest20,
                           PathCondition => TRUE)),
      GlitchData => DQtest20_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_21_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_21_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_21_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest21  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest21	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest21	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest21_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest21 	: VitalDelayType := 0 ns;
      tpw_DQtest21_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest21_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest21_DQtest21	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest21: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_21_B : ENTITY IS TRUE;

  end DQ_test_21_B;

  architecture Structure of DQ_test_21_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest21_ipd 	: std_logic := 'X';
    signal DQtest21_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_21: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest21_out, 
                PADI=>DQtest21_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest21_ipd, DQtest21, tipd_DQtest21);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest21_ipd, 
      DQtest21_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest21_zd         	: std_logic := 'X';
    VARIABLE DQtest21_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest21_DQtest21          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest21	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest21_ipd,
        TestSignalName => "DQtest21",
        Period => tperiod_DQtest21,
        PulseWidthHigh => tpw_DQtest21_posedge,
        PulseWidthLow => tpw_DQtest21_negedge,
        PeriodData => periodcheckinfo_DQtest21,
        Violation => tviol_DQtest21_DQtest21,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest21_zd 	:= DQtest21_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest21_ipd'last_event,
                           PathDelay => tpd_DQtest21_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest21, OutSignalName => "DQtest21", OutTemp => DQtest21_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest21,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest21,
                           PathCondition => TRUE)),
      GlitchData => DQtest21_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_22_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_22_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_22_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest22  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest22	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest22	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest22_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest22 	: VitalDelayType := 0 ns;
      tpw_DQtest22_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest22_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest22_DQtest22	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest22: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_22_B : ENTITY IS TRUE;

  end DQ_test_22_B;

  architecture Structure of DQ_test_22_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest22_ipd 	: std_logic := 'X';
    signal DQtest22_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_22: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest22_out, 
                PADI=>DQtest22_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest22_ipd, DQtest22, tipd_DQtest22);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest22_ipd, 
      DQtest22_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest22_zd         	: std_logic := 'X';
    VARIABLE DQtest22_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest22_DQtest22          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest22	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest22_ipd,
        TestSignalName => "DQtest22",
        Period => tperiod_DQtest22,
        PulseWidthHigh => tpw_DQtest22_posedge,
        PulseWidthLow => tpw_DQtest22_negedge,
        PeriodData => periodcheckinfo_DQtest22,
        Violation => tviol_DQtest22_DQtest22,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest22_zd 	:= DQtest22_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest22_ipd'last_event,
                           PathDelay => tpd_DQtest22_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest22, OutSignalName => "DQtest22", OutTemp => DQtest22_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest22,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest22,
                           PathCondition => TRUE)),
      GlitchData => DQtest22_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_23_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_23_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_23_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest23  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest23	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest23	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest23_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest23 	: VitalDelayType := 0 ns;
      tpw_DQtest23_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest23_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest23_DQtest23	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest23: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_23_B : ENTITY IS TRUE;

  end DQ_test_23_B;

  architecture Structure of DQ_test_23_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest23_ipd 	: std_logic := 'X';
    signal DQtest23_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_23: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest23_out, 
                PADI=>DQtest23_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest23_ipd, DQtest23, tipd_DQtest23);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest23_ipd, 
      DQtest23_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest23_zd         	: std_logic := 'X';
    VARIABLE DQtest23_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest23_DQtest23          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest23	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest23_ipd,
        TestSignalName => "DQtest23",
        Period => tperiod_DQtest23,
        PulseWidthHigh => tpw_DQtest23_posedge,
        PulseWidthLow => tpw_DQtest23_negedge,
        PeriodData => periodcheckinfo_DQtest23,
        Violation => tviol_DQtest23_DQtest23,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest23_zd 	:= DQtest23_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest23_ipd'last_event,
                           PathDelay => tpd_DQtest23_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest23, OutSignalName => "DQtest23", OutTemp => DQtest23_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest23,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest23,
                           PathCondition => TRUE)),
      GlitchData => DQtest23_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_24_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_24_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_24_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest24  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest24	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest24	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest24_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest24 	: VitalDelayType := 0 ns;
      tpw_DQtest24_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest24_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest24_DQtest24	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest24: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_24_B : ENTITY IS TRUE;

  end DQ_test_24_B;

  architecture Structure of DQ_test_24_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest24_ipd 	: std_logic := 'X';
    signal DQtest24_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_24: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest24_out, 
                PADI=>DQtest24_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest24_ipd, DQtest24, tipd_DQtest24);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest24_ipd, 
      DQtest24_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest24_zd         	: std_logic := 'X';
    VARIABLE DQtest24_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest24_DQtest24          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest24	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest24_ipd,
        TestSignalName => "DQtest24",
        Period => tperiod_DQtest24,
        PulseWidthHigh => tpw_DQtest24_posedge,
        PulseWidthLow => tpw_DQtest24_negedge,
        PeriodData => periodcheckinfo_DQtest24,
        Violation => tviol_DQtest24_DQtest24,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest24_zd 	:= DQtest24_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest24_ipd'last_event,
                           PathDelay => tpd_DQtest24_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest24, OutSignalName => "DQtest24", OutTemp => DQtest24_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest24,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest24,
                           PathCondition => TRUE)),
      GlitchData => DQtest24_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_25_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_25_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_25_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest25  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest25	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest25	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest25_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest25 	: VitalDelayType := 0 ns;
      tpw_DQtest25_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest25_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest25_DQtest25	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest25: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_25_B : ENTITY IS TRUE;

  end DQ_test_25_B;

  architecture Structure of DQ_test_25_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest25_ipd 	: std_logic := 'X';
    signal DQtest25_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_25: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest25_out, 
                PADI=>DQtest25_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest25_ipd, DQtest25, tipd_DQtest25);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest25_ipd, 
      DQtest25_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest25_zd         	: std_logic := 'X';
    VARIABLE DQtest25_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest25_DQtest25          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest25	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest25_ipd,
        TestSignalName => "DQtest25",
        Period => tperiod_DQtest25,
        PulseWidthHigh => tpw_DQtest25_posedge,
        PulseWidthLow => tpw_DQtest25_negedge,
        PeriodData => periodcheckinfo_DQtest25,
        Violation => tviol_DQtest25_DQtest25,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest25_zd 	:= DQtest25_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest25_ipd'last_event,
                           PathDelay => tpd_DQtest25_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest25, OutSignalName => "DQtest25", OutTemp => DQtest25_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest25,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest25,
                           PathCondition => TRUE)),
      GlitchData => DQtest25_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_26_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_26_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_26_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest26  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest26	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest26	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest26_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest26 	: VitalDelayType := 0 ns;
      tpw_DQtest26_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest26_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest26_DQtest26	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest26: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_26_B : ENTITY IS TRUE;

  end DQ_test_26_B;

  architecture Structure of DQ_test_26_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest26_ipd 	: std_logic := 'X';
    signal DQtest26_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_26: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest26_out, 
                PADI=>DQtest26_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest26_ipd, DQtest26, tipd_DQtest26);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest26_ipd, 
      DQtest26_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest26_zd         	: std_logic := 'X';
    VARIABLE DQtest26_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest26_DQtest26          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest26	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest26_ipd,
        TestSignalName => "DQtest26",
        Period => tperiod_DQtest26,
        PulseWidthHigh => tpw_DQtest26_posedge,
        PulseWidthLow => tpw_DQtest26_negedge,
        PeriodData => periodcheckinfo_DQtest26,
        Violation => tviol_DQtest26_DQtest26,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest26_zd 	:= DQtest26_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest26_ipd'last_event,
                           PathDelay => tpd_DQtest26_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest26, OutSignalName => "DQtest26", OutTemp => DQtest26_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest26,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest26,
                           PathCondition => TRUE)),
      GlitchData => DQtest26_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_27_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_27_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_27_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest27  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest27	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest27	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest27_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest27 	: VitalDelayType := 0 ns;
      tpw_DQtest27_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest27_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest27_DQtest27	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest27: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_27_B : ENTITY IS TRUE;

  end DQ_test_27_B;

  architecture Structure of DQ_test_27_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest27_ipd 	: std_logic := 'X';
    signal DQtest27_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_27: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest27_out, 
                PADI=>DQtest27_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest27_ipd, DQtest27, tipd_DQtest27);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest27_ipd, 
      DQtest27_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest27_zd         	: std_logic := 'X';
    VARIABLE DQtest27_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest27_DQtest27          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest27	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest27_ipd,
        TestSignalName => "DQtest27",
        Period => tperiod_DQtest27,
        PulseWidthHigh => tpw_DQtest27_posedge,
        PulseWidthLow => tpw_DQtest27_negedge,
        PeriodData => periodcheckinfo_DQtest27,
        Violation => tviol_DQtest27_DQtest27,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest27_zd 	:= DQtest27_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest27_ipd'last_event,
                           PathDelay => tpd_DQtest27_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest27, OutSignalName => "DQtest27", OutTemp => DQtest27_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest27,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest27,
                           PathCondition => TRUE)),
      GlitchData => DQtest27_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_28_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_28_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_28_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest28  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest28	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest28	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest28_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest28 	: VitalDelayType := 0 ns;
      tpw_DQtest28_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest28_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest28_DQtest28	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest28: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_28_B : ENTITY IS TRUE;

  end DQ_test_28_B;

  architecture Structure of DQ_test_28_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest28_ipd 	: std_logic := 'X';
    signal DQtest28_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_28: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest28_out, 
                PADI=>DQtest28_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest28_ipd, DQtest28, tipd_DQtest28);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest28_ipd, 
      DQtest28_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest28_zd         	: std_logic := 'X';
    VARIABLE DQtest28_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest28_DQtest28          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest28	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest28_ipd,
        TestSignalName => "DQtest28",
        Period => tperiod_DQtest28,
        PulseWidthHigh => tpw_DQtest28_posedge,
        PulseWidthLow => tpw_DQtest28_negedge,
        PeriodData => periodcheckinfo_DQtest28,
        Violation => tviol_DQtest28_DQtest28,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest28_zd 	:= DQtest28_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest28_ipd'last_event,
                           PathDelay => tpd_DQtest28_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest28, OutSignalName => "DQtest28", OutTemp => DQtest28_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest28,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest28,
                           PathCondition => TRUE)),
      GlitchData => DQtest28_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_29_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_29_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_29_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest29  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest29	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest29	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest29_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest29 	: VitalDelayType := 0 ns;
      tpw_DQtest29_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest29_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest29_DQtest29	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest29: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_29_B : ENTITY IS TRUE;

  end DQ_test_29_B;

  architecture Structure of DQ_test_29_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest29_ipd 	: std_logic := 'X';
    signal DQtest29_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_29: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest29_out, 
                PADI=>DQtest29_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest29_ipd, DQtest29, tipd_DQtest29);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest29_ipd, 
      DQtest29_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest29_zd         	: std_logic := 'X';
    VARIABLE DQtest29_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest29_DQtest29          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest29	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest29_ipd,
        TestSignalName => "DQtest29",
        Period => tperiod_DQtest29,
        PulseWidthHigh => tpw_DQtest29_posedge,
        PulseWidthLow => tpw_DQtest29_negedge,
        PeriodData => periodcheckinfo_DQtest29,
        Violation => tviol_DQtest29_DQtest29,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest29_zd 	:= DQtest29_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest29_ipd'last_event,
                           PathDelay => tpd_DQtest29_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest29, OutSignalName => "DQtest29", OutTemp => DQtest29_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest29,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest29,
                           PathCondition => TRUE)),
      GlitchData => DQtest29_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_30_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_30_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_30_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest30  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest30	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest30	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest30_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest30 	: VitalDelayType := 0 ns;
      tpw_DQtest30_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest30_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest30_DQtest30	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest30: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_30_B : ENTITY IS TRUE;

  end DQ_test_30_B;

  architecture Structure of DQ_test_30_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest30_ipd 	: std_logic := 'X';
    signal DQtest30_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_30: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest30_out, 
                PADI=>DQtest30_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest30_ipd, DQtest30, tipd_DQtest30);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest30_ipd, 
      DQtest30_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest30_zd         	: std_logic := 'X';
    VARIABLE DQtest30_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest30_DQtest30          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest30	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest30_ipd,
        TestSignalName => "DQtest30",
        Period => tperiod_DQtest30,
        PulseWidthHigh => tpw_DQtest30_posedge,
        PulseWidthLow => tpw_DQtest30_negedge,
        PeriodData => periodcheckinfo_DQtest30,
        Violation => tviol_DQtest30_DQtest30,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest30_zd 	:= DQtest30_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest30_ipd'last_event,
                           PathDelay => tpd_DQtest30_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest30, OutSignalName => "DQtest30", OutTemp => DQtest30_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest30,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest30,
                           PathCondition => TRUE)),
      GlitchData => DQtest30_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DQ_test_31_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity DQ_test_31_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "DQ_test_31_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DQtest31  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_DQtest31	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDT_DQtest31	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_DQtest31_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_DQtest31 	: VitalDelayType := 0 ns;
      tpw_DQtest31_posedge	: VitalDelayType := 0 ns;
      tpw_DQtest31_negedge	: VitalDelayType := 0 ns;

        tpd_DQtest31_DQtest31	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
          DQtest31: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF DQ_test_31_B : ENTITY IS TRUE;

  end DQ_test_31_B;

  architecture Structure of DQ_test_31_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal DQtest31_ipd 	: std_logic := 'X';
    signal DQtest31_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component sapiobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    DQ_test_pad_31: sapiobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>DQtest31_out, 
                PADI=>DQtest31_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(DQtest31_ipd, DQtest31, tipd_DQtest31);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDO_ipd, PADDT_ipd, DQtest31_ipd, 
      DQtest31_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE DQtest31_zd         	: std_logic := 'X';
    VARIABLE DQtest31_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DQtest31_DQtest31          	: x01 := '0';
    VARIABLE periodcheckinfo_DQtest31	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => DQtest31_ipd,
        TestSignalName => "DQtest31",
        Period => tperiod_DQtest31,
        PulseWidthHigh => tpw_DQtest31_posedge,
        PulseWidthLow => tpw_DQtest31_negedge,
        PeriodData => periodcheckinfo_DQtest31,
        Violation => tviol_DQtest31_DQtest31,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    DQtest31_zd 	:= DQtest31_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => DQtest31_ipd'last_event,
                           PathDelay => tpd_DQtest31_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => DQtest31, OutSignalName => "DQtest31", OutTemp => DQtest31_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_DQtest31,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_DQtest31,
                           PathCondition => TRUE)),
      GlitchData => DQtest31_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity hyperram_tb
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity hyperram_tb is
    port (clk_in_test: in Std_logic; reset_test: in Std_logic; 
          clk_out_test: out Std_logic; estado_test: out Std_logic; 
          DQ_test: inout Std_logic_vector (31 downto 0); 
          CS_n_test: out Std_logic; ready_test: out Std_logic);



  end hyperram_tb;

  architecture Structure of hyperram_tb is
    signal uut_n717: Std_logic;
    signal uut_n716: Std_logic;
    signal DQ_test_out_1: Std_logic;
    signal state: Std_logic;
    signal DQ_test_out_0: Std_logic;
    signal uut_DQ_31_N_115: Std_logic;
    signal uut_DQ_31_N_116: Std_logic;
    signal reset_test_c: Std_logic;
    signal clk_in_test_c: Std_logic;
    signal DQ_31_N_3_0: Std_logic;
    signal DQ_31_N_3_1: Std_logic;
    signal DQ_test_out_3: Std_logic;
    signal DQ_test_out_2: Std_logic;
    signal uut_DQ_31_N_113: Std_logic;
    signal uut_DQ_31_N_114: Std_logic;
    signal DQ_31_N_3_2: Std_logic;
    signal DQ_31_N_3_3: Std_logic;
    signal uut_DQ_31_N_74: Std_logic;
    signal uut_clk_system_N_71_enable_4: Std_logic;
    signal DQ_test_out_5: Std_logic;
    signal DQ_test_out_4: Std_logic;
    signal uut_DQ_31_N_111: Std_logic;
    signal uut_DQ_31_N_112: Std_logic;
    signal DQ_31_N_3_4: Std_logic;
    signal DQ_31_N_3_5: Std_logic;
    signal DQ_test_out_7: Std_logic;
    signal DQ_test_out_6: Std_logic;
    signal uut_DQ_31_N_109: Std_logic;
    signal uut_DQ_31_N_110: Std_logic;
    signal DQ_31_N_3_6: Std_logic;
    signal DQ_31_N_3_7: Std_logic;
    signal DQ_test_out_9: Std_logic;
    signal DQ_test_out_8: Std_logic;
    signal uut_DQ_31_N_107: Std_logic;
    signal uut_DQ_31_N_108: Std_logic;
    signal DQ_31_N_3_8: Std_logic;
    signal DQ_31_N_3_9: Std_logic;
    signal DQ_test_out_11: Std_logic;
    signal DQ_test_out_10: Std_logic;
    signal uut_DQ_31_N_105: Std_logic;
    signal uut_DQ_31_N_106: Std_logic;
    signal DQ_31_N_3_10: Std_logic;
    signal DQ_31_N_3_11: Std_logic;
    signal DQ_test_out_13: Std_logic;
    signal DQ_test_out_12: Std_logic;
    signal uut_DQ_31_N_103: Std_logic;
    signal uut_DQ_31_N_104: Std_logic;
    signal DQ_31_N_3_12: Std_logic;
    signal DQ_31_N_3_13: Std_logic;
    signal DQ_test_out_15: Std_logic;
    signal DQ_test_out_14: Std_logic;
    signal uut_DQ_31_N_101: Std_logic;
    signal uut_DQ_31_N_102: Std_logic;
    signal DQ_31_N_3_14: Std_logic;
    signal DQ_31_N_3_15: Std_logic;
    signal DQ_test_out_17: Std_logic;
    signal DQ_test_out_16: Std_logic;
    signal uut_DQ_31_N_99: Std_logic;
    signal uut_DQ_31_N_100: Std_logic;
    signal DQ_31_N_3_16: Std_logic;
    signal DQ_31_N_3_17: Std_logic;
    signal DQ_test_out_19: Std_logic;
    signal DQ_test_out_18: Std_logic;
    signal uut_DQ_31_N_97: Std_logic;
    signal uut_DQ_31_N_98: Std_logic;
    signal DQ_31_N_3_18: Std_logic;
    signal DQ_31_N_3_19: Std_logic;
    signal DQ_test_out_21: Std_logic;
    signal DQ_test_out_20: Std_logic;
    signal uut_DQ_31_N_95: Std_logic;
    signal uut_DQ_31_N_96: Std_logic;
    signal DQ_31_N_3_20: Std_logic;
    signal DQ_31_N_3_21: Std_logic;
    signal DQ_test_out_23: Std_logic;
    signal DQ_test_out_22: Std_logic;
    signal uut_DQ_31_N_93: Std_logic;
    signal uut_DQ_31_N_94: Std_logic;
    signal DQ_31_N_3_22: Std_logic;
    signal DQ_31_N_3_23: Std_logic;
    signal DQ_test_out_25: Std_logic;
    signal DQ_test_out_24: Std_logic;
    signal uut_DQ_31_N_91: Std_logic;
    signal uut_DQ_31_N_92: Std_logic;
    signal DQ_31_N_3_24: Std_logic;
    signal DQ_31_N_3_25: Std_logic;
    signal DQ_test_out_27: Std_logic;
    signal DQ_test_out_26: Std_logic;
    signal uut_DQ_31_N_89: Std_logic;
    signal uut_DQ_31_N_90: Std_logic;
    signal DQ_31_N_3_26: Std_logic;
    signal DQ_31_N_3_27: Std_logic;
    signal DQ_test_out_29: Std_logic;
    signal DQ_test_out_28: Std_logic;
    signal uut_DQ_31_N_87: Std_logic;
    signal uut_DQ_31_N_88: Std_logic;
    signal DQ_31_N_3_28: Std_logic;
    signal DQ_31_N_3_29: Std_logic;
    signal DQ_test_out_31: Std_logic;
    signal DQ_test_out_30: Std_logic;
    signal uut_DQ_31_N_72: Std_logic;
    signal uut_DQ_31_N_86: Std_logic;
    signal DQ_31_N_3_30: Std_logic;
    signal DQ_31_N_3_31: Std_logic;
    signal clk_out_test_c: Std_logic;
    signal uut_clk_out_N_160: Std_logic;
    signal n718: Std_logic;
    signal estado_test_c: Std_logic;
    signal VCC_net: Std_logic;
    signal uut_state_N_81: Std_logic;
    signal uut_byte_counter_2: Std_logic;
    signal uut_byte_counter_1: Std_logic;
    signal uut_byte_counter_0: Std_logic;
    signal uut_DQ_3_N_60: Std_logic;
    signal uut_n641: Std_logic;
    signal uut_n653: Std_logic;
    signal uut_n23: Std_logic;
    signal CS_n_test_c: Std_logic;
    signal VCCI: Std_logic;
    component DQ_test_4_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest4: inout Std_logic);
    end component;
    component DQ_test_5_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest5: inout Std_logic);
    end component;
    component DQ_test_6_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest6: inout Std_logic);
    end component;
    component DQ_test_7_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest7: inout Std_logic);
    end component;
    component DQ_test_8_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest8: inout Std_logic);
    end component;
    component DQ_test_9_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest9: inout Std_logic);
    end component;
    component DQ_test_10_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest10: inout Std_logic);
    end component;
    component DQ_test_11_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest11: inout Std_logic);
    end component;
    component reset_testB
      port (PADDI: out Std_logic; resettest: in Std_logic);
    end component;
    component DQ_test_12_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest12: inout Std_logic);
    end component;
    component clk_in_testB
      port (PADDI: out Std_logic; clkintest: in Std_logic);
    end component;
    component ready_testB
      port (readytest: out Std_logic);
    end component;
    component DQ_test_13_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest13: inout Std_logic);
    end component;
    component CS_n_testB
      port (PADDO: in Std_logic; CSntest: out Std_logic);
    end component;
    component estado_testB
      port (PADDO: in Std_logic; estadotest: out Std_logic);
    end component;
    component DQ_test_14_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest14: inout Std_logic);
    end component;
    component clk_out_testB
      port (PADDO: in Std_logic; clkouttest: out Std_logic);
    end component;
    component DQ_test_15_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest15: inout Std_logic);
    end component;
    component DQ_test_0_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest0: inout Std_logic);
    end component;
    component DQ_test_16_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest16: inout Std_logic);
    end component;
    component DQ_test_1_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest1: inout Std_logic);
    end component;
    component DQ_test_17_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest17: inout Std_logic);
    end component;
    component DQ_test_2_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest2: inout Std_logic);
    end component;
    component DQ_test_18_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest18: inout Std_logic);
    end component;
    component DQ_test_3_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest3: inout Std_logic);
    end component;
    component DQ_test_19_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest19: inout Std_logic);
    end component;
    component DQ_test_20_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest20: inout Std_logic);
    end component;
    component DQ_test_21_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest21: inout Std_logic);
    end component;
    component DQ_test_22_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest22: inout Std_logic);
    end component;
    component DQ_test_23_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest23: inout Std_logic);
    end component;
    component DQ_test_24_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest24: inout Std_logic);
    end component;
    component DQ_test_25_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest25: inout Std_logic);
    end component;
    component DQ_test_26_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest26: inout Std_logic);
    end component;
    component DQ_test_27_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest27: inout Std_logic);
    end component;
    component DQ_test_28_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest28: inout Std_logic);
    end component;
    component DQ_test_29_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest29: inout Std_logic);
    end component;
    component DQ_test_30_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest30: inout Std_logic);
    end component;
    component DQ_test_31_B
      port (PADDI: out Std_logic; PADDO: in Std_logic; PADDT: in Std_logic; 
            DQtest31: inout Std_logic);
    end component;
  begin
    uut_SLICE_0I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"A888", 
                   LUT1_INITVAL=>X"C888", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>state, B1=>DQ_test_out_1, 
                C1=>uut_n716, D1=>uut_n717, DI1=>uut_DQ_31_N_115, 
                DI0=>uut_DQ_31_N_116, A0=>DQ_test_out_0, B0=>state, 
                C0=>uut_n716, D0=>uut_n717, M0=>'X', CE=>'X', 
                CLK=>clk_in_test_c, LSR=>reset_test_c, OFX1=>open, 
                F1=>uut_DQ_31_N_115, Q1=>DQ_31_N_3_1, OFX0=>open, 
                F0=>uut_DQ_31_N_116, Q0=>DQ_31_N_3_0);
    uut_SLICE_1I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"C888", 
                   LUT1_INITVAL=>X"C888", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>state, B1=>DQ_test_out_3, 
                C1=>uut_n717, D1=>uut_n716, DI1=>uut_DQ_31_N_113, 
                DI0=>uut_DQ_31_N_114, A0=>state, B0=>DQ_test_out_2, 
                C0=>uut_n717, D0=>uut_n716, M0=>'X', CE=>'X', 
                CLK=>clk_in_test_c, LSR=>reset_test_c, OFX1=>open, 
                F1=>uut_DQ_31_N_113, Q1=>DQ_31_N_3_3, OFX0=>open, 
                F0=>uut_DQ_31_N_114, Q0=>DQ_31_N_3_2);
    uut_SLICE_2I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"A888", 
                   LUT1_INITVAL=>X"0AFA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>DQ_test_out_5, B1=>'X', 
                C1=>uut_clk_system_N_71_enable_4, D1=>uut_DQ_31_N_74, 
                DI1=>uut_DQ_31_N_111, DI0=>uut_DQ_31_N_112, A0=>DQ_test_out_4, 
                B0=>state, C0=>uut_n717, D0=>uut_n716, M0=>'X', CE=>'X', 
                CLK=>clk_in_test_c, LSR=>reset_test_c, OFX1=>open, 
                F1=>uut_DQ_31_N_111, Q1=>DQ_31_N_3_5, OFX0=>open, 
                F0=>uut_DQ_31_N_112, Q0=>DQ_31_N_3_4);
    uut_SLICE_3I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0CFC", 
                   LUT1_INITVAL=>X"0CFC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>DQ_test_out_7, 
                C1=>uut_clk_system_N_71_enable_4, D1=>uut_DQ_31_N_74, 
                DI1=>uut_DQ_31_N_109, DI0=>uut_DQ_31_N_110, A0=>'X', 
                B0=>DQ_test_out_6, C0=>uut_clk_system_N_71_enable_4, 
                D0=>uut_DQ_31_N_74, M0=>'X', CE=>'X', CLK=>clk_in_test_c, 
                LSR=>reset_test_c, OFX1=>open, F1=>uut_DQ_31_N_109, 
                Q1=>DQ_31_N_3_7, OFX0=>open, F0=>uut_DQ_31_N_110, 
                Q0=>DQ_31_N_3_6);
    uut_SLICE_4I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"C888", 
                   LUT1_INITVAL=>X"C888", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>state, B1=>DQ_test_out_9, 
                C1=>uut_n717, D1=>uut_n716, DI1=>uut_DQ_31_N_107, 
                DI0=>uut_DQ_31_N_108, A0=>state, B0=>DQ_test_out_8, 
                C0=>uut_n717, D0=>uut_n716, M0=>'X', CE=>'X', 
                CLK=>clk_in_test_c, LSR=>reset_test_c, OFX1=>open, 
                F1=>uut_DQ_31_N_107, Q1=>DQ_31_N_3_9, OFX0=>open, 
                F0=>uut_DQ_31_N_108, Q0=>DQ_31_N_3_8);
    uut_SLICE_5I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"A8A0", 
                   LUT1_INITVAL=>X"A8A0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>DQ_test_out_11, B1=>uut_n716, 
                C1=>state, D1=>uut_n717, DI1=>uut_DQ_31_N_105, 
                DI0=>uut_DQ_31_N_106, A0=>DQ_test_out_10, B0=>uut_n716, 
                C0=>state, D0=>uut_n717, M0=>'X', CE=>'X', CLK=>clk_in_test_c, 
                LSR=>reset_test_c, OFX1=>open, F1=>uut_DQ_31_N_105, 
                Q1=>DQ_31_N_3_11, OFX0=>open, F0=>uut_DQ_31_N_106, 
                Q0=>DQ_31_N_3_10);
    uut_SLICE_6I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"A888", 
                   LUT1_INITVAL=>X"33F0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>uut_DQ_31_N_74, 
                C1=>DQ_test_out_13, D1=>uut_clk_system_N_71_enable_4, 
                DI1=>uut_DQ_31_N_103, DI0=>uut_DQ_31_N_104, A0=>DQ_test_out_12, 
                B0=>state, C0=>uut_n717, D0=>uut_n716, M0=>'X', CE=>'X', 
                CLK=>clk_in_test_c, LSR=>reset_test_c, OFX1=>open, 
                F1=>uut_DQ_31_N_103, Q1=>DQ_31_N_3_13, OFX0=>open, 
                F0=>uut_DQ_31_N_104, Q0=>DQ_31_N_3_12);
    uut_SLICE_7I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"33AA", 
                   LUT1_INITVAL=>X"33AA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>DQ_test_out_15, 
                B1=>uut_DQ_31_N_74, C1=>'X', D1=>uut_clk_system_N_71_enable_4, 
                DI1=>uut_DQ_31_N_101, DI0=>uut_DQ_31_N_102, A0=>DQ_test_out_14, 
                B0=>uut_DQ_31_N_74, C0=>'X', D0=>uut_clk_system_N_71_enable_4, 
                M0=>'X', CE=>'X', CLK=>clk_in_test_c, LSR=>reset_test_c, 
                OFX1=>open, F1=>uut_DQ_31_N_101, Q1=>DQ_31_N_3_15, OFX0=>open, 
                F0=>uut_DQ_31_N_102, Q0=>DQ_31_N_3_14);
    uut_SLICE_8I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"C888", 
                   LUT1_INITVAL=>X"C888", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>state, B1=>DQ_test_out_17, 
                C1=>uut_n717, D1=>uut_n716, DI1=>uut_DQ_31_N_99, 
                DI0=>uut_DQ_31_N_100, A0=>state, B0=>DQ_test_out_16, 
                C0=>uut_n717, D0=>uut_n716, M0=>'X', CE=>'X', 
                CLK=>clk_in_test_c, LSR=>reset_test_c, OFX1=>open, 
                F1=>uut_DQ_31_N_99, Q1=>DQ_31_N_3_17, OFX0=>open, 
                F0=>uut_DQ_31_N_100, Q0=>DQ_31_N_3_16);
    uut_SLICE_9I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"CC80", 
                   LUT1_INITVAL=>X"CC80", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uut_n716, B1=>DQ_test_out_19, 
                C1=>uut_n717, D1=>state, DI1=>uut_DQ_31_N_97, 
                DI0=>uut_DQ_31_N_98, A0=>uut_n716, B0=>DQ_test_out_18, 
                C0=>uut_n717, D0=>state, M0=>'X', CE=>'X', CLK=>clk_in_test_c, 
                LSR=>reset_test_c, OFX1=>open, F1=>uut_DQ_31_N_97, 
                Q1=>DQ_31_N_3_19, OFX0=>open, F0=>uut_DQ_31_N_98, 
                Q0=>DQ_31_N_3_18);
    uut_SLICE_10I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"A888", 
                   LUT1_INITVAL=>X"33F0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>uut_DQ_31_N_74, 
                C1=>DQ_test_out_21, D1=>uut_clk_system_N_71_enable_4, 
                DI1=>uut_DQ_31_N_95, DI0=>uut_DQ_31_N_96, A0=>DQ_test_out_20, 
                B0=>state, C0=>uut_n717, D0=>uut_n716, M0=>'X', CE=>'X', 
                CLK=>clk_in_test_c, LSR=>reset_test_c, OFX1=>open, 
                F1=>uut_DQ_31_N_95, Q1=>DQ_31_N_3_21, OFX0=>open, 
                F0=>uut_DQ_31_N_96, Q0=>DQ_31_N_3_20);
    uut_SLICE_11I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0FCC", 
                   LUT1_INITVAL=>X"0FCC", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>DQ_test_out_23, 
                C1=>uut_DQ_31_N_74, D1=>uut_clk_system_N_71_enable_4, 
                DI1=>uut_DQ_31_N_93, DI0=>uut_DQ_31_N_94, A0=>'X', 
                B0=>DQ_test_out_22, C0=>uut_DQ_31_N_74, 
                D0=>uut_clk_system_N_71_enable_4, M0=>'X', CE=>'X', 
                CLK=>clk_in_test_c, LSR=>reset_test_c, OFX1=>open, 
                F1=>uut_DQ_31_N_93, Q1=>DQ_31_N_3_23, OFX0=>open, 
                F0=>uut_DQ_31_N_94, Q0=>DQ_31_N_3_22);
    uut_SLICE_12I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"C888", 
                   LUT1_INITVAL=>X"A888", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>DQ_test_out_25, B1=>state, 
                C1=>uut_n717, D1=>uut_n716, DI1=>uut_DQ_31_N_91, 
                DI0=>uut_DQ_31_N_92, A0=>state, B0=>DQ_test_out_24, 
                C0=>uut_n717, D0=>uut_n716, M0=>'X', CE=>'X', 
                CLK=>clk_in_test_c, LSR=>reset_test_c, OFX1=>open, 
                F1=>uut_DQ_31_N_91, Q1=>DQ_31_N_3_25, OFX0=>open, 
                F0=>uut_DQ_31_N_92, Q0=>DQ_31_N_3_24);
    uut_SLICE_13I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"A888", 
                   LUT1_INITVAL=>X"A888", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>DQ_test_out_27, B1=>state, 
                C1=>uut_n717, D1=>uut_n716, DI1=>uut_DQ_31_N_89, 
                DI0=>uut_DQ_31_N_90, A0=>DQ_test_out_26, B0=>state, 
                C0=>uut_n717, D0=>uut_n716, M0=>'X', CE=>'X', 
                CLK=>clk_in_test_c, LSR=>reset_test_c, OFX1=>open, 
                F1=>uut_DQ_31_N_89, Q1=>DQ_31_N_3_27, OFX0=>open, 
                F0=>uut_DQ_31_N_90, Q0=>DQ_31_N_3_26);
    uut_SLICE_14I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"A888", 
                   LUT1_INITVAL=>X"33F0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>uut_DQ_31_N_74, 
                C1=>DQ_test_out_29, D1=>uut_clk_system_N_71_enable_4, 
                DI1=>uut_DQ_31_N_87, DI0=>uut_DQ_31_N_88, A0=>DQ_test_out_28, 
                B0=>state, C0=>uut_n717, D0=>uut_n716, M0=>'X', CE=>'X', 
                CLK=>clk_in_test_c, LSR=>reset_test_c, OFX1=>open, 
                F1=>uut_DQ_31_N_87, Q1=>DQ_31_N_3_29, OFX0=>open, 
                F0=>uut_DQ_31_N_88, Q0=>DQ_31_N_3_28);
    uut_SLICE_15I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"0FCC", 
                   LUT1_INITVAL=>X"33AA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>DQ_test_out_31, 
                B1=>uut_DQ_31_N_74, C1=>'X', D1=>uut_clk_system_N_71_enable_4, 
                DI1=>uut_DQ_31_N_72, DI0=>uut_DQ_31_N_86, A0=>'X', 
                B0=>DQ_test_out_30, C0=>uut_DQ_31_N_74, 
                D0=>uut_clk_system_N_71_enable_4, M0=>'X', CE=>'X', 
                CLK=>clk_in_test_c, LSR=>reset_test_c, OFX1=>open, 
                F1=>uut_DQ_31_N_72, Q1=>DQ_31_N_3_31, OFX0=>open, 
                F0=>uut_DQ_31_N_86, Q0=>DQ_31_N_3_30);
    uut_SLICE_16I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"00FF", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>uut_clk_out_N_160, A0=>'X', B0=>'X', 
                C0=>'X', D0=>clk_out_test_c, M0=>'X', CE=>'X', 
                CLK=>clk_in_test_c, LSR=>reset_test_c, OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>uut_clk_out_N_160, 
                Q0=>clk_out_test_c);
    SLICE_17I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   REG0_REGSET=>"SET", GSR=>"DISABLED", SRMODE=>"ASYNC", 
                   LUT0_INITVAL=>X"0000", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>n718, A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>state, LSR=>state, OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>n718, Q0=>estado_test_c);
    SLICE_18I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"FFFF", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>VCC_net, A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>uut_state_N_81, CLK=>clk_in_test_c, 
                LSR=>reset_test_c, OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>VCC_net, Q0=>state);
    uut_SLICE_19I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"AFFF", 
                   LUT1_INITVAL=>X"CC00", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>uut_byte_counter_1, 
                C1=>'X', D1=>uut_byte_counter_2, DI1=>'X', DI0=>uut_n717, 
                A0=>uut_byte_counter_0, B0=>'X', C0=>uut_byte_counter_2, 
                D0=>uut_byte_counter_1, M0=>'X', 
                CE=>uut_clk_system_N_71_enable_4, CLK=>clk_in_test_c, 
                LSR=>reset_test_c, OFX1=>open, F1=>uut_n716, Q1=>open, 
                OFX0=>open, F0=>uut_n717, Q0=>uut_DQ_3_N_60);
    uut_SLICE_20I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"1155", 
                   LUT1_INITVAL=>X"2266", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE, 
                   CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uut_byte_counter_0, 
                B1=>uut_byte_counter_1, C1=>'X', D1=>uut_byte_counter_2, 
                DI1=>uut_n641, DI0=>uut_n653, A0=>uut_byte_counter_0, 
                B0=>uut_byte_counter_1, C0=>'X', D0=>uut_byte_counter_2, 
                M0=>'X', CE=>uut_clk_system_N_71_enable_4, CLK=>clk_in_test_c, 
                LSR=>reset_test_c, OFX1=>open, F1=>uut_n641, 
                Q1=>uut_byte_counter_1, OFX0=>open, F0=>uut_n653, 
                Q0=>uut_byte_counter_0);
    uut_SLICE_21I: SLOGICB
      generic map (CLKMUX=>"INV", CEMUX=>"SIG", LSRMUX=>"SIG", GSR=>"DISABLED", 
                   SRMODE=>"ASYNC", LUT0_INITVAL=>X"33C0", 
                   LUT1_INITVAL=>X"33FC", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>uut_byte_counter_1, 
                C1=>uut_byte_counter_0, D1=>uut_byte_counter_2, DI1=>'X', 
                DI0=>uut_n23, A0=>'X', B0=>uut_byte_counter_1, 
                C0=>uut_byte_counter_0, D0=>uut_byte_counter_2, M0=>'X', 
                CE=>uut_clk_system_N_71_enable_4, CLK=>clk_in_test_c, 
                LSR=>reset_test_c, OFX1=>open, F1=>uut_DQ_31_N_74, Q1=>open, 
                OFX0=>open, F0=>uut_n23, Q0=>uut_byte_counter_2);
    uut_SLICE_22I: SLOGICB
      generic map (LUT0_INITVAL=>X"007F", LUT1_INITVAL=>X"FF08")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uut_byte_counter_1, 
                B1=>uut_byte_counter_2, C1=>uut_byte_counter_0, D1=>state, 
                DI1=>'X', DI0=>'X', A0=>uut_byte_counter_2, 
                B0=>uut_byte_counter_1, C0=>uut_byte_counter_0, D0=>state, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>uut_state_N_81, Q1=>open, OFX0=>open, 
                F0=>uut_clk_system_N_71_enable_4, Q0=>open);
    SLICE_23I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>state, B0=>clk_out_test_c, 
                C0=>reset_test_c, D0=>CS_n_test_c, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>CS_n_test_c, Q0=>open);
    DQ_test_4_I: DQ_test_4_B
      port map (PADDI=>DQ_test_out_4, PADDO=>DQ_31_N_3_4, PADDT=>uut_DQ_3_N_60, 
                DQtest4=>DQ_test(4));
    DQ_test_5_I: DQ_test_5_B
      port map (PADDI=>DQ_test_out_5, PADDO=>DQ_31_N_3_5, PADDT=>uut_DQ_3_N_60, 
                DQtest5=>DQ_test(5));
    DQ_test_6_I: DQ_test_6_B
      port map (PADDI=>DQ_test_out_6, PADDO=>DQ_31_N_3_6, PADDT=>uut_DQ_3_N_60, 
                DQtest6=>DQ_test(6));
    DQ_test_7_I: DQ_test_7_B
      port map (PADDI=>DQ_test_out_7, PADDO=>DQ_31_N_3_7, PADDT=>uut_DQ_3_N_60, 
                DQtest7=>DQ_test(7));
    DQ_test_8_I: DQ_test_8_B
      port map (PADDI=>DQ_test_out_8, PADDO=>DQ_31_N_3_8, PADDT=>uut_DQ_3_N_60, 
                DQtest8=>DQ_test(8));
    DQ_test_9_I: DQ_test_9_B
      port map (PADDI=>DQ_test_out_9, PADDO=>DQ_31_N_3_9, PADDT=>uut_DQ_3_N_60, 
                DQtest9=>DQ_test(9));
    DQ_test_10_I: DQ_test_10_B
      port map (PADDI=>DQ_test_out_10, PADDO=>DQ_31_N_3_10, 
                PADDT=>uut_DQ_3_N_60, DQtest10=>DQ_test(10));
    DQ_test_11_I: DQ_test_11_B
      port map (PADDI=>DQ_test_out_11, PADDO=>DQ_31_N_3_11, 
                PADDT=>uut_DQ_3_N_60, DQtest11=>DQ_test(11));
    reset_testI: reset_testB
      port map (PADDI=>reset_test_c, resettest=>reset_test);
    DQ_test_12_I: DQ_test_12_B
      port map (PADDI=>DQ_test_out_12, PADDO=>DQ_31_N_3_12, 
                PADDT=>uut_DQ_3_N_60, DQtest12=>DQ_test(12));
    clk_in_testI: clk_in_testB
      port map (PADDI=>clk_in_test_c, clkintest=>clk_in_test);
    ready_testI: ready_testB
      port map (readytest=>ready_test);
    DQ_test_13_I: DQ_test_13_B
      port map (PADDI=>DQ_test_out_13, PADDO=>DQ_31_N_3_13, 
                PADDT=>uut_DQ_3_N_60, DQtest13=>DQ_test(13));
    CS_n_testI: CS_n_testB
      port map (PADDO=>CS_n_test_c, CSntest=>CS_n_test);
    estado_testI: estado_testB
      port map (PADDO=>estado_test_c, estadotest=>estado_test);
    DQ_test_14_I: DQ_test_14_B
      port map (PADDI=>DQ_test_out_14, PADDO=>DQ_31_N_3_14, 
                PADDT=>uut_DQ_3_N_60, DQtest14=>DQ_test(14));
    clk_out_testI: clk_out_testB
      port map (PADDO=>clk_out_test_c, clkouttest=>clk_out_test);
    DQ_test_15_I: DQ_test_15_B
      port map (PADDI=>DQ_test_out_15, PADDO=>DQ_31_N_3_15, 
                PADDT=>uut_DQ_3_N_60, DQtest15=>DQ_test(15));
    DQ_test_0_I: DQ_test_0_B
      port map (PADDI=>DQ_test_out_0, PADDO=>DQ_31_N_3_0, PADDT=>uut_DQ_3_N_60, 
                DQtest0=>DQ_test(0));
    DQ_test_16_I: DQ_test_16_B
      port map (PADDI=>DQ_test_out_16, PADDO=>DQ_31_N_3_16, 
                PADDT=>uut_DQ_3_N_60, DQtest16=>DQ_test(16));
    DQ_test_1_I: DQ_test_1_B
      port map (PADDI=>DQ_test_out_1, PADDO=>DQ_31_N_3_1, PADDT=>uut_DQ_3_N_60, 
                DQtest1=>DQ_test(1));
    DQ_test_17_I: DQ_test_17_B
      port map (PADDI=>DQ_test_out_17, PADDO=>DQ_31_N_3_17, 
                PADDT=>uut_DQ_3_N_60, DQtest17=>DQ_test(17));
    DQ_test_2_I: DQ_test_2_B
      port map (PADDI=>DQ_test_out_2, PADDO=>DQ_31_N_3_2, PADDT=>uut_DQ_3_N_60, 
                DQtest2=>DQ_test(2));
    DQ_test_18_I: DQ_test_18_B
      port map (PADDI=>DQ_test_out_18, PADDO=>DQ_31_N_3_18, 
                PADDT=>uut_DQ_3_N_60, DQtest18=>DQ_test(18));
    DQ_test_3_I: DQ_test_3_B
      port map (PADDI=>DQ_test_out_3, PADDO=>DQ_31_N_3_3, PADDT=>uut_DQ_3_N_60, 
                DQtest3=>DQ_test(3));
    DQ_test_19_I: DQ_test_19_B
      port map (PADDI=>DQ_test_out_19, PADDO=>DQ_31_N_3_19, 
                PADDT=>uut_DQ_3_N_60, DQtest19=>DQ_test(19));
    DQ_test_20_I: DQ_test_20_B
      port map (PADDI=>DQ_test_out_20, PADDO=>DQ_31_N_3_20, 
                PADDT=>uut_DQ_3_N_60, DQtest20=>DQ_test(20));
    DQ_test_21_I: DQ_test_21_B
      port map (PADDI=>DQ_test_out_21, PADDO=>DQ_31_N_3_21, 
                PADDT=>uut_DQ_3_N_60, DQtest21=>DQ_test(21));
    DQ_test_22_I: DQ_test_22_B
      port map (PADDI=>DQ_test_out_22, PADDO=>DQ_31_N_3_22, 
                PADDT=>uut_DQ_3_N_60, DQtest22=>DQ_test(22));
    DQ_test_23_I: DQ_test_23_B
      port map (PADDI=>DQ_test_out_23, PADDO=>DQ_31_N_3_23, 
                PADDT=>uut_DQ_3_N_60, DQtest23=>DQ_test(23));
    DQ_test_24_I: DQ_test_24_B
      port map (PADDI=>DQ_test_out_24, PADDO=>DQ_31_N_3_24, 
                PADDT=>uut_DQ_3_N_60, DQtest24=>DQ_test(24));
    DQ_test_25_I: DQ_test_25_B
      port map (PADDI=>DQ_test_out_25, PADDO=>DQ_31_N_3_25, 
                PADDT=>uut_DQ_3_N_60, DQtest25=>DQ_test(25));
    DQ_test_26_I: DQ_test_26_B
      port map (PADDI=>DQ_test_out_26, PADDO=>DQ_31_N_3_26, 
                PADDT=>uut_DQ_3_N_60, DQtest26=>DQ_test(26));
    DQ_test_27_I: DQ_test_27_B
      port map (PADDI=>DQ_test_out_27, PADDO=>DQ_31_N_3_27, 
                PADDT=>uut_DQ_3_N_60, DQtest27=>DQ_test(27));
    DQ_test_28_I: DQ_test_28_B
      port map (PADDI=>DQ_test_out_28, PADDO=>DQ_31_N_3_28, 
                PADDT=>uut_DQ_3_N_60, DQtest28=>DQ_test(28));
    DQ_test_29_I: DQ_test_29_B
      port map (PADDI=>DQ_test_out_29, PADDO=>DQ_31_N_3_29, 
                PADDT=>uut_DQ_3_N_60, DQtest29=>DQ_test(29));
    DQ_test_30_I: DQ_test_30_B
      port map (PADDI=>DQ_test_out_30, PADDO=>DQ_31_N_3_30, 
                PADDT=>uut_DQ_3_N_60, DQtest30=>DQ_test(30));
    DQ_test_31_I: DQ_test_31_B
      port map (PADDI=>DQ_test_out_31, PADDO=>DQ_31_N_3_31, 
                PADDT=>uut_DQ_3_N_60, DQtest31=>DQ_test(31));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCC_net);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, ECP5U;
  configuration Structure_CON of hyperram_tb is
    for Structure
    end for;
  end Structure_CON;


