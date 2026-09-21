with Ada.Text_IO; use Ada.Text_IO;

procedure Simple_Enumeration is
   type Activation_State is (Unknown, Off, On);

   S : Activation_State;
begin
   S := On;
   Put_Line (Activation_State'Image (S));
end Simple_Enumeration;