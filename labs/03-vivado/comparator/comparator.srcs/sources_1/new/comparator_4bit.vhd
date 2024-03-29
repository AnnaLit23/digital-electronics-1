
library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for 2-bit binary comparator
------------------------------------------------------------
entity comparator_4bit is
    port(
        b_i           : in  std_logic_vector(4 - 1 downto 0);
        a_i           : in  std_logic_vector(4 - 1 downto 0);-- COMPLETE THE ENTITY DECLARATION
        B_greater_A_o : out std_logic; -- COMPLETE THE ENTITY DECLARATION
        B_equals_A_o  : out std_logic; -- COMPLETE THE ENTITY DECLARATION
        B_less_A_o    : out std_logic  -- B is less than A
    );
end entity comparator_4bit;

------------------------------------------------------------
-- Architecture body for 2-bit binary comparator
------------------------------------------------------------
architecture Behavioral of comparator_4bit is
begin
    B_greater_A_o <= '1' when (b_i > a_i) else '0';-- WRITE "GREATER" ASSIGNMENT HERE
    B_equals_A_o  <= '1' when (b_i = a_i) else '0';-- WRITE "EQUALS" ASSIGNMENT HERE
    B_less_A_o    <= '1' when (b_i < a_i) else '0';

end architecture Behavioral;
