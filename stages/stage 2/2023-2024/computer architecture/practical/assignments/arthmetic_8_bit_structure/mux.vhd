library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
	port(
		x: in std_logic;
		ss: in std_logic_vector(1 downto 0);
		z: out std_logic);
end mux;

architecture Behavioral of mux is

	component and_gate_three_one
		port(
			a: in std_logic;
			s1: in std_logic;
			s2: in std_logic;
			d: out std_logic);
	end component;
	component or_gate_four_one
		port(
			a: in std_logic_vector(3 downto 0);
			c: out std_logic);
	end component;
	signal and_out: std_logic_vector(3 downto 0);
	
	begin
	a1: and_gate_three_one port map(x, not ss(0), not ss(1), and_out(0));
	a2: and_gate_three_one port map(not x, ss(0), not ss(1), and_out(1));
	a3: and_gate_three_one port map('0', not ss(0), ss(1), and_out(2));
	a4: and_gate_three_one port map('1', ss(0), ss(1), and_out(3));
	
	b1: or_gate_four_one port map(and_out, z);
	


end Behavioral;

