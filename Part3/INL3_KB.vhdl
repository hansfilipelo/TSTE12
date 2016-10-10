library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;

package INL3_KB is
    function KB (A : std_logic_vector) return std_logic;
end;

package body INL3_KB is

    function KB (A : std_logic_vector) return std_logic is
        VARIABLE one_h_count : integer := 0;
        VARIABLE zero_l_count : integer := 0;
    begin
        for I in 0 to A'length-1 loop
            if A(I) = 'L' or A(I) = '0' then
                zero_l_count := zero_l_count + 1;
            elsif A(I) = 'H' or A(I) = '1' then
                one_h_count := one_h_count + 1;
            else
                return 'X';
            end if;
        end loop;

        if one_h_count > zero_l_count then
            return '1';
        elsif zero_l_count > one_h_count then
            return '0';
        else
            return 'W';
        end if;
    end function;

end package body;
