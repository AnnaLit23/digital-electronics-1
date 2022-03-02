library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for 2-bit binary comparator
------------------------------------------------------------
entity comparator_4bit is
    port(
        b_i           : in  std_logic_vector(3 - 1 downto 0);
        a_i           : in  std_logic_vector(3 - 1 downto 0);-- COMPLETE THE ENTITY DECLARATION
        c_i           : in  std_logic_vector(3 - 1 downto 0);
        d_i           : in  std_logic_vector(3 - 1 downto 0);
        sel_i         : in  std_logic_vector(2 - 1 downto 0);
        
        f_o           : out std_logic_vector(3 - 1 downto 0) -- COMPLETE THE ENTITY DECLARATION
      
    );
end entity comparator_4bit;

------------------------------------------------------------
-- Architecture body for 2-bit binary comparator
------------------------------------------------------------
architecture Behavioral of comparator_4bit is
begin
  with sel_i select
    f_o <= a_i when "00",  -- If addr_i = "000" then y_o = a_i
           b_i when "01",
           c_i when "10",
           d_i when others; -- All other combinations
end architecture Behavioral;
