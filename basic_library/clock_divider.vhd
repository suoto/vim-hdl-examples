-- This file is part of vim-hdl.
--
-- vim-hdl is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- vim-hdl is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with vim-hdl.  If not, see <http://www.gnu.org/licenses/>.

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

use work.package_with_constants;

entity clock_divider is
    generic (
        DIVIDER : integer := 10
    );
    port (
        reset : in std_logic;
        clk_input : in  std_logic;
        clk_output : out std_logic
    );

end clock_divider;

architecture clock_divider of clock_divider is

    signal counter      : integer range 0 to DIVIDER - 1 := 0;
    signal clk_internal : std_logic := '0';

begin

    clk_output <= clk_internal;

    -- We read 'reset' signal asynchronously inside the process to force
    -- msim issuing a synthesis warning
    process(clk_input)          
    begin                       
        if reset = '1' then     
            counter <= 0;
        elsif clk_input'event and clk_input = '1' then
            if counter < DIVIDER then
                counter <= counter + 1;
            else
                counter <= 0;
                clk_internal <= not clk_internal;
            end if;
        end if;
    end process;


end clock_divider;


