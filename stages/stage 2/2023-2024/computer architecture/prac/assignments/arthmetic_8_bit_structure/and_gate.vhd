
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity and_gate is
	port(
		a: in std_logic;
		b: in std_logic;
		c: out std_logic);
end and_gate;

architecture Behavioral of and_gate is

begin

	
	c<= a and b;

end Behavioral;

