-- Clock divider
-- divides the input clock by 2
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;


ENTITY clk_div_2 IS
	PORT (
		--inputs
		clk_in : IN STD_LOGIC; --125MHz
		reset : IN STD_LOGIC;
		--outputs
		clk_out: OUT STD_LOGIC
		);
END clk_div_2;

ARCHITECTURE arc OF clk_div_2 IS
	SIGNAL clk_aux : std_logic := '0';
BEGIN
	PROCESS(clk_in, reset)
	BEGIN
		IF(reset='1') THEN
			clk_aux<='0';
		ELSIF (clk_in'event and clk_in='1') THEN
				clk_aux <= not(clk_aux);
		END IF;
	END PROCESS;
	clk_out <= clk_aux;
END arc;