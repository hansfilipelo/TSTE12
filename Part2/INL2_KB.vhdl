

entity INL2_KB is
    port (
    A : in bit;
    B : in bit; 
    Y : out bit
);
end INL2_KB;

architecture KB of INL2_KB is
begin
    process(A, B)
    begin
        if A = '1' OR B = '1' then
            Y <= '1' after 3 ns;
        else
            Y <= '0' after 5 ns;
        end if;
    end process;
end KB;

