

entity INL1_KC is
    port (
            A : in BIT;
            Y : out BIT
         );
end INL1_KC;

architecture KC of INL1_KC is
begin
    process(A)
    begin
        Y <= not A after 10 ns;
    end process;
end KC;

