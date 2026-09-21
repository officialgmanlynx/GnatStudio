with Ada.Text_IO;           use Ada.Text_IO;
with System;
with System.Address_Image;

with Limited_Types;         use Limited_Types;

procedure Show_Limited_Init is
begin
   declare
      A : Simple_Rec := Init (0);
   begin
      Put_Line ("A'Address (local): "
                & System.Address_Image
                    (A'Address));
   end;
   Put_Line ("----");

   declare
      B : Simple_Rec := Init (0);
   begin
      Put_Line ("B'Address (local): "
                & System.Address_Image
                    (B'Address));
   end;
end Show_Limited_Init;