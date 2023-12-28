library ieee; 
use ieee.std_logic_1164.all;



entity decoder_3_8 is
    PORT(A : IN std_logic;
         B : IN std_logic;
         C : IN std_logic;
         Y0 : OUT std_logic;
         Y1 : OUT std_logic;
         Y2 : OUT std_logic;
         Y3 : OUT std_logic;
         Y4 : OUT std_logic;
         Y5 : OUT std_logic;
         Y6 : OUT std_logic;
         Y7 : OUT std_logic
    );
END decoder_3_8;

architecture structural of decoder_3_8 is
signal my_not_A : std_logic;
signal my_not_B : std_logic;
signal my_not_C : std_logic;

COMPONENT decoder_2_4 is
    port(A :in std_logic;
        B :in std_logic;
        EN:in std_logic;
        Y3:out std_logic;
        Y2:out std_logic;
        Y1:out std_logic;
        Y0:out std_logic
);
end COMPONENT;

COMPONENT my_not is
    PORT(A :in std_logic;
         B : out std_logic);
end COMPONENT;



begin
    
not_A : my_not PORT MAP (A,my_not_A);
not_B : my_not PORT MAP(B,my_not_B);
not_C : my_not PORT MAP (C,my_not_C);

A_DEC : decoder_2_4 PORT MAP(A,B,C,Y3,Y2,Y1,Y0); 
B_DEC : decoder_2_4 PORT MAP(A,B,my_not_C,Y4,Y5,Y6,Y7);




end structural;    