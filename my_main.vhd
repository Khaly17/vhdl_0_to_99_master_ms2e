library ieee ;
use ieee.std_logic_1164.all ;

entity my_main is
	port (
		main_clock : in std_logic ;
		main_segments : out std_logic_vector (6 downto 0);
		main_segments1 : out std_logic_vector (6 downto 0);
		main_segments2 : out std_logic_vector (6 downto 0);
		main_segments3 : out std_logic_vector (6 downto 0)
	);
end my_main;

architecture structural of my_main is

	signal raw_data : std_logic ;
	signal raw_data1 : integer ;
	signal raw_data2 : integer ;
	signal raw_data3 : integer ;
	signal raw_data4 : integer ;
	
begin
	module1 : entity work.gen_pulse port map( my_clock => main_clock , my_pulse => raw_data );
	module2 : entity work.compteur port map( compteur_clock => raw_data , unite => raw_data1, dizaine => raw_data2, centaine => raw_data3, millieme => raw_data4 );
	module3 : entity work.dec_7seg port map( digit => raw_data1 ,digit1 => raw_data2 ,digit2 => raw_data3 ,digit3 => raw_data4 , segments => main_segments, segments1 => main_segments1 , segments2 => main_segments2, segments3 => main_segments3);
end structural;
