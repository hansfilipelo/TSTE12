

entity INL1_KA is
    port (
            A : in BIT;
            B : in BIT;
            C : in BIT;
            Y : out BIT
         );
end INL1_KA;

architecture KA of INL1_KA is
begin
    process(A, B , C)
    begin
        IF A = '1' AND B = '1' AND C = '1' THEN
            Y <= '0';
        ELSE
            Y <= '1';
        END IF;
    end process;
end KA;

