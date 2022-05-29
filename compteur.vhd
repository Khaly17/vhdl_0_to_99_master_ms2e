library ieee ;
use ieee . std_logic_1164 .all ;

entity compteur is
	port (
		compteur_clock : in std_logic ;
		unite: out integer range 0 to 9;
		dizaine: out integer range 0 to 9;
		
		centaine: out integer range 0 to 9;
		millieme: out integer range 0 to 9
	);
end;

architecture behav of compteur is
	signal count_unite : integer range 0 to 9;
	signal count_dizaine : integer range 0 to 9;
	
	signal count_centaine : integer range 0 to 9;
	signal count_millieme : integer range 0 to 9;
	
begin
	process ( compteur_clock )
	begin
		if rising_edge ( compteur_clock ) then
			if count_dizaine < 9 then
				count_dizaine <= count_dizaine + 1;
				count_unite <= count_unite;
			
			elsif count_dizaine = 9 then
				count_dizaine <= 0;
				if count_unite < 9 then
					count_unite <= count_unite + 1;
					count_centaine <= count_centaine;
					
				elsif count_unite = 9 then
					count_unite <= 0;
					if count_centaine < 9 then
						count_centaine <= count_centaine + 1;
						elsif count_centaine = 9 then
							count_centaine <= 0;
							if count_millieme < 9 then
								count_millieme <= count_millieme + 1;
							else
							count_millieme <= 0;
							end if;
					end if;
				end if;

			end if;
		end if;
	end process ;
	
	unite <= count_unite;
	dizaine <= count_dizaine;
	centaine <= count_centaine;
	millieme <= count_millieme;
	
end;

