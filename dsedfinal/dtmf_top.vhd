library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--use IEEE.MATH_REAL.ALL;
--use ieee.numeric_std.all;

entity dtmf_top is
	Port(clk : in std_logic;
			--outputTop : out signed(7 downto 0);
			inputSignal : in signed(31 downto 0);
			outputTop : out signed(6 downto 0));
end dtmf_top;

architecture Behavioral of dtmf_top is
  
  component counter205
    port( clk : in std_logic;
          flag205 : out std_logic);
  end component;
  
  component bancoDeFiltros
    port( inputSignal : in signed(31 downto 0);
	       flag205 : in std_logic;
			 clk : in std_logic;
			 output1 : out signed(31 downto 0);
			 output2 : out signed(31 downto 0);
			 output3 : out signed(31 downto 0);
			 output4 : out signed(31 downto 0);
			 output5 : out signed(31 downto 0);
			 output6 : out signed(31 downto 0);
			 output7 : out signed(31 downto 0);
			 output8 : out signed(31 downto 0));
  end component;

  component comparador
    port( input1 : in signed(31 downto 0);
			  input2 : in signed(31 downto 0);
			  input3 : in signed(31 downto 0);
			  input4 : in signed(31 downto 0);
			  input5 : in signed(31 downto 0);
			  input6 : in signed(31 downto 0);
			  input7 : in signed(31 downto 0);
			  input8 : in signed(31 downto 0);
			  flag205 : in std_logic;
	       output : out signed(7 downto 0));
  end component;
  
  component maquina_estados
    port (vector_tecla : in  signed (7 downto 0);
           clk : in  STD_LOGIC;
           salida_bcd : out  signed (6 downto 0):="0000000");
	end component;
  
  --falta la maquina de estados y el bcd

--Declaracion de señales auxiliares
--signal clk : std_logic := '0';
signal flag205 : std_logic := '0';
signal salidaFiltro1 :signed(31 downto 0);
signal salidaFiltro2 :signed(31 downto 0);
signal salidaFiltro3 :signed(31 downto 0);
signal salidaFiltro4 :signed(31 downto 0);
signal salidaFiltro5 :signed(31 downto 0);
signal salidaFiltro6 :signed(31 downto 0);
signal salidaFiltro7 :signed(31 downto 0);
signal salidaFiltro8 :signed(31 downto 0);
signal salidaComparador : signed(7 downto 0);
begin

  contador205 : counter205
    port map(
	   clk => clk,
		flag205 => flag205);
  
  filtros : bancoDeFiltros
    port map(
	   clk => clk,
		inputSignal => inputSignal,
		flag205 => flag205,
		output1 => salidaFiltro1,
		output2 => salidaFiltro2,
		output3 => salidaFiltro3,
		output4 => salidaFiltro4,
		output5 => salidaFiltro5,
		output6 => salidaFiltro6,
		output7 => salidaFiltro7,
		output8 => salidaFiltro8);
		
  cmp : comparador
    port map(
	   input1 => salidaFiltro1,
		input2 => salidaFiltro2,
		input3 => salidaFiltro3,
		input4 => salidaFiltro4,
		input5 => salidaFiltro5,
		input6 => salidaFiltro6,
		input7 => salidaFiltro7,
		input8 => salidaFiltro8,
		flag205 => flag205,
		output => salidaComparador);
	
	maquina : maquina_estados
	  port map(
	    vector_tecla => salidaComparador,
		 clk => clk,
		 salida_BCD => outputTop);
		

end Behavioral;