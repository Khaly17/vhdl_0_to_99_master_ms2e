library ieee ;
use ieee . std_logic_1164 .all ;

entity m2se is
	port (
		digit : in integer range 0 to 15;
		digit1 : in integer range 0 to 15;
		digit2 : in integer range 0 to 15;
		digit3 : in integer range 0 to 15;
		
		segments : out std_logic_vector (6 downto 0);
		segments1 : out std_logic_vector (6 downto 0);
		segments2 : out std_logic_vector (6 downto 0);
		segments3 : out std_logic_vector (6 downto 0)
	);
end;

architecture behave of m2se is
begin
	with digit select
	segments <=
	"1000000" when 0 ,
	"1111001" when 1 ,
	"0100100" when 2 ,
	"0110000" when 3 ,
	"0011001" when 4 ,
	"0010010" when 5 ,	
	"0000010" when 6 ,
	"1111000" when 7 ,		
	"0000000" when 8 ,
	"0000110" when 9 ,
	"0001000" when 10 ,
	"0000011" when 11 ,
	"1000110" when 12 ,	
	"0100001" when 13 ,
	"0000110" when 14 ,	
	"0001110" when 15 ,	

	"1111111" when others ;
	
	with digit1 select
	segments1 <=
	"1000000" when 0 ,
	"1111001" when 1 ,
	"0100100" when 2 ,
	"0110000" when 3 ,
	"0011001" when 4 ,
	"0010010" when 5 ,	
	"0000010" when 6 ,
	"1111000" when 7 ,		
	"0000000" when 8 ,
	"0010000" when 9 ,
	"0001000" when 10 ,
	"0000011" when 11 ,
	"1000110" when 12 ,	
	"0100001" when 13 ,
	"0000110" when 14 ,	
	"0001110" when 15 ,	

	"1111111" when others ;
	
	with digit2 select
	segments2 <=
	"1000000" when 0 ,
	"1111001" when 1 ,
	"0100100" when 2 ,
	"0110000" when 3 ,
	"0011001" when 4 ,
	"0010010" when 5 ,	
	"0000010" when 6 ,
	"1111000" when 7 ,		
	"0000000" when 8 ,
	"0010000" when 9 ,
	"0001000" when 10 ,
	"0000011" when 11 ,
	"1000110" when 12 ,	
	"0100001" when 13 ,
	"0000110" when 14 ,	
	"0001110" when 15 ,	

	"1111111" when others ;
	
	with digit3 select
	segments3 <=
	"1000000" when 0 ,
	"1001000" when 1 ,
	"0100100" when 2 ,
	"0110000" when 3 ,
	"0011001" when 4 ,
	"0010010" when 5 ,	
	"0000010" when 6 ,
	"1111000" when 7 ,		
	"0000000" when 8 ,
	"0010000" when 9 ,
	"0001000" when 10 ,
	"0000011" when 11 ,
	"1000110" when 12 ,	
	"0100001" when 13 ,
	"0000110" when 14 ,	
	"0001110" when 15 ,	

	"1111111" when others ;
	
	
end;