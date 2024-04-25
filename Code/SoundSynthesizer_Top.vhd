-- Credits to Mohammed

library ieee;
use ieee.std_logic_1164.all;

entity TopLevel is
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
end TopLevel;

architecture Behavioral of TopLevel is
    component SoundSynthesizer is
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
    end component;

    signal relay1_internal, relay2_internal, relay3_internal, relay4_internal : std_logic;
    signal led_internal : std_logic_vector(3 downto 0);

begin
    -- Instantiation of SoundSynthesizer entity
    U_SoundSynthesizer: SoundSynthesizer
        port map (
            CLK100MHZ => CLK100MHZ,
            BTNC      => BTNC,
            SW        => SW,
            Relay1    => relay1_internal,
            Relay2    => relay2_internal,
            Relay3    => relay3_internal,
            Relay4    => relay4_internal,
            LED       => led_internal
        );

    -- Output connections
    Relay1 <= relay1_internal;
    Relay2 <= relay2_internal;
    Relay3 <= relay3_internal;
    Relay4 <= relay4_internal;
    LED    <= led_internal;


end Behavioral;
