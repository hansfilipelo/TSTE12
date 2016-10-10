library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;


entity INL3_KC is
    port (
    D : in bit;
    R : in bit;
    C : in bit;
    Q : out bit);
end INL3_KC;

architecture KC of INL3_KC is
begin
    process(C)
        VARIABLE state : bit_vector(2 downto 0) := "000";
    begin
        
        if (C'event and C='1') then
            if R = '1' then
                Q <= '0';
                state := "000";
                
            else 
                state := state(1 downto 0) & D;
                if state = "011" then
                    Q <= '1';
                else
                    Q <= '0';
                end if;
            end if;

                
        end if;
    end process;
end KC;

