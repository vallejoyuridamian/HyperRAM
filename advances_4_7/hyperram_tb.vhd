LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
    
ENTITY hyperram_tb IS
	PORT(
	clk_in_test  : IN STD_LOGIC;
 	reset_test : IN STD_LOGIC;
 	clk_out_test : OUT STD_LOGIC;
 	estado_test: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
 	CS_n_test: OUT STD_LOGIC;
	ready_test: OUT STD_LOGIC;
	--DQ_test: INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
 	--rwds_test: INOUT STD_LOGIC
	DQ_in_dbg_test: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	DQ_out_dbg_test: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	rwds_in_dbg_test: IN STD_LOGIC;
	rwds_out_dbg_test: OUT STD_LOGIC
 );
END hyperram_tb;
  
 ARCHITECTURE behavior OF hyperram_tb IS
 
-- Component Declaration for the Unit Under Test (UUT)
 COMPONENT hram_interface
 	PORT (
         --interface to user
         clk_system : IN STD_LOGIC; --125MHz
         reset : IN STD_LOGIC;
         ready : OUT STD_LOGIC; --indicates the interface is ready for a new write or read burst
         --start_address : IN STD_LOGIC_VECTOR(31 DOWNTO 0); --First address in a burst
         --write_start : IN STD_LOGIC; --user request a write burst
         --read_start : IN STD_LOGIC; --user request a write burst
 
         --First-Word-Fall-Through FIFO interface. 
         -- This fifo Will contain at least 128 words before write burst is requested
         -- It's the user responsibility to ensure `write_fifo_empty` is never asserted during a transaction
         --write_fifo_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
         --write_fifo_data_rd_enable : OUT STD_LOGIC;
         --write_fifo_empty : IN STD_LOGIC; --Fifo should never be empty during a transaction
 
         --Read fifo interface. When a burst read operation is performed, data is written in this fifo
         --It's the user responsibilty to ensure this fifo has at least 128 free slots before read burst is requested
         --read_fifo_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
         --read_fifo_wr_enable : OUT STD_LOGIC;
         --read_fifo_full : IN STD_LOGIC; --Fifo should never become full
 
         --Hyper RAMs interface
         CS_n : OUT STD_LOGIC;
         CK_LVDS : OUT STD_LOGIC; --Lattice will infer the P/N LVDS pair automatically
         -- DQ : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
         -- RWDS : INOUT STD_LOGIC;
         RESET_n : OUT STD_LOGIC;
 		
 		--/dbg 
 		estado_dbg: out STD_LOGIC_VECTOR(2 DOWNTO 0);
		DQ_in_dbg : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		DQ_out_dbg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        RWDS_in_dbg : IN STD_LOGIC;
		RWDS_out_dbg : OUT STD_LOGIC         
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
   
 --SIGNAL clk_ram:STD_LOGIC;
 --SIGNAL clk_ram,clk_ram_n, cs_n, reset_n,rwds_sig: STD_LOGIC; 
 --SIGNAL rwds_sig_vec: STD_LOGIC_VECTOR(0 DOWNTO 0);
 --SIGNAL DQ_1:STD_LOGIC_VECTOR(7 DOWNTO 0);
 
 BEGIN
  
-- Instantiate the Unit Under Test (UUT)
 uut: hram_interface PORT MAP (
	ready => ready_test,
 	clk_system => clk_in_test,
-- 	CK_LVDS => clk_ram,
	CK_LVDS => clk_out_test,
 	reset => reset_test,
 -- dbg	
 	estado_dbg => estado_test,
	--DQ => DQ_test,
 	DQ_out_dbg => DQ_out_dbg_test,	
	DQ_in_dbg => DQ_in_dbg_test,
 	--CS_n => cs_n,
	CS_n => CS_n_test,
	--RWDS => rwds_test
	rwds_in_dbg => rwds_in_dbg_test,
	rwds_out_dbg => rwds_out_dbg_test
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
 
   
   
END;