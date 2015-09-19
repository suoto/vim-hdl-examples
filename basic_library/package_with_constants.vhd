library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

package package_with_constants is

    constant SOME_INTEGER_CONSTANT : integer := 10;
    constant SOME_STRING_CONSTANT  : string := "Hello";
end;

package body package_with_constants is

end package body;
