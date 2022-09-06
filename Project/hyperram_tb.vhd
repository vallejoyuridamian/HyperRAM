LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
    
ENTITY hyperram_tb IS
END hyperram_tb;

 ARCHITECTURE arc OF hyperram_tb IS
 
-- Component Declaration for the Unit Under Test (UUT)
 COMPONENT hram_interface_dbg
 	PORT (
         --interface to user
         clk_system : IN STD_LOGIC; --125MHz
         reset : IN STD_LOGIC;
         ready : OUT STD_LOGIC; --indicates the interface is ready for a new write or read burst
         start_address : IN STD_LOGIC_VECTOR(31 DOWNTO 0); --First address in a burst
         write_start : IN STD_LOGIC; --user request a write burst
         read_start : IN STD_LOGIC; --user request a write burst
 
         --First-Word-Fall-Through FIFO interface. 
         -- This fifo Will contain at least 128 words before write burst is requested
         -- It's the user responsibility to ensure `write_fifo_empty` is never asserted during a transaction
         write_fifo_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
         write_fifo_data_rd_enable : OUT STD_LOGIC;
         write_fifo_empty : IN STD_LOGIC; --Fifo should never be empty during a transaction
 
         --Read fifo interface. When a burst read operation is performed, data is written in this fifo
         --It's the user responsibilty to ensure this fifo has at least 128 free slots before read burst is requested
         read_fifo_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
         read_fifo_wr_enable : OUT STD_LOGIC;
         read_fifo_full : IN STD_LOGIC; --Fifo should never become full
 
         --Hyper RAMs interface
         CS_n : OUT STD_LOGIC;
         CK_LVDS : OUT STD_LOGIC; --Lattice will infer the P/N LVDS pair automatically
         -- DQ : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
         --RWDS : INOUT STD_LOGIC;
         RESET_n : OUT STD_LOGIC;
 		
 		--/dbg 
 		estado_dbg: out STD_LOGIC_VECTOR(3 DOWNTO 0);
		DQ_in_dbg : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		DQ_out_dbg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        RWDS_in_dbg : IN STD_LOGIC;
		RWDS_out_dbg : OUT STD_LOGIC;
		byte_counter_dbg: OUT NATURAL range 0 to 128:= 0		
 		--dbg
 				
 		
     );
 END COMPONENT;
  
  
 --COMPONENT W958D8NBYA
 --PORT(
 	--adq: INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
 	--clk: IN STD_LOGIC;
 	--clk_n: IN STD_LOGIC;
 	--csb: IN STD_LOGIC;		
 	--rwds: INOUT STD_LOGIC_VECTOR(0 DOWNTO 0);        
 	--VCC: IN STD_LOGIC;
 	--VSS: IN STD_LOGIC;
 	--resetb: IN STD_LOGIC
 --);
 --END COMPONENT; 

SIGNAL clk_system_sig:STD_LOGIC:='1';
SIGNAL clk_ram_sig:STD_LOGIC;
SIGNAL reset_sig:STD_LOGIC:='1';
SIGNAL state_sig:STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rwds_in_sig:STD_LOGIC:='Z';
SIGNAL rwds_out_sig:STD_LOGIC;
SIGNAL byte_counter_sig: NATURAL range 0 to 8:= 0;
SIGNAL CS_n_sig:STD_LOGIC:='0';
SIGNAL DQ_in_sig: STD_LOGIC_VECTOR(31 DOWNTO 0):= (others => 'Z');
SIGNAL DQ_out_sig: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ready_sig:STD_LOGIC;
SIGNAL write_start_sig:STD_LOGIC:='0';
SIGNAL start_address_sig:STD_LOGIC_VECTOR(31 DOWNTO 0):= (others => '0');
SIGNAL write_fifo_empty_sig:STD_LOGIC:='0';
SIGNAL write_fifo_data_rd_enable_sig:STD_LOGIC;
SIGNAL write_fifo_data_sig: STD_LOGIC_VECTOR(31 DOWNTO 0):= (others => '0');
SIGNAL read_fifo_full_sig:STD_LOGIC:='0';
SIGNAL read_start_sig:STD_LOGIC:='0';
SIGNAL read_fifo_data_sig: STD_LOGIC_VECTOR(31 DOWNTO 0):= (others => '0');
SIGNAL read_fifo_wr_enable_sig:STD_LOGIC;

BEGIN
  
-- Instantiate the Unit Under Test (UUT)
 uut: hram_interface_dbg PORT MAP (
	ready => ready_sig,
 	clk_system => clk_system_sig, --clk_in_test,
-- 	CK_LVDS => clk_ram,
	CK_LVDS => clk_ram_sig,
 	reset => reset_sig,
 -- dbg	
 	estado_dbg => state_sig,
	--DQ => DQ_test,
 	DQ_out_dbg => DQ_out_sig,	
	DQ_in_dbg => DQ_in_sig,
 	--CS_n => cs_n,
	CS_n => CS_n_sig,
	--RWDS => rwds_sig,
	rwds_in_dbg => rwds_in_sig,
	rwds_out_dbg => rwds_out_sig,
	write_start => write_start_sig,
    read_start => read_start_sig,
	start_address =>start_address_sig,
	write_fifo_data => write_fifo_data_sig,
	write_fifo_data_rd_enable =>write_fifo_data_rd_enable_sig,
    write_fifo_empty => write_fifo_empty_sig,
    read_fifo_data => read_fifo_data_sig,
    read_fifo_wr_enable => read_fifo_wr_enable_sig,
    read_fifo_full => read_fifo_full_sig,
	byte_counter_dbg => byte_counter_sig

);
  
--clk_ram_n <= not(clk_ram);
--DQ_1 <= DQ_test(31 downto 24);
--reset_n <=not(reset_test);
--CS_n_test <= cs_n;
--rwds_sig <= rwds_sig_vec(0);
--clk_out_test <= clk_ram;
 
 
--ram:W958D8NBYA PORT MAP(
 	--adq => DQ_1,
 	--clk => clk_ram,
 	--clk_n => clk_ram_n,
	--csb => cs_n,
 	--rwds => rwds_sig_vec,
 	--VCC => '1',
 	--VSS => '0',
 	--resetb=> reset_n
--);   
clk_system_sig <= not clk_system_sig after 4 ns;
reset_sig <= '1', '0' after 5 ns;
stimuli : PROCESS
BEGIN	
	-- SETUP TEST --
	-- First read cycle for ID --
	WAIT UNTIL CS_n_sig = '0';
	rwds_in_sig <= '0'; -- low latency for first read cycle
	WAIT UNTIL (byte_counter_sig = 4 and clk_ram_sig'event and clk_ram_sig = '0'); -- 7 cycles of ram clock from here
	WAIT FOR 112 ns; -- 16 ns * 7
	rwds_in_sig <= '0';
	WAIT FOR 12 ns; -- so that it is edge aligned
	rwds_in_sig <= '1'; -- here we start sending the bytes
	DQ_in_sig <= x"0E0E0E0E";
	WAIT FOR 8 ns;
	rwds_in_sig <= '0';
	DQ_in_sig <= x"86868686";
	WAIT FOR 8 ns;
	rwds_in_sig <= '1';
	DQ_in_sig <= x"0E0E0E0E"; -- this and the next one should be ignored
	WAIT FOR 8 ns;
	rwds_in_sig <= '0';
	DQ_in_sig <= x"86868686";
	WAIT FOR 8 ns;
	rwds_in_sig <= 'Z';
	DQ_in_sig <= (others => 'Z');
	-- Second read cycle for ID --
	WAIT UNTIL CS_n_sig = '0';
	rwds_in_sig <= '0'; -- low latency for first read cycle
	WAIT UNTIL (byte_counter_sig = 4 and clk_ram_sig'event and clk_ram_sig = '0'); -- 7 cycles of ram clock from here
	WAIT FOR 112 ns; -- 16 ns * 7
	rwds_in_sig <= '0';
	WAIT FOR 12 ns; -- so that it is edge aligned
	rwds_in_sig <= '1'; -- here we start sending the bytes
	DQ_in_sig <= x"00000000";
	WAIT FOR 8 ns;
	rwds_in_sig <= '0';
	DQ_in_sig <= x"01010101";
	WAIT FOR 8 ns;
	rwds_in_sig <= '1';
	DQ_in_sig <= x"00000000"; -- this and the next one should be ignored
	WAIT FOR 8 ns;
	rwds_in_sig <= '0';
	DQ_in_sig <= x"01010101";
	WAIT FOR 8 ns;
	rwds_in_sig <= 'Z';
	DQ_in_sig <= (others => 'Z');
   -- Now the controller writes both configuration registers, nothing to be done until ready = 1 --
		
	
	-- WRITE TEST --
	WAIT UNTIL (ready_sig = '1');
	-- now we will perform a write request
	-- User provides an address on the input start_address and sets write_start = ‘1’ for 1 clock cycle.
	write_start_sig <= '1';
	start_address_sig <= x"0BADF00D";
	WAIT FOR 8 ns;
	write_start_sig <= '0';
	start_address_sig <= x"00000000";
    -- now the controller will ask for a write cycle --
	WAIT UNTIL (byte_counter_sig = 4 and clk_ram_sig'event and clk_ram_sig = '0'); -- 6 cycles of ram clock from here
	WAIT FOR 96 ns; -- 16 ns * 6 	
	write_fifo_data_sig <= x"11111111";
	WAIT FOR 8 ns;
	write_fifo_data_sig <= x"22222222";
	WAIT FOR 8 ns;
	write_fifo_data_sig <= x"33333333";
	WAIT FOR 8 ns;
	write_fifo_data_sig <= x"44444444";
	WAIT FOR 8 ns;
	write_fifo_data_sig <= x"55555555";
	-- we will keep the 5 and do a countdown for the last ones	WAIT FOR 960 ns;
	write_fifo_data_sig <= x"44444444";
	WAIT FOR 8 ns;
	write_fifo_data_sig <= x"33333333";
	WAIT FOR 8 ns;
	write_fifo_data_sig <= x"22222222";
	WAIT FOR 8 ns;
	write_fifo_data_sig <= x"11111111";
	WAIT FOR 8 ns;
	write_fifo_data_sig <= x"00000000";

	-- READ TEST --
	-- Now the controller reads both configuration registers, nothing to be done until ready = 1 --
	WAIT UNTIL (ready_sig = '1');
	-- now we will perform a read request
	-- User provides an address on the input start_address and sets read_start = ‘1’ for 1 clock cycle.
	read_start_sig <= '1';
	start_address_sig <= x"0BADF00D";
	WAIT FOR 8 ns;
	read_start_sig <= '0';
	start_address_sig <= x"00000000";
	-- now the controller will ask for a read cycle --
	rwds_in_sig <= '0'; -- low latency for read cycle
	WAIT UNTIL (byte_counter_sig = 4 and clk_ram_sig'event and clk_ram_sig = '0'); -- 6 cycles of ram clock from here
	WAIT FOR 96 ns; -- 16 ns * 6 	
	rwds_in_sig <= '0';
	WAIT FOR 12 ns; -- so that it is edge aligned
	rwds_in_sig <= '1'; -- here we start sending the bytes
	DQ_in_sig <= x"11111111";
	WAIT FOR 8 ns;
	rwds_in_sig <= '0';
	DQ_in_sig <= x"22222222";
	WAIT FOR 8 ns;
	rwds_in_sig <= '1';
	DQ_in_sig <= x"33333333"; 
	WAIT FOR 8 ns;
	rwds_in_sig <= '0';
	DQ_in_sig <= x"44444444";	WAIT FOR 8 ns;
	rwds_in_sig <= '1';
	DQ_in_sig <= x"55555555";
	FOR item in 1 to 59 loop 
		WAIT FOR 8 ns;
		rwds_in_sig <= '0';
		WAIT FOR 8 ns;
		rwds_in_sig <= '1';
	END LOOP;
	WAIT FOR 8 ns;
	rwds_in_sig <= '0';
	DQ_in_sig <= x"55555555";
	WAIT FOR 8 ns;
	rwds_in_sig <= '1';
	DQ_in_sig <= x"44444444";
	WAIT FOR 8 ns;
	rwds_in_sig <= '0';
	DQ_in_sig <= x"33333333"; 
	WAIT FOR 8 ns;
	rwds_in_sig <= '1';
	DQ_in_sig <= x"22222222";
	WAIT FOR 8 ns; 
	rwds_in_sig <= '0'; 
	DQ_in_sig <= x"11111111";
	WAIT FOR 8 ns;
	rwds_in_sig <= 'Z'; -- here we start sending the bytes
	DQ_in_sig <= (others => 'Z');

WAIT;
END PROCESS;
 
END arc;