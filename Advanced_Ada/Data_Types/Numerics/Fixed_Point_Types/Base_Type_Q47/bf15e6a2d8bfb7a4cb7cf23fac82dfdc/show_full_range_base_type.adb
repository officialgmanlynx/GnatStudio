with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Full_Range_Base_Type is
   D : constant := 2.0 ** (-31);

   type Fixed_128_Bits is
     delta D
     range -1.0 .. 1.0 - D
     with Size => 128;
begin
   Put_Line ("The size of "
             & "Fixed_128_Bits is "
             & Fixed_128_Bits'Size'Image
             & " bits");
end Show_Full_Range_Base_Type;