LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Tb_clock_divider IS
	PORT(
	clk_in_test  : IN std_logic;
	reset_test : IN std_logic;
	clk_out_test : OUT std_logic
);
END Tb_clock_divider;
 
ARCHITECTURE behavior OF Tb_clock_divider IS
-- Component Declaration for the Unit Under Test (UUT)
COMPONENT clk_div_2
PORT(
clk_in : IN std_logic;
reset: IN std_logic;
clk_out : OUT std_logic
);
END COMPONENT;
 
BEGIN
 
-- Instantiate the Unit Under Test (UUT)
uut: clk_div_2 PORT MAP (
clk_in => clk_in_test,
reset => reset_test,
clk_out => clk_out_test
);
  
  
END;