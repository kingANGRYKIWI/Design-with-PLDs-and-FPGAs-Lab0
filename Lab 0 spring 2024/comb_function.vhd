-- comb_function.vhd

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
  
  F <= (NOT(B) and C) or (B and NOT(C))
       -- synthesis_off
       after 6 ns 
       -- synthesis_on
       ;
  G <= (A and NOT(C)) or (NOT(A) and B) or (NOT(A) and C) 
       -- synthesis_off
           after 7 ns 
       -- synthesis_on
       ;
end;


