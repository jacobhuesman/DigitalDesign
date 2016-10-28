LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MUX2to1 IS
	PORT (
		I0  : IN  STD_LOGIC; 
		I1  : IN  STD_LOGIC;
		A   : IN  STD_LOGIC;
		Z   : OUT STD_LOGIC
	);
END MUX2to1;

ARCHITECTURE Equation OF MUX2to1 IS

	BEGIN	
		Z <= (( NOT A) AND I0 ) OR ( A AND I1 );
		
END Equation;