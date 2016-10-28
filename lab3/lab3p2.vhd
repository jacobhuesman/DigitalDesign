LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY HalfAdder IS
	PORT (
			X    : IN  STD_LOGIC; 
			Y    : IN  STD_LOGIC;
			Cout : OUT STD_LOGIC;
			Sum  : OUT STD_LOGIC
		);
END HalfAdder;

ARCHITECTURE Equations OF HalfAdder IS
	BEGIN
		Cout <= X AND Y;
		Sum  <= X XOR Y;
END Equations;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab3p2 IS
	PORT (
		A  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0); 
		S  : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END lab3p2;

ARCHITECTURE Structure OF lab3p2 IS

	COMPONENT HalfAdder
		PORT (
			X    : IN  STD_LOGIC; 
			Y    : IN  STD_LOGIC;
			Cout : OUT STD_LOGIC;
			Sum  : OUT STD_LOGIC
		);
	END COMPONENT;

	SIGNAL C : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);

	BEGIN
		B <= NOT(A);
		
		FA0: HalfAdder port map (B(0), '1',  C(0), S(0));
		FA1: HalfAdder port map (B(1), C(0), C(1), S(1));
		FA2: HalfAdder port map (B(2), C(1), C(2), S(2));
		FA3: HalfAdder port map (B(3), C(2), OPEN, S(3));

END Structure;