with Ada.Text_IO; use Ada.Text_IO;
with Addresses;   use Addresses;

procedure Show_Address_Addition is
   John : Person := "John" + "4 Main Street";
   Jane : Person := "Jane" + "7 High Street";
begin
   Display (John);
   Display (Jane);
   Put_Line ("----------------");

   Jane := Jane + John;
   Display (Jane);
end Show_Address_Addition;