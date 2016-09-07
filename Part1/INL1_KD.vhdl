

entity INL1_KD is
    port (
             A : in BIT_VECTOR(3 downto 0);
             B : in BIT_VECTOR(2 downto 1);
             Y : out BIT
         );
end INL1_KD;

architecture KD of INL1_KD is
begin
    process(A)
    begin
        case B is
            when "00"      =>  Y <= A(0);
            when "01" =>  Y <= A(1);
            when "10" =>  Y <= A(2);
            when others =>  Y <= A(3);
        end case;
    end process;
end KD;

