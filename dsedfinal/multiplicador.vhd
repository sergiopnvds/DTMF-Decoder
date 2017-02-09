library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity multiplicador is
Port( clk : in std_logic;
       a : in std_logic_vector(31 downto 0);
		 b : in std_logic_vector(31 downto 0);
		 producto : out std_logic_vector(31 downto 0)); 
end multiplicador;

architecture Behavioral of multiplicador is


signal uno  : std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
signal unos : std_logic_vector(31 downto 0) := "11111111111111111111111111111111";

begin
  process (clk)
  variable aux : std_logic_vector(31 downto 0);
  
  begin
  if (clk ' event and clk = '1') then
	 
	 if (a(31)='0' and b(31)='0') then
		producto <= a*b;
	 elsif (a(31)='1' and b(31)='1') then
	   producto <= ((a - uno) xor unos) * ((b - uno) xor unos);
	 elsif (a(31)='1') then
	   aux := ((a - uno) xor unos) * b;
	   producto <= (aux xor unos) + uno;
	 else
	   aux := ((b - uno) xor unos) * a;
	   producto <= (aux xor unos) + uno;
	 end if;
	 end if;
  end process;


end Behavioral;