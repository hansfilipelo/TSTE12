library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;
use work.INL3_KB.all;

entity tb_b is
    port (
    A : in std_logic_vector(15 downto 0);
    Y : out std_logic
);
end tb_b;

architecture tb_b_arch of tb_b is
begin
    process(A)
    begin
	
        Y <= KB(A);
	        
    end process;
end tb_b_arch;

