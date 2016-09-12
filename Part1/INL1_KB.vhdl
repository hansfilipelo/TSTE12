

entity INL1_KB is
    port (
            A : in BIT_VECTOR(3 downto 0);
            B : in BIT;
            Y : out BIT_VECTOR(3 downto 0)
         );
end INL1_KB;

architecture KB of INL1_KB is
begin
    process(A, B)
        VARIABLE tmp : BIT_VECTOR(3 downto 0);
    begin
        for I in 0 to 3 loop
            IF A(I) /= B THEN
                tmp(I) := '1';
            ELSE
                tmp(I) := '0';
            END IF;
        END loop;
        Y <= tmp;
    end process;
end KB;

