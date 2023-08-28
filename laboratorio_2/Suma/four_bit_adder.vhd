library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity four_bit_adder is
    port(
        a, b: in STD_LOGIC_VECTOR(3 downto 0);
        cin: in STD_LOGIC;
        sum: out STD_LOGIC_VECTOR(3 downto 0);
        cout: out STD_LOGIC
    );
end entity four_bit_adder;

architecture behavioral of four_bit_adder is
    signal c: STD_LOGIC_VECTOR(3 downto 0);
    signal s: STD_LOGIC_VECTOR(3 downto 0);

    component fulladder
        port(
            a, b, cin: in STD_LOGIC;
            s, cout: out STD_LOGIC
        );
    end component;

begin
    FA0: fulladder port map(a(0), b(0), cin, s(0), c(0));
    FA1: fulladder port map(a(1), b(1), c(0), s(1), c(1));
    FA2: fulladder port map(a(2), b(2), c(1), s(2), c(2));
    FA3: fulladder port map(a(3), b(3), c(2), s(3), cout);

    sum <= s;
end architecture behavioral;
