library ieee; 
use ieee.std_logic_1164.all; 


entity decoder_2_4 is 
        port(A :in std_logic;
             B :in std_logic;
             EN:in std_logic;
             Y3:out std_logic;
             Y2:out std_logic;
             Y1:out std_logic;
             Y0:out std_logic
        );
end decoder_2_4;

--behavioral
architecture behavioral of decoder_2_4 is
begin

    process(A,B,EN)
    variable input_combination: std_logic_vector(1 downto 0);

begin
    input_combination := A & B;
    if(EN = '0') then
        case  input_combination is
            when "00" => Y0 <= '1';
                         Y1 <= '0';
                         Y2 <= '0';
                         Y3 <= '0';
            when "01" => Y1 <= '1';
                         Y2 <= '0';
                         Y3 <= '0';
                         Y0 <= '0';
            when "10" => Y2 <= '1';
                         Y3 <= '0';
                         Y0 <= '0';
                         Y1 <= '0';
            when "11" => Y3 <= '1';
                         Y2 <= '0';
                         Y0 <= '0';
                         Y1 <= '0';
            when others => Y0 <='0';
                           Y1 <='0';
                           Y2 <='0';
                           Y3 <='0';
            end case;
    else
        Y0 <='0';
        Y1 <='0';
        Y2 <='0';
        Y3 <='0';            
end if;
end process;

end behavioral;



--structural arch 
library ieee; 
use ieee.std_logic_1164.all; 

entity decoder_2_4_structural is 
        port(A :in std_logic;
             B :in std_logic;
             EN:in std_logic;
             Y3:out std_logic;
             Y2:out std_logic;
             Y1:out std_logic;
             Y0:out std_logic
        );
end decoder_2_4_structural;

architecture structural of decoder_2_4_structural is
    
SIGNAL C_NOT_A: std_logic := '0' ;
SIGNAL C_NOT_B: std_logic := '0';
SIGNAL C_NOT_EN: std_logic := '0';

COMPONENT my_and   		 
    PORT	(A, B, C  :IN std_logic;
             D :OUT std_logic);
END COMPONENT;

COMPONENT my_not  		 
    PORT	(A  :IN std_logic;
             B :OUT std_logic);
END COMPONENT;


begin

not_A:  my_not PORT MAP(A, C_NOT_A);
not_B:  my_not PORT MAP(B, C_NOT_B);
not_EN:  my_not PORT MAP(EN, C_NOT_EN);

C_YO: my_and PORT MAP(C_NOT_EN,C_NOT_B,C_NOT_A,Y0);
C_Y1: my_and PORT MAP(C_NOT_A,B,C_NOT_EN,Y1  );
C_Y2: my_and PORT MAP(A,C_NOT_B,C_NOT_EN,Y2 );
C_Y3: my_and PORT MAP(A,B,C_NOT_EN,Y3 );






end structural;

--dataflow arch 
library ieee; 
use ieee.std_logic_1164.all; 

entity decoder_2_4_dataflow is 
        port(A :in std_logic;
             B :in std_logic;
             EN:in std_logic;
             Y3:out std_logic;
             Y2:out std_logic;
             Y1:out std_logic;
             Y0:out std_logic
        );
end decoder_2_4_dataflow;


architecture dataflow of decoder_2_4_dataflow is
begin

    Y0 <= not EN and not A and not B;
    Y1 <= not EN and not A and  B;
    Y2 <= not EN and A and not B;
    Y3 <= not EN and A and  B;
end dataflow;
