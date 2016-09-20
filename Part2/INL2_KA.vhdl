

entity INL2_KA is
    port (
    D : in bit_vector(1 to 2);
    C : in bit;
    R : in bit;
    Q : out bit_vector(1 to 2)
);
end INL2_KA;

architecture KA of INL2_KA is
begin
    process(R, C)
    begin
        if R = '1' then
            Q <= "00";
        elsif (C'event and C='1') then
            Q <= D;
        end if;
    end process;
end KA;

