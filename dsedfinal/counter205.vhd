library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter205 is
    Port ( clk : in  STD_LOGIC;
           flag205 : out  STD_LOGIC := '0');
end counter205;

architecture Behavioral of counter205 is

signal count : integer := 0;

begin

	process (clk)
		begin
			if (clk ' event and clk = '1') then 
				flag205 <= '0';
				count <= count + 1;
	 	 
				if (count = 205) then
					flag205 <= '1';
					count <= 0;
				end if;
			end if;
	end process;
end Behavioral;