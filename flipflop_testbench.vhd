
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY flipflop_testbench IS
END flipflop_testbench;
 
ARCHITECTURE behavior OF flipflop_testbench IS 
 
    COMPONENT flipflop
    PORT(
         D : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         Dout : OUT  std_logic
        );
    END COMPONENT;
    

  
   signal D : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';

 
   signal Dout : std_logic;

   
   
 
BEGIN
 
   uut: flipflop PORT MAP (
          D => D,
          RST => RST,
          CLK => CLK,
          Dout => Dout
        ); 

   CLK_process :process
   begin
		CLK <= '0';
		wait for 10 ns;
		CLK <= '1';
		wait for 10 ns;
   end process;	
	
  stim_proc: process 
   begin		
       RST<='0';
		 D<='1';
      wait for 20 ns;
		 RST<='1';
		 D<='1';
      wait for 20 ns;
		 RST<='0';
		 D <='0';
      wait for 20 ns;
		 RST<='1';
		 D <='1'; 
		wait for 20 ns;
      wait; 
   end process;

END;

