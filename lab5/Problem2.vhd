LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Problem2 IS
	PORT (
		a  : IN  STD_LOGIC; 
		b  : IN  STD_LOGIC;
		c  : IN  STD_LOGIC;
		d  : IN  STD_LOGIC;
		F  : OUT STD_LOGIC
	);
END Problem2;

ARCHITECTURE Equation OF Problem2 IS
	COMPONENT MUX2to1 IS
		PORT (
			I0  : IN  STD_LOGIC; 
			I1  : IN  STD_LOGIC;
			A   : IN  STD_LOGIC;
			Z   : OUT STD_LOGIC
		);
	END COMPONENT;

	SIGNAL sig1 : STD_LOGIC;
	SIGNAL sig2 : STD_LOGIC;
	SIGNAL sig3 : STD_LOGIC;
	
	BEGIN	
		MUX1: MUX2to1 port map (d, '0', c, sig1);
		MUX2: MUX2to1 port map (b, '1', sig1, sig2);
		MUX3: MUX2to1 port map (c, '0', b, sig3);
		MUX4: MUX2to1 port map (sig2, sig3, a, F);
		
END Equation;