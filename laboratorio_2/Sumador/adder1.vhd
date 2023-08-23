library IEEE;
use IEEE.std_logic_1164.all;


entity adder1 is port(
	suma, carryEntrada : out std_logic;
	a, b, carrySalida : out std_logic;
);
end entity;


architecture arch of adder1 is
begin

	sum <= (a xor b) xor (carryEntrada);
	
	carrySalida <= ((a xor b) and (carryEntrada)) or (a and b);

end architecture;