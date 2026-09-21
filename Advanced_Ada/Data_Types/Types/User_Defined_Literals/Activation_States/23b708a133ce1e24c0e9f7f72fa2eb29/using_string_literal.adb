with Ada.Text_IO;       use Ada.Text_IO;
with Activation_States; use Activation_States;

procedure Using_String_Literal is
   S1 : constant Activation_State := On;
   S2 : constant Activation_State := "On";
begin
   Put_Line (Activation_State'Image (S1));
   Put_Line (Activation_State'Image (S2));
end Using_String_Literal;