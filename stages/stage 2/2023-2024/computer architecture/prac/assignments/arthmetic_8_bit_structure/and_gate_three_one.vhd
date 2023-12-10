library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate_three_one is
	port(
		a: in std_logic;
		s1: in std_logic;
		s2: in std_logic;
		d: out std_logic);
end and_gate_three_one;

architecture Behavioral of and_gate_three_one is

begin
	d<= a and s1 and s2;

end Behavioral;

