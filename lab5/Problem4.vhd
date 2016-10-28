LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Problem4 IS
	PORT (
		a  : IN  STD_LOGIC; 
		b  : IN  STD_LOGIC;
		c  : IN  STD_LOGIC;
		d  : IN  STD_LOGIC;
		F  : OUT STD_LOGIC
	);
END Problem4;

ARCHITECTURE Equation OF Problem4 IS
	COMPONENT MUX4to1 IS
		PORT (
			I0  : IN  STD_LOGIC; 
			I1  : IN  STD_LOGIC;
			I2  : IN  STD_LOGIC; 
			I3  : IN  STD_LOGIC;
			A   : IN  STD_LOGIC;
			B   : IN  STD_LOGIC;
			F   : OUT STD_LOGIC
		);
	END COMPONENT;

	SIGNAL sig1 : STD_LOGIC;
	
	BEGIN	
		MUX1: MUX4to1 port map (b, c, '0', '0', a, d, sig1);
		MUX2: MUX4to1 port map ('1', sig1, sig1, '1', b, c, F);
		
END Equation;