library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
--use ieee.math_real.all;
--use ieee.numeric_std.all;

entity comparador is
  Port(input1 : in signed(31 downto 0);
		  input2 : in signed(31 downto 0);
		  input3 : in signed(31 downto 0);
		  input4 : in signed(31 downto 0);
		  input5 : in signed(31 downto 0);
		  input6 : in signed(31 downto 0);
		  input7 : in signed(31 downto 0);
		  input8 : in signed(31 downto 0);
		  flag205 : in std_logic;
	     output : out signed(7 downto 0));
end comparador;

architecture Behavioral of comparador is

--  signal i1 : std_logic := '0';
--  signal i2 : std_logic := '0';
--  signal i3 : std_logic := '0';
--  signal i4 : std_logic := '0';
--  signal i5 : std_logic := '0';
--  signal i6 : std_logic := '0';
--  signal i7 : std_logic := '0';
--  signal i8 : std_logic := '0';
--  signal bajas : signed(3 downto 0) := "0000";
--  signal altas : signed(3 downto 0) := "0000";
--  signal bajas_ant : signed(3 downto 0) := "0000";
--  signal altas_ant : signed(3 downto 0) := "0000";
constant umbral : signed(31 downto 0) := "00010000000000000000000000000000"; --1000 no
begin
  --process(input1, input2, input3, input4, input5,
  --input6, input7, input8)
  process (flag205)
--  constant umbral : signed(31 downto 0) := "000000000000000000000011000000000000"; --10000
  
    begin
	 
	 if (flag205 = '1') then
	 
	 if (input1 > umbral) then
	   output(0) <= '1';
	 else
	   output(0) <= '0';
	 end if;
	 
	 if (input2 > umbral) then
	   output(1) <= '1';
	 else
	   output(1)<= '0';
	 end if;
	 
	 if (input3 > umbral) then
	   output(2)<= '1';
	 else
	   output(2)<= '0';
	 end if;
	 
	 if (input4 > umbral) then
	   output(3)<= '1';
	 else
	   output(3)<= '0';
	 end if;
	 
	 if (input5 > umbral) then
	   output(4)<= '1';
	 else
	   output(4)<= '0';
	 end if;
	 
	 if (input6 > umbral) then
	   output(5)<= '1';
	 else
	   output(5)<= '0';
	 end if;
	 
	 if (input7 > umbral) then
	   output(6) <= '1';
	 else
	   output(6)<= '0';
	 end if;
	 
	 if (input8 > umbral) then
	   output(7) <= '1';
	 else
	   output(7) <= '0';
	 end if;
	 
--	 bajas(0) <= i1;
--	 bajas(1) <= i2;
--	 bajas(2) <= i3;
--	 bajas(3) <= i4;
--	 
--	 altas(0) <= i5;
--	 altas(1) <= i6;
--	 altas(2) <= i7;
--	 altas(3) <= i8;
	 
--	 case bajas is
--	   when "0000" => bajas_ant <= bajas; 
--		when "1000" => bajas_ant <= bajas;
--		when "0100" => bajas_ant <= bajas; 
--		when "0010" => bajas_ant <= bajas;
--		when "0001" => bajas_ant <= bajas;
--		when others => bajas <= bajas_ant;
--	end case;
--	
--	 case altas is
--	   when "0000" => altas_ant <= altas; 
--		when "1000" => altas_ant <= altas;
--		when "0100" => altas_ant <= altas; 
--		when "0010" => altas_ant <= altas;
--		when "0001" => altas_ant <= altas;
--		when others => altas <= altas_ant; 
--	end case;

--    output(0) <= bajas(0);
--	 output(1) <= bajas(1);
--	 output(2) <= bajas(2);
--	 output(3) <= bajas(3);
--	 output(4) <= altas(0);
--	 output(5) <= altas(1);
--	 output(6) <= altas(2);
--	 output(7) <= altas(3);
	 
	 end if;
  end process;
end Behavioral;