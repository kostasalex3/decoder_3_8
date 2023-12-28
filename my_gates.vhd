library ieee; 
use ieee.std_logic_1164.all; 


entity my_and is
    port(A : in std_logic;
         B : in std_logic;
         C : in std_logic;
         D : out std_logic
         );
end my_and;

architecture behavioral of my_and is
begin
        D <= A and B and C ;
end behavioral;


library ieee; 
use ieee.std_logic_1164.all; 


entity my_not is
    PORT(A :in std_logic;
         B : out std_logic);
end my_not;

architecture behavioral of my_not is
    begin
    --    process(A)
     --   begin
      --      if A = '1' then
       --         B <= '0';
         --   elsif A = '0' then
           --     B <= '1';
          --  else 
            --    B<= '0';
            --end if;
    B <= not A;
    --end process;

end behavioral;