with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Narrow_Base_Type is

   D : constant := 2.0 ** (-10);

   type T_Narrow is
     delta D
     range 0.0 .. 4.0 - D;

begin
   Put_Line ("T_Narrow'First      = "
             & T_Narrow'First'Image);
   Put_Line ("T_Narrow'Last       = "
             & T_Narrow'Last'Image);
   Put_Line ("T_Narrow'Size       = "
             & T_Narrow'Size'Image);

   Put_Line ("------------------------------");

   Put_Line ("T_Narrow'Base'First = "
             & T_Narrow'Base'First'Image);
   Put_Line ("T_Narrow'Base'Last  = "
             & T_Narrow'Base'Last'Image);
   Put_Line ("T_Narrow'Base'Size  = "
             & T_Narrow'Base'Size'Image);

end Show_Narrow_Base_Type;