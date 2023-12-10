----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:31:32 12/10/2023 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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

entity full_adder is
	port(
		x: in std_logic;
		y: in std_logic;
		ci: in std_logic;
		sum: out std_logic;
		co: out std_logic);
end full_adder;

architecture Behavioral of full_adder is

	component xor_gate
	port(
		a: in std_logic;
		b: in std_logic;
		c: out std_logic);
	end component;
	
	component and_gate
	port(
		a: in std_logic;
		b: in std_logic;
		c: out std_logic);
	end component;
	
	component or_gate
	port(
		a: in std_logic;
		b: in std_logic;
		c: out std_logic);
	end component;
	
	signal s_out: std_logic_vector(2 downto 0);
	begin
	j1: xor_gate port map(x, y, s_out(0));
	j2: xor_gate port map(s_out(0), ci, sum);
	
	k1: and_gate port map(x, y, s_out(1));
	k2: and_gate port map(ci, s_out(0), s_out(2));
	k3: or_gate port map(s_out(1), s_out(2), co);
	
end Behavioral;

