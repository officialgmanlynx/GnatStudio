with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Fixed_Point_Base_Type is

   Angle_Delta : constant := 1.0 / 3600.0;

   type Angle is
     delta Angle_Delta
     range 0.0 .. 360.0 - Angle_Delta;

begin
   Put_Line ("The small          of "
             & "Angle      is "
             & Angle'Small'Image);
   Put_Line ("The delta    value of "
             & "Angle      is "
             & Angle'Delta'Image);

   Put_Line ("------------------------------");

   Put_Line ("The small          of "
             & "Angle'Base is "
             & Angle'Base'Small'Image);
   Put_Line ("The delta    value of "
             & "Angle'Base is "
             & Angle'Base'Delta'Image);

   Put_Line ("------------------------------");

end Show_Fixed_Point_Base_Type;