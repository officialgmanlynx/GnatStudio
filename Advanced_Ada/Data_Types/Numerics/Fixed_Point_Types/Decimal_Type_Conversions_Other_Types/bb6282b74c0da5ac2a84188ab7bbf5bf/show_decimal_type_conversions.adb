with Ada.Text_IO; use Ada.Text_IO;

with Custom_Types;
use  Custom_Types;

procedure Show_Decimal_Type_Conversions is
   D6       : Decimal;
   D18      : TD18;
   D18_1000 : TD18_1000;
begin
   D6  := Decimal'Last;
   D18 := TD18 (D6);
   --     ^^^^^^^^^
   --  Conversion from
   --  decimal fixed-point

   Put_Line ("D6       = "
             & D6'Image);
   Put_Line ("D18      = "
             & D18'Image);
   Put_Line ("-----------------------------");

   D18 := TD18 (Decimal'Last);
   D6  := Decimal (D18);
   --     ^^^^^^^^^^
   --  Conversion to
   --  decimal fixed-point

   Put_Line ("D6       = "
             & D6'Image);
   Put_Line ("D18      = "
             & D18'Image);
   Put_Line ("-----------------------------");

   D6       := 800.0;
   D18_1000 := TD18_1000 (D6);
   --          ^^^^^^^^^^^^^^
   --  Conversion from
   --  decimal fixed-point

   Put_Line ("D6       = "
             & D6'Image);
   Put_Line ("D18_1000 = "
             & D18_1000'Image);

end Show_Decimal_Type_Conversions;