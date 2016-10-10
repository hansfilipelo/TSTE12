library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;


entity INL3_KA is
    port (
    A : in bit_vector(2 downto 0);
    B : in bit_vector(2 downto 0);
    Y : out bit_vector(5 downto 0)
);
end INL3_KA;

architecture KA of INL3_KA is
begin
    process(A, B)
    begin
        Y <= to_bitvector(std_logic_vector(unsigned(to_stdlogicvector(A)) * unsigned(to_stdlogicvector(B))));
    end process;
end KA;

