----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:00 12/10/2023 
-- Design Name: 
-- Module Name:    arthmetic_8_bit_structure - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity arthmetic_8_bit_structure is

	port(
		a: in std_logic_vector(7 downto 0);
		b: in std_logic_vector(7 downto 0);
		s: in std_logic_vector(1 downto 0);
		cin: in std_logic;
		d: out std_logic_vector(7 downto 0);
		cout: out std_logic);
end arthmetic_8_bit_structure;

architecture Behavioral of arthmetic_8_bit_structure is
	component mux
		port(
			x: in std_logic;
			ss: in std_logic_vector(1 downto 0);
			z: out std_logic);
	end component;
	component full_adder
		port(
			x: in std_logic;
			y: in std_logic;
			ci: in std_logic;
			sum: out std_logic;
			co: out std_logic);
	end component;
	
	signal mux_out, c: std_logic_vector(7 downto 0);
	
	begin

	mux1: mux port map(b(0),s, mux_out(0));
	mux2: mux port map(b(1),s, mux_out(1));
	mux3: mux port map(b(2),s, mux_out(2));
	mux4: mux port map(b(3),s, mux_out(3));
	mux5: mux port map(b(4),s, mux_out(4));
	mux6: mux port map(b(5),s, mux_out(5));
	mux7: mux port map(b(6),s, mux_out(6));
	mux8: mux port map(b(7),s, mux_out(7));
	
	fa1: full_adder port map(a(0), mux_out(0), cin, d(0), c(0));
	fa2: full_adder port map(a(1), mux_out(1), c(0), d(1), c(1));
	fa3: full_adder port map(a(2), mux_out(2), c(1), d(2), c(2));
	fa4: full_adder port map(a(3), mux_out(3), c(2), d(3), c(3));
	fa5: full_adder port map(a(4), mux_out(4), c(3), d(4), c(4));
	fa6: full_adder port map(a(5), mux_out(5), c(4), d(5), c(5));
	fa7: full_adder port map(a(6), mux_out(6), c(5), d(6), c(6));
	fa8: full_adder port map(a(7), mux_out(7), c(6), d(7), c(7));

	cout <= c(7);
	
end Behavioral;

