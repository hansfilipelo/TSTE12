library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;


entity INL3_KD is
    port (
    D : in bit_vector(1 to 3);
    R : in bit;
    L : in bit;
    C : in bit;
    Q : out bit_vector(1 to 3));
end INL3_KD;

architecture KD of INL3_KD is
begin
    process(C)
        VARIABLE tmp : unsigned(1 to 3) := to_unsigned(0, 3);
    begin
        
        if (C'event and C='0') then
            
            if R = '1' then
                Q <= "000";
                tmp := to_unsigned(0, 3);
            elsif L = '1' then
                Q <= D;
                tmp := unsigned(to_stdlogicvector(D));
            else
                tmp := tmp + to_unsigned(1, tmp'length);
                Q <= to_bitvector(std_logic_vector(tmp));
            end if;
            
        end if;

    end process;
end KD;

