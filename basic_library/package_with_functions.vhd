library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use ieee.math_real.all;

package package_with_functions is

    function hello return string;
    function foo (i : integer) return integer;

end;

package body package_with_functions is

    function hello return string is
        begin
            return "world";
        end function hello;

    function foo (i : integer) return integer is
        begin
            return i + 10;
        end foo;

end package body;
