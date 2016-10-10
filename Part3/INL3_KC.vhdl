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
        VARIABLE state : integer := 0;
    begin
        
        if (C'event and C='1') then
            
            if state = 0 then
                Q <= '0';
                if D = '0' then
                    state := 1;
                end if;
            
            elsif state = 1 then
                if D = '1' then
                    state := 2;
                else
                    state := 0;
                end if;

            elsif state = 2 then
                if D = '1' then
                    Q <= '1';
                end if;
                state := 0;
            end if;


        end if;

    end process;
end KC;

