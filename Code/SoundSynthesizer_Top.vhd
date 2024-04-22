library ieee;
use ieee.std_logic_1164.all;

-- Declaration of inputs and outputs
entity SoundSynthesizer_Top is
    Port (
        CLK100MHZ : in std_logic;
        SW        : in std_logic_vector(3 downto 0);
        Relay1    : out std_logic;
        Relay2    : out std_logic;
        Relay3    : out std_logic;
        Relay4    : out std_logic;
        LED       : out std_logic_vector(3 downto 0)
    );
end SoundSynthesizer_Top;

-- Architecture:
architecture Behavioral_Top of SoundSynthesizer_Top is 

    -- Declaration of signals for the internal SoundSynthesizer module
    signal period1, period2, period3, period4 : integer range 0 to 90000000 := 0;
    signal state1,  state2,  state3,  state4  : std_logic := '0';

    component SoundSynthesizer is
        Port (
            CLK100MHZ : in std_logic;
            SW        : in std_logic_vector(3 downto 0);
            Relay1    : out std_logic;
            Relay2    : out std_logic;
            Relay3    : out std_logic;
            Relay4    : out std_logic;
            LED       : out std_logic_vector(3 downto 0)
        );
    end component;

begin

    -- Instantiation of SoundSynthesizer module
    SoundSynthesizer_Instance : SoundSynthesizer
        port map (
            CLK100MHZ => CLK100MHZ,
            SW        => SW,
            Relay1    => Relay1,
            Relay2    => Relay2,
            Relay3    => Relay3,
            Relay4    => Relay4,
            LED       => LED
        );

end Behavioral_Top;
