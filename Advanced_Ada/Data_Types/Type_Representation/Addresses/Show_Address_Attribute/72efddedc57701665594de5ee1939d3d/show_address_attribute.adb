with Ada.Text_IO; use Ada.Text_IO;
with System.Address_Image;

procedure Show_Address_Attribute is
   I  : aliased Integer := 5;
begin
   Put_Line ("Address : "
             & System.Address_Image (I'Address));
end Show_Address_Attribute;