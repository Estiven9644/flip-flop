
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity flipflop is
    Port ( D : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Dout : out  STD_LOGIC);
end flipflop;

architecture Behavioral of flipflop is

begin

	PROCESS(CLK,D,RST) begin 
	  if rising_edge(CLK) then
			if(RST='0') then
				Dout <= D;
			elsif(RST='1') then
				Dout<='0'; 
			end if; 
 		end if; 	
	end process;
end Behavioral;

