
LIBRARY ieee;
USE IEEE.std_logic_1164.all;


entity INL2_KC is
    port (
    C : in bit;
    D : in std_logic; 
    E : in bit; -- Enable / Reset
    Q : out std_logic
);
end INL2_KC;

architecture KC of INL2_KC is
begin
    process(C, E)
        VARIABLE H : std_logic;
    begin
        if (C'event and C='0') then
            H := D;
        end if;

        if E = '1' then
            Q <= H;
        else
            Q <= 'Z';
        end if;
    end process;
end KC;

