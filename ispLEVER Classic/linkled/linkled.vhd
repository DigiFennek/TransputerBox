library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity linkled is
  port (clock_5MHz : in std_ulogic;
        test : in std_ulogic;
        link : in std_ulogic_vector (15 downto 0);
        led : out std_ulogic_vector (15 downto 0)
    );

  attribute LOC : string;
  attribute LOC of clock_5MHz: signal is "5";
  attribute LOC of test: signal is "27";
  attribute LOC of link: signal is "36,24,22,37,34,23,21,35,32,20,18,33,30,19,25,31";
  attribute LOC of led: signal is "41,43,1,3,40,42,44,2,8,10,12,14,9,11,13,15";

end linkled;

architecture arch of linkled is
  signal counter : std_logic_vector (18 downto 0);
  signal trig : std_ulogic_vector (15 downto 0);
  signal clock : std_ulogic;

begin
  clock <= counter(18);

  l1: for i in 0 to 15 generate
    process(link(i), clock)
    begin
      if (link(i) = '1') then
        led(i) <= '0';
        trig(i) <= '1';
      elsif (rising_edge(clock)) then
        led(i) <= not (trig(i) or test);
	trig(i) <= '0';
      end if;
    end process;
  end generate l1;

  process(clock_5MHz)
  begin 
    if(rising_edge(clock_5MHz)) then
      counter <= counter + 1;
    end if;
  end process;
end arch;

