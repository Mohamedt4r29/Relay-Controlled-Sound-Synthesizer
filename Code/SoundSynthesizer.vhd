
library ieee;
use ieee.std_logic_1164.all;


-- Declaration of inputs and outputs
entity SoundSynthesizer is
    Port (
        CLK100MHZ : in std_logic;
        BTNC      : in std_logic;
        SW        : in std_logic_vector(3 downto 0);
        Relay1    : out std_logic;
        Relay2    : out std_logic;
        Relay3    : out std_logic;
        Relay4    : out std_logic;
        LED       : out std_logic_vector(3 downto 0)
    );
end SoundSynthesizer;

-- Architecture:
architecture Behavioral of SoundSynthesizer is 

    -- Declaration of periods and states. 
    -- Initializing periods to be 0 and have a maximum duration of 90000000 nanoseconds (one beat) 
    -- This duration was chosen due to the easiness of dividing into 2 (for the quavers), 
    -- 3 (for the triplets) and 4 (for the semiquavers)
    signal period1, period2, period3, period4 : integer range 0 to 90000000 := 0;

    -- The initial state of the switches is set to be 0.
    signal state1,  state2,  state3,  state4  : std_logic := '0';
    signal reset  : std_logic := '0';
    
    begin
            
    process (CLK100MHZ)
    
    begin 
        if rising_edge(CLK100MHZ) then    
            
            if reset = '1' then
                period1 <= 0;
                period2 <= 0;
                period3 <= 0;
                period4 <= 0;
                state1 <= '0';
                state2 <= '0';
                state3 <= '0';
                state4 <= '0';
                
            else
           -- If the first switch is turned on, the signal is sent 
            -- after one full period (0.9 seconds) for the single beat.  
                if SW(0) = '1' then          
                    if period1 = 90000000 then
                        state1 <= not state1;
                        period1 <= 0;
                    else 
                        period1 <= period1 + 1;
                    end if;
                    end if;
                        
                 -- If the second switch is turned on, the signal is sent every 
                 -- half period (0.45 seconds) for the quaver beat. 
                if SW(1) = '1' then
                    if period2 = 45000000 then
                        state2 <= not state2;
                        period2 <= 0;
                    else 
                         period2 <= period2 +1;
                    end if;
                    end if;
                        
                -- If the third switch is turned on, the signal is sent every  
                -- third fraction of period (0.3 seconds) for the triplet beat. 
                if SW(2) = '1' then
                    if period3 = 30000000 then
                        state3 <= not state3;
                        period3 <= 0;
                    else
                        period3 <= period3 +1;
                    end if;
                    end if;
                        
             -- If the fourth switch is turned on, the signal is sent every 
            -- one quater of period (0.225 seconds) for the semi-quaver beat. 
                if SW(3) = '1' then
                    if period4 = 22500000 then
                        state4 <= not state4;
                        period4 <= 0;
                    else 
                        period4 <= period4 +1;
                    end if;
                end if;
               end if;
               end if;
               
     
    end process;
                -- Sending the signal to each of the relays and to the leds.
                JA(1) <= state1;
                LED(0) <= state1;

                JA(2) <= state2;
                LED(1) <= state2;
    
                JA(3) <= state3;
                LED(2) <= state3;
    
                JA(4) <= state4;
                LED(3) <= state4;

                        
    -- Process for initializing the clock with the reset button "BTNC"                    
    process (CLK100MHZ)
    begin
        if rising_edge(CLK100MHZ) then
            if BTNC = '0' then
                reset <= '1';
                
            else
                reset <= '0';
                
            end if;
        end if;
    end process;
    
                
    
    
end Behavioral;

