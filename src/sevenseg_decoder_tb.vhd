----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2026 08:39:05 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
--  Port ( );
end entity  sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is
    component sevenseg_decoder is
    Port  ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end component sevenseg_decoder;
 
signal w_sw     : std_logic_vector (3 downto 0);
signal w_seg_n  : std_logic_vector(6 downto 0);

begin
    u_decoder : sevenseg_decoder
        port map(
            i_hex => w_sw,
            o_seg_n => w_seg_n
        );
    test_process : process
    begin
        w_sw <= x"0"; wait for 10 ns;
            assert w_seg_n = "0000001" report "error on 0" severity failure;
        w_sw <= x"1"; wait for 10 ns;
            assert w_seg_n = "1001111" report "error on 1" severity failure;
        w_sw <= x"2"; wait for 10 ns;
            assert w_seg_n = "0010010" report "error on 2" severity failure;
        w_sw <= x"3"; wait for 10 ns;
            assert w_seg_n = "0000101" report "error on 3" severity failure;
        w_sw <= x"4"; wait for 10 ns;
            assert w_seg_n = "1001100" report "error on 4" severity failure;
        w_sw <= x"5"; wait for 10 ns;
            assert w_seg_n = "0100100" report "error on 5" severity failure;
        w_sw <= x"6"; wait for 10 ns;
            assert w_seg_n = "0100000" report "error on 6" severity failure;
        w_sw <= x"7"; wait for 10 ns;
            assert w_seg_n = "0001111" report "error on 7" severity failure;
        w_sw <= x"8"; wait for 10 ns;
            assert w_seg_n = "0000000" report "error on 8" severity failure;
        w_sw <= x"9"; wait for 10 ns;
            assert w_seg_n = "0001100" report "error on 9" severity failure;
        w_sw <= x"a"; wait for 10 ns;
            assert w_seg_n = "0000010" report "error on a" severity failure;
        w_sw <= x"b"; wait for 10 ns;
            assert w_seg_n = "1100000" report "error on b" severity failure;
        w_sw <= x"c"; wait for 10 ns;
            assert w_seg_n = "1110010" report "error on c" severity failure;
        w_sw <= x"d"; wait for 10 ns;
            assert w_seg_n = "1000010" report "error on d" severity failure;
        w_sw <= x"e"; wait for 10 ns;
            assert w_seg_n = "0110000" report "error on e" severity failure;
        w_sw <= x"f"; wait for 10 ns;
            assert w_seg_n = "0111000" report "error on f" severity failure;
        wait;
end process test_process;

end architecture Behavioral;
