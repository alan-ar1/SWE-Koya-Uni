LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY arthmetic_8_bit_structure_tb IS
END arthmetic_8_bit_structure_tb;
 
ARCHITECTURE behavior OF arthmetic_8_bit_structure_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arthmetic_8_bit_structure
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         s : IN  std_logic_vector(1 downto 0);
         cin : IN  std_logic;
         d : OUT  std_logic_vector(7 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');
   signal s : std_logic_vector(1 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal d : std_logic_vector(7 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arthmetic_8_bit_structure PORT MAP (
          a => a,
          b => b,
          s => s,
          cin => cin,
          d => d,
          cout => cout
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a<= "01101100";
		b<= "10110010";
		s<= "00";
		cin<= '0';

		wait for 100 ns;	
		s<= "00";
		cin<= '1';
		
		wait for 100 ns;	
		s<= "01";
		cin<= '0';
		
		wait for 100 ns;	
		s<= "01";
		cin<= '1';
		
		wait for 100 ns;	
		s<= "10";
		cin<= '0';
		
		wait for 100 ns;	
		s<= "10";
		cin<= '1';
		
		wait for 100 ns;	
		s<= "11";
		cin<= '0';
		
		wait for 100 ns;	
		s<= "11";
		cin<= '1';
		
      

      -- insert stimulus here 

      wait;
   end process;

END;
