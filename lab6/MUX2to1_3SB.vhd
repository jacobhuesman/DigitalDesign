-- Tri State Buffer High Enable, High Output
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY TRI_STATE_BUF_HEN_HOUT IS
	PORT (
		A  : IN  STD_LOGIC; -- input
		B  : IN  STD_LOGIC; -- enable
		C  : OUT STD_LOGIC  -- output
	);
END TRI_STATE_BUF_HEN_HOUT;

ARCHITECTURE Equation OF TRI_STATE_BUF_HEN_HOUT IS
	BEGIN	
		C <= A WHEN (B = '1') ELSE 'Z';	
END Equation;


-- Tri State Buffer Low Enable, High Output
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY TRI_STATE_BUF_LEN_HOUT IS
	PORT (
		A  : IN  STD_LOGIC; -- input
		B  : IN  STD_LOGIC; -- enable
		C  : OUT STD_LOGIC  -- output
	);
END TRI_STATE_BUF_LEN_HOUT;

ARCHITECTURE Equation OF TRI_STATE_BUF_LEN_HOUT IS
	BEGIN	
		C <= A WHEN (B = '0') ELSE 'Z';	
END Equation;


-- 2 to 1 Multiplexer implemented with Tri State Buffers
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MUX2to1_3SB IS
	PORT (
		I0  : IN  STD_LOGIC; -- Input 1
		I1  : IN  STD_LOGIC; -- Input 2
		A   : IN  STD_LOGIC; -- Select
		Z   : OUT STD_LOGIC  -- Output
	);
END MUX2to1_3SB;

ARCHITECTURE Equation OF MUX2to1_3SB IS
	-- Tri State Buffer High Enable, High Output	
	COMPONENT TRI_STATE_BUF_HEN_HOUT IS
		PORT (
			A  : IN  STD_LOGIC; -- input
			B  : IN  STD_LOGIC; -- enable
			C  : OUT STD_LOGIC  -- output
		);
	END COMPONENT;
	
	-- Tri State Buffer Low Enable, High Output
	COMPONENT TRI_STATE_BUF_LEN_HOUT IS
		PORT (
			A  : IN  STD_LOGIC; -- input
			B  : IN  STD_LOGIC; -- enable
			C  : OUT STD_LOGIC  -- output
		);
	END COMPONENT;

	-- Map Buffers to create a 2 to 1 Multiplexer
	BEGIN	
		BUF1: TRI_STATE_BUF_LEN_HOUT port map (I0, A, Z);
		BUF2: TRI_STATE_BUF_HEN_HOUT port map (I1, A, Z);
		
END Equation;

















