library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.MATH_REAL.ALL;

entity filtro1663 is

  generic (freq_dtmf: real:= 1663.0;
			  freq_sampling: real:= 8000.0);
			  
  port(cl_div : in std_logic;
	     flag205 : in std_logic;
		  inputSignal : in real;
		  output : out real);
		  
end filtro1663;

architecture Behavioral of filtro1663 is

signal q1 : REAL := 0.0;
signal q2 : REAL := 0.0;
	
begin

 process (cl_div)
	
	variable q : REAL := 0.0;
	constant coef : REAL := 2.0*COS(2.0*MATH_PI*freq_dtmf/freq_sampling);
   
	variable tr : REAL := 0.0;
	variable ti : REAL := 0.0;

	constant coefr : REAL := -COS(2.0*MATH_PI*freq_dtmf/freq_sampling);
	constant coefi : REAL := SIN(2.0*MATH_PI*freq_dtmf/freq_sampling);

	begin
		
		if (cl_div = '1') then
			if (flag205 = '1') then
				tr := q1*coefr+q;
				ti := q2*coefi;
				q := tr*tr+ti*ti;
				--actualizacion para una nueva cuenta
				q2	<= 0.0;
				q1 <= 0.0;

			else
				--calculamos suma parcial
				q := inputSignal + (coef*q1) - q2;
				
				--actualizamos valores intermedios
				q2 <= q1;
				q1 <= q;
				
			end if;
			
			--asignamos valores de salida
			output <= q;
			
		end if;
	end process;
end Behavioral;

