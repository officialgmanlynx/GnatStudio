with Ada.Text_IO;       use Ada.Text_IO;
with Activation_States; use Activation_States;

procedure Activation_Examples is
   S : Activation_State;
begin
   S := "Off";
   Put_Line ("String: Off  => "
             & Activation_State'Image (S));

   S := 1;
   Put_Line ("Integer: 1   => "
             & Activation_State'Image (S));

   S := 1.5;
   Put_Line ("Real:    1.5 => "
             & Activation_State'Image (S));
end Activation_Examples;