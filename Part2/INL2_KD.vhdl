
LIBRARY ieee;
USE IEEE.std_logic_1164.all;


entity INL2_KD is
    port (
    A : in std_logic;
    B : in std_logic; 
    C : in std_logic; -- Enable / Reset
    Y : out std_logic
);
end INL2_KD;


architecture KD of INL2_KD is

    function is_undefined ( in_logic : std_logic ) return boolean is
    begin
        case in_logic is
            when 'U' | 'X' | 'Z' | 'W' | 'L' | 'H' | '-' => return TRUE;
            when others => NULL;
        end case;
        return FALSE;
    end function;

begin
    process(A, B, C)
    begin
        if is_undefined(A) OR is_undefined(B) OR is_undefined(C)  then
            Y <= 'X';
        elsif A = '0' AND B = '0' AND C = '0' then
            Y <= '1';
        else
            Y <= '0';
        end if;
    end process;
end KD;

