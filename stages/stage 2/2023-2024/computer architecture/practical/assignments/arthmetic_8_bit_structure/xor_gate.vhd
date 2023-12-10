library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
	port(
		a: in std_logic;
		b: in std_logic;
		c: out std_logic);
end xor_gate;

architecture Behavioral of xor_gate is

begin
	c <= a xor b;

end Behavioral;

