library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity filtro1336 is

--  generic (freq_dtmf: real:= 1209.0;
--			  freq_sampling: real:= 8000.0);
			  
  port(clk : in std_logic;
	     flag205 : in std_logic;
		  inputSignal : in signed(31 downto 0);
		  output : out signed(31 downto 0));
		  
end filtro1336;

architecture Behavioral of filtro1336 is

signal q1 : signed(31 downto 0) := "00000000000000000000000000000000";
signal q2 : signed(31 downto 0) := "00000000000000000000000000000000";
constant coef : signed(31 downto 0) := "00000000000000001111111100010010";--2.0*COS(2.0*MATH_PI*freq_dtmf/freq_sampling);
signal resultado : signed(31 downto 0);

begin


 process (clk)
	
	variable q : signed(31 downto 0) := "00000000000000000000000000000000";
   
	variable tr : signed(31 downto 0) := "00000000000000000000000000000000";
	variable ti : signed(31 downto 0) := "00000000000000000000000000000000";

	constant coefr : signed(31 downto 0) := "11111111111111111000010110111011";---COS(2.0*MATH_PI*freq_dtmf/freq_sampling);
	constant coefi : signed(31 downto 0) := "00000000000000001101110111111000";--SIN(2.0*MATH_PI*freq_dtmf/freq_sampling);

	begin
		
		if (clk ' event and clk = '1') then
			if (flag205 = '1') then
				--tr := (q1*coefr)+q;
				--ti := q2*coefi;
				--q := (tr*tr)+(ti*ti);
				tr := resize(shift_right(q1*coefr,16),32)+q;
				ti := resize(shift_right(q2*coefi,16),32);
				q := resize(shift_right(ti*ti,16),32) + resize(shift_right(tr*tr,16),32);
				--actualizacion para una nueva cuenta
				q2	<= "00000000000000000000000000000000";
				q1 <= "00000000000000000000000000000000";

			else
				--calculamos suma parcial
				--q := inputSignal + (coef*q1) - q2;
				q := inputsignal + resize(shift_right(coef*q1,16),32) - q2; 
				
				--actualizamos valores intermedios
				q2 <= q1;
				q1 <= q;
				
			end if;
			
			--asignamos valores de salida
			output <= q;			
		end if;
	end process;
end Behavioral;