library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity or_gate_four_one is
		port(
			a: in std_logic_vector(3 downto 0);
			c: out std_logic);

end or_gate_four_one;

architecture Behavioral of or_gate_four_one is

begin
	
	c<= a(0) or a(1) or a(2) or a(3);


end Behavioral;

