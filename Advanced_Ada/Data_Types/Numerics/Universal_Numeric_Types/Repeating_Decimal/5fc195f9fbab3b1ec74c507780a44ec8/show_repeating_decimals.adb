with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Big_Numbers.Big_Reals;
use  Ada.Numerics.Big_Numbers.Big_Reals;

with Repeating_Decimals;
use  Repeating_Decimals;

procedure Show_Repeating_Decimals is
   BR_1_3   : constant Big_Real := 1 / 3;
begin
   Put_Line ("BR: "
             & To_String (Arg   => BR_1_3,
                          Fore  => 2,
                          Aft   => 31,
                          Exp   => 0));
end Show_Repeating_Decimals;