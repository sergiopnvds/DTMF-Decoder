library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--use IEEE.MATH_REAL.ALL;
--use ieee.numeric_std.all;

entity bancoDeFiltros is
Port(  inputSignal : in signed(31 downto 0);
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
end bancoDeFiltros;

architecture Behavioral of bancoDeFiltros is

  component filtro697
    port(clk : in std_logic;
	       flag205 : in std_logic;
			 inputSignal : in signed(31 downto 0);
			 output : out signed(31 downto 0));
  end component;
  
    component filtro770
    port(clk : in std_logic;
	       flag205 : in std_logic;
			 inputSignal : in signed(31 downto 0);
			 output : out signed(31 downto 0));
  end component;
  
    component filtro852
    port(clk : in std_logic;
	       flag205 : in std_logic;
			 inputSignal : in signed(31 downto 0);
			 output : out signed(31 downto 0));
  end component;
  
    component filtro941
    port(clk : in std_logic;
	       flag205 : in std_logic;
			 inputSignal : in signed(31 downto 0);
			 output : out signed(31 downto 0));
  end component;
  
    component filtro1209
    port(clk : in std_logic;
	       flag205 : in std_logic;
			 inputSignal : in signed(31 downto 0);
			 output : out signed(31 downto 0));
  end component;
  
    component filtro1336
    port(clk : in std_logic;
	       flag205 : in std_logic;
			 inputSignal : in signed(31 downto 0);
			 output : out signed(31 downto 0));
  end component;
  
    component filtro1477
    port(clk : in std_logic;
	       flag205 : in std_logic;
			 inputSignal : in signed(31 downto 0);
			 output : out signed(31 downto 0));
  end component;
  
    component filtro1633
    port(clk : in std_logic;
	       flag205 : in std_logic;
			 inputSignal : in signed(31 downto 0);
			 output : out signed(31 downto 0));
  end component;

begin

  filt697 : filtro697
    port map(
	   clk => clk,
	   flag205 => flag205,
		inputSignal => inputSignal,
		output => output1);
  
  filt770 : filtro770
    port map(
	   clk => clk,
	   flag205 => flag205,
		inputSignal => inputSignal,
		output => output2);
		
  filt852 : filtro852
    port map(
	   clk => clk,
	   flag205 => flag205,
		inputSignal => inputSignal,
		output => output3);
		
  filt941 : filtro941
    port map(
	   clk => clk,
	   flag205 => flag205,
		inputSignal => inputSignal,
		output => output4);
		
  filt1209 : filtro1209
    port map(
	   clk => clk,
	   flag205 => flag205,
		inputSignal => inputSignal,
		output => output5);
		
  filt1336 : filtro1336
    port map(
	   clk => clk,
	   flag205 => flag205,
		inputSignal => inputSignal,
		output => output6);
		
  filt1477 : filtro1477
    port map(
	   clk => clk,
	   flag205 => flag205,
		inputSignal => inputSignal,
		output => output7);
		
  filt1633 : filtro1633
    port map(
	   clk => clk,
	   flag205 => flag205,
		inputSignal => inputSignal,
		output => output8);

end Behavioral;

