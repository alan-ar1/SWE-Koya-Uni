----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:59:03 12/10/2023 
-- Design Name: 
-- Module Name:    and_gate_three_one - Behavioral 
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

