----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:59:26 12/10/2023 
-- Design Name: 
-- Module Name:    or_gate_four_one - Behavioral 
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

entity or_gate_four_one is
		port(
			a: in std_logic_vector(3 downto 0);
			c: out std_logic);

end or_gate_four_one;

architecture Behavioral of or_gate_four_one is

begin
	
	c<= a(0) or a(1) or a(2) or a(3);


end Behavioral;

