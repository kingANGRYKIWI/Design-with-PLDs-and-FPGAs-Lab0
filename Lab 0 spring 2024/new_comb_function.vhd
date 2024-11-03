-- new_comb_function.vhd

--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
library IEEE,WORK;
        use IEEE.STD_LOGIC_1164.ALL;
entity COMB_FUNC is
        port(   A,B,C: in std_logic;
                F,G: out std_logic);
end; 

architecture DATAFLOW_ARCH of COMB_FUNC is
begin
  
    F <= (NOT(A) and NOT(B) and NOT(C)) or (A and C) or (B and C)
       -- synthesis_off
       after 8 ns 
       -- synthesis_on
       ;
  G <= (NOT(A) and B and NOT(C)) or (A and NOT(B)) or (NOT(B) and C) or (A and C)
       -- synthesis_off
           after 9 ns 
       -- synthesis_on
       ;
end;


