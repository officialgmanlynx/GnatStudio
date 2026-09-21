with Ada.Text_IO;       use Ada.Text_IO;
with Activation_States; use Activation_States;

procedure Misspelling_Example is
   S : constant Activation_State :=
         "Offf";
   --     ^ Error: Off is misspelled.
begin
   Put_Line (Activation_State'Image (S));
end Misspelling_Example;