LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MUX4to1 IS
	PORT (
		I0  : IN  STD_LOGIC; 
		I1  : IN  STD_LOGIC;
		I2  : IN  STD_LOGIC; 
		I3  : IN  STD_LOGIC;
		A   : IN  STD_LOGIC;
		B   : IN  STD_LOGIC;
		F   : OUT STD_LOGIC
	);
END MUX4to1;

ARCHITECTURE Equation OF MUX4to1 IS
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
	
	BEGIN	
		MUX1: MUX2to1 port map (I0, I1, B, sig1);
		MUX2: MUX2to1 port map (I2, I3, B, sig2);
		MUX3: MUX2to1 port map (sig1, sig2, A, F);
		
END Equation;