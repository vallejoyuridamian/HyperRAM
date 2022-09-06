LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- Design for W958D8NBYA5I
-- 4 chips will connected with control signal in parallel to result in a 32 bit bus
-- Careful: command and address will be duplicate for all rams
-- data read/write will be different for each ram
-- the term "user" in the comments indicates the VHDL code interfacing to that entity
-- All read and write transactions are 128 words linear bursts (not wrapped bursts)
-- a burst consists of 128 * 4 RAMs = 512 bytes per transaction (128 bytes on each RAM)
ENTITY hram_interface_dbg IS
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
        --DQ : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        --RWDS : INOUT STD_LOGIC;
        RESET_n : OUT STD_LOGIC;
		
		--/dbg 
		-- These signals will be replaced by the bidirectional but I duplicate them to
		-- be able to verify the simulations
		estado_dbg: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		DQ_in_dbg : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		DQ_out_dbg:  OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		rwds_in_dbg : IN STD_LOGIC;
		rwds_out_dbg : OUT STD_LOGIC;
		byte_counter_dbg: OUT NATURAL range 0 to 128:= 0
		--dbg
		
		
    );
END hram_interface_dbg;

ARCHITECTURE arc OF hram_interface_dbg IS

COMPONENT clk_div_2
PORT(
clk_in : IN std_logic;
reset: IN std_logic;
clk_out : OUT std_logic
);
END COMPONENT;
 
TYPE state_type IS (requesting_id,reading_id, writing_config, idle_state, writing_data_setup
, state_error, writing_to_ram,reading_data_setup,reading_from_ram);
SIGNAL state: state_type:=requesting_id;
SIGNAL clk_ram: STD_LOGIC;
SIGNAL byte_counter	: NATURAL range 0 to 128:= 0;
SIGNAL id_register,id_verified, id_error:STD_LOGIC:='0';
SIGNAL starting_address_internal : STD_LOGIC_VECTOR(31 DOWNTO 0):=( others => '0');
BEGIN

-- We start with the clock divider, 125 MHz to 62.5 MHz
clk_62_5:clk_div_2 PORT MAP (
clk_in => clk_system,
reset => reset,
clk_out => clk_ram
);

CK_LVDS <= clk_ram;
-- Pass reset inverted to the output
RESET_n <= not(reset);
byte_counter_dbg <= byte_counter;

states: PROCESS (reset, state,clk_system, clk_ram,rwds_in_dbg)
BEGIN
	IF reset = '1' THEN
		ready <= '0';
		CS_n <= '1';
		state <= requesting_id;
		DQ_out_dbg <= (others => 'Z');
		rwds_out_dbg <= 'Z';
		byte_counter <= 0;
		id_verified <= '0';
		id_error <= '0';
		id_register <= '0';
		write_fifo_data_rd_enable <='0';
		read_fifo_wr_enable <='0';
		read_fifo_data <= (others => '0');
	ELSE 
		--- READING DEVICE IDENTIFICATION REGISTERS ---			
		IF (state = requesting_id and clk_system'event and clk_system = '0') THEN -- this clocking puts the data centered with the ram's clock edge
			IF (byte_counter = 0 and clk_ram = '0') THEN
				ready <= '0';
				CS_n  <= '0';
				DQ_out_dbg <= x"E0E0E0E0";
				byte_counter <= byte_counter + 1;
			END IF;
			IF (byte_counter >= 1 and byte_counter < 5) THEN
				DQ_out_dbg <= (others => '0');
				byte_counter <= byte_counter + 1;
			END IF;	
			IF  byte_counter = 5 THEN
				IF id_register ='0' THEN
					DQ_out_dbg <= x"00000000";
				ELSE	
					DQ_out_dbg <= x"01010101";
				END IF;
				byte_counter <= byte_counter + 1;
			END IF;					
			IF byte_counter = 6 THEN
				DQ_out_dbg <= (others => 'Z');
				byte_counter <= 0;
				state <=reading_id;
			END IF;
		END IF;
		IF (state = reading_id and rwds_in_dbg'event) THEN -- 'event
			IF  byte_counter = 0 THEN
				IF (DQ_in_dbg = x"0E0E0E0E" and id_register = '0') or ( DQ_in_dbg = x"00000000" and id_register = '1') THEN 
					byte_counter <= byte_counter + 1;
					id_error <='0';
				ELSE
					id_error <='1';
					state <= state_error;
				END IF;
			END IF;
			IF byte_counter = 1 THEN
				IF (DQ_in_dbg = x"86868686" and id_register = '0') or ( DQ_in_dbg = x"01010101" and id_register = '1') THEN 
					byte_counter <= byte_counter + 1;
				ELSE
					id_error <='1';
					state <= state_error;
				END IF;
			END IF; -- it will repeat the same 2 bytes again so we will just ignore them
			IF (byte_counter > 1 and byte_counter < 4) THEN
				byte_counter <= byte_counter + 1;
			END IF;	
			IF (byte_counter = 4) THEN
				byte_counter <= 0;
				if id_register = '0' THEN
					id_register <= '1';
					state <= requesting_id;
				ELSE
					id_register <= '0';
					state <= writing_config;
				END IF;
				CS_n <= '1';
			END IF;	
		END IF;				
		--- WRITING CONFIGURATION REGISTERS --- Configuration register writing has no latency, so we can send the data after the command so we will write 8 bytes
		IF (state = writing_config and clk_system'event and clk_system = '0') THEN -- this clocking puts the data centered with the ram clock's edges
			IF (byte_counter = 0 and clk_ram = '0') THEN
				CS_n  <= '0';
				DQ_out_dbg <= x"60606060";
				byte_counter <= byte_counter + 1;
			END IF;
			IF  byte_counter = 1 THEN
				DQ_out_dbg <= x"00000000";
				byte_counter <= byte_counter + 1;
			END IF;	
			IF  byte_counter = 2 THEN
				DQ_out_dbg <= x"01010101";
				byte_counter <= byte_counter + 1;
			END IF;		
			IF  (byte_counter = 3 or byte_counter = 4)  THEN
				DQ_out_dbg <= x"00000000";
				byte_counter <= byte_counter + 1;
			END IF;		
			IF  byte_counter = 5   THEN
				IF id_register = '0' THEN
					DQ_out_dbg <= x"00000000";
				ELSE
					DQ_out_dbg <= x"01010101";
				END IF;
				byte_counter <= byte_counter + 1;
			END IF;		
			IF  byte_counter = 6   THEN  -- here starts the data with no latency
				IF id_register = '0' THEN
					DQ_out_dbg <= x"DFDFDFDF"; -- normal operation (1) and 27 ohm drive strength (101), next 4 bits reserved and should be set to 1 (F)
				ELSE
					DQ_out_dbg <= x"FFFFFFFF"; -- Reserved
				END IF;
				byte_counter <= byte_counter + 1;
			END IF;		
			IF  byte_counter = 7   THEN 
				IF id_register = '0' THEN
					DQ_out_dbg <= x"ECECECEC"; -- 3 clock latency (E) 85 MHz max freq, hybrid burst (default 1, but doesn't matter), and burstlength 00 for 128
				ELSE
					DQ_out_dbg <= x"81818181"; -- reserved (1) differential clock (0) refresh whole array (000) refresh interval (01) is read only anyway
				END IF;
				byte_counter <= byte_counter + 1;
			END IF;		
			IF  byte_counter = 8 THEN -- we go to the second register or to the next state
				IF id_register = '0' THEN
					id_register <= '1'; 
				ELSE
					state <= idle_state;
					DQ_out_dbg <= (others => 'Z');
				END IF;
				byte_counter <= 0;
				CS_n <= '1';
			END IF;		
		END IF;
		--- WAITING FOR THE USER TO READ OR WRITE REQUEST ---
		IF state = idle_state THEN
			ready <= '1';
			IF write_start = '1' THEN
				starting_address_internal <= start_address;
				state <= writing_data_setup;
				ready <= '0';
			END IF;
			IF read_start = '1' THEN
				starting_address_internal <= start_address;
				state <= reading_data_setup;
				ready <= '0';
			END IF;		
		END IF;
		---  WRITING CYCLE ---
		-- setup
		IF (state = writing_data_setup and clk_system'event and clk_system = '0') THEN -- this clocking puts the data centered with the ram clock's edges
			-- First we have to set up the memory, for 6 bytes
			IF (byte_counter = 0 and clk_ram = '0') THEN
				CS_n  <= '0';
				-- CA47..40
				DQ_out_dbg <= x"20202020"; -- 0010 0000, write memory linear and zeros from unusable memory bits
				byte_counter <= byte_counter + 1;
			END IF;
			IF  byte_counter = 1 THEN
				-- CA39..32  three 0's and A23..A19
				DQ_out_dbg(31 downto 24) <= "000"&starting_address_internal(23 downto 19);
				DQ_out_dbg(23 downto 16) <= "000"&starting_address_internal(23 downto 19);
				DQ_out_dbg(15 downto 8)  <= "000"&starting_address_internal(23 downto 19);
				DQ_out_dbg(7 downto 0) 	 <= "000"&starting_address_internal(23 downto 19);
				byte_counter <= byte_counter + 1;
			END IF;	
			IF  byte_counter = 2 THEN
				-- CA31..24   A18..A11
				DQ_out_dbg(31 downto 24) <= starting_address_internal(18 downto 11);
				DQ_out_dbg(23 downto 16) <= starting_address_internal(18 downto 11);
				DQ_out_dbg(15 downto 8)  <= starting_address_internal(18 downto 11);
				DQ_out_dbg(7 downto 0) 	 <= starting_address_internal(18 downto 11);
				byte_counter <= byte_counter + 1;
			END IF;
			IF  byte_counter = 3 THEN
				-- CA23..16   A10..A3
				DQ_out_dbg(31 downto 24) <= starting_address_internal(10 downto 3);
				DQ_out_dbg(23 downto 16) <= starting_address_internal(10 downto 3);
				DQ_out_dbg(15 downto 8)  <= starting_address_internal(10 downto 3);
				DQ_out_dbg(7 downto 0) 	 <= starting_address_internal(10 downto 3);
				byte_counter <= byte_counter + 1;
			END IF;
			IF  byte_counter = 4 THEN
				-- CA15..8   reserved and should be 0
				DQ_out_dbg <= x"00000000";
				byte_counter <= byte_counter + 1;
			END IF;
			IF  byte_counter = 5 THEN
				-- CA7..0   7..3 reserved should be 0 2..0 is lower column address A2..A0
--				DQ_out_dbg <= (26..24|18..16|10..8|2..0  => starting_address_internal(2..0), others => '0');
				DQ_out_dbg(31 downto 24) <= "00000"&starting_address_internal(2 downto 0);
				DQ_out_dbg(23 downto 16) <= "00000"&starting_address_internal(2 downto 0);
				DQ_out_dbg(15 downto 8)  <= "00000"&starting_address_internal(2 downto 0);
				DQ_out_dbg(7 downto 0)   <= "00000"&starting_address_internal(2 downto 0);
				byte_counter <= byte_counter + 1;
			END IF;
			IF  (byte_counter > 5 and byte_counter < 15) THEN -- because of the 2*3 latency *2 for the clock's ratio + 4 for 
				DQ_out_dbg <= (others => 'Z');
				byte_counter <= byte_counter + 1;			  -- the bytes counted before the latency time begins - 1 for 0 indexing
				IF  (byte_counter = 13) THEN
					rwds_out_dbg <= '0'; -- we do this here to provide data mask preables
				END IF;				
			END IF;
			IF  (byte_counter = 15) THEN
				byte_counter <= 0;
				state <= writing_to_ram;
			END IF;
		END IF;	
		-- actual writing
		IF (state = writing_to_ram and clk_system'event and clk_system = '0') THEN -- this clocking puts the data centered with the ram clock's edges
			IF (write_fifo_empty = '0' and byte_counter < 128) THEN
				write_fifo_data_rd_enable <= '1';
				DQ_out_dbg <= write_fifo_data; -- we can do this in this clock cycle becaus it is a FWFT
				byte_counter <= byte_counter + 1;
			END IF;		
			IF byte_counter = 128 THEN
				write_fifo_data_rd_enable <= '0'; 
				DQ_out_dbg <= (others => 'Z'); 
				byte_counter <= 0;
				CS_n <= '1';
				state <= idle_state;
				ready <= '1';
				starting_address_internal <= (others => '0');
				rwds_out_dbg <= 'Z';
			END IF;
		END IF;			

		---  READING CYCLE ---
		-- setup
		IF (state = reading_data_setup and clk_system'event and clk_system = '0') THEN -- this clocking puts the data centered with the ram clock's edges
			-- First we have to set up the memory, for 6 bytes
			IF  (byte_counter = 0 and clk_ram = '0') THEN
				CS_n <= '0';
				-- CA47..40
				DQ_out_dbg <= x"A0A0A0A0"; -- 1010 0000, read memory linear and zeros from unusable memory bits
				byte_counter <= byte_counter + 1;
			END IF;
			IF  byte_counter = 1 THEN
				-- CA39..32  three 0's and A23..A19
				DQ_out_dbg(31 downto 24) <= "000"&starting_address_internal(23 downto 19);
				DQ_out_dbg(23 downto 16) <= "000"&starting_address_internal(23 downto 19);
				DQ_out_dbg(15 downto 8)  <= "000"&starting_address_internal(23 downto 19);
				DQ_out_dbg(7 downto 0) 	 <= "000"&starting_address_internal(23 downto 19);
				byte_counter <= byte_counter + 1;
			END IF;	
			IF  byte_counter = 2 THEN
				-- CA31..24   A18..A11
				DQ_out_dbg(31 downto 24) <= starting_address_internal(18 downto 11);
				DQ_out_dbg(23 downto 16) <= starting_address_internal(18 downto 11);
				DQ_out_dbg(15 downto 8)  <= starting_address_internal(18 downto 11);
				DQ_out_dbg(7 downto 0) 	 <= starting_address_internal(18 downto 11);
				byte_counter <= byte_counter + 1;
			END IF;
			IF  byte_counter = 3 THEN
				-- CA23..16   A10..A3
				DQ_out_dbg(23 downto 16) <= starting_address_internal(10 downto 3);
				DQ_out_dbg(15 downto 8)  <= starting_address_internal(10 downto 3);
				DQ_out_dbg(7 downto 0) 	 <= starting_address_internal(10 downto 3);
				byte_counter <= byte_counter + 1;
			END IF;
			IF  byte_counter = 4 THEN
				-- CA15..8   reserved and should be 0
				DQ_out_dbg <= x"00000000";
				byte_counter <= byte_counter + 1;
			END IF;
			IF  byte_counter = 5 THEN
				-- CA7..0   7..3 reserved should be 0 2..0 is lower column address A2..A0
				DQ_out_dbg(31 downto 24) <= "00000"&starting_address_internal(2 downto 0);
				DQ_out_dbg(23 downto 16) <= "00000"&starting_address_internal(2 downto 0);
				DQ_out_dbg(15 downto 8)  <= "00000"&starting_address_internal(2 downto 0);
				DQ_out_dbg(7 downto 0)   <= "00000"&starting_address_internal(2 downto 0);
				byte_counter <= byte_counter + 1;
			END IF;
			IF  (byte_counter > 5 and byte_counter < 16) THEN -- because of the 2*3 latency *2 for the clock's ratio + 4 for 
				byte_counter <= byte_counter + 1;			  -- the bytes counted before the latency time begins -1 for 0 indexing
				DQ_out_dbg <= (others => 'Z');							
			END IF;
			IF  (byte_counter = 15) THEN
				byte_counter <= 0;
				state <= reading_from_ram;
			END IF;
		END IF;			
		-- actual reading
		IF (state = reading_from_ram and rwds_in_dbg'event) THEN
			IF (read_fifo_full = '0' and byte_counter < 128) THEN
				read_fifo_wr_enable <= '1';
				read_fifo_data <= DQ_in_dbg;			
				byte_counter <= byte_counter + 1;
			END IF;		
			IF byte_counter = 128 THEN
				read_fifo_wr_enable <= '0'; 
				byte_counter <= 0;
				CS_n <= '1';
				state <= idle_state;
				ready <= '1';
				starting_address_internal <= (others => '0');
			END IF;		
		END IF;	
	END IF;
END PROCESS;

-- /DBG
codificacion_estados : process (state)
begin
	if state = requesting_id  then	
		estado_dbg <= "0001";
	end if;
	if state = reading_id  then	
		estado_dbg <= "0010";
	end if;
	if state = writing_config then	
		estado_dbg <= "0011";
	end if;
	if state = idle_state then	
		estado_dbg <= "0100";
	end if;	
	if state = writing_data_setup then	
		estado_dbg <= "0101";
	end if;
	if state = writing_to_ram then	
		estado_dbg <= "0110";
	end if;
	if state = reading_data_setup then	
		estado_dbg <= "0111";
	end if;
	if state = reading_from_ram then	
		estado_dbg <= "1000";
	end if;
	if state = state_error then
		estado_dbg <= "1111";		
	end if;	
end process;

END arc;