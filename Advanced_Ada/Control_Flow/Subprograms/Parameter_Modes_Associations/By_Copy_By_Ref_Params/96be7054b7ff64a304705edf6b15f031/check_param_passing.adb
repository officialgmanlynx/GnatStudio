with Ada.Text_IO; use Ada.Text_IO;
with System.Address_Image;

procedure Check_Param_Passing
  (Formal : System.Address;
   Actual : System.Address) is
begin
   Put_Line ("Formal parameter at "
             & System.Address_Image (Formal));
   Put_Line ("Actual parameter at "
             & System.Address_Image (Actual));
   if System.Address_Image (Formal) =
      System.Address_Image (Actual)
   then
      Put_Line
        ("Parameter is passed by reference.");
   else
      Put_Line
        ("Parameter is passed by copy.");
   end if;
end Check_Param_Passing;