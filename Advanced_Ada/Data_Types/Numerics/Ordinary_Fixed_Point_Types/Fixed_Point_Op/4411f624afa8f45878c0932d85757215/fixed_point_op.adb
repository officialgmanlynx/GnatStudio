with Ada.Text_IO; use Ada.Text_IO;

procedure Fixed_Point_Op is

   Angle_Delta : constant := 1.0 / 3600.0;

   type Angle is
     delta Angle_Delta
     range 0.0 .. 360.0 - Angle_Delta;

   type Angle_2 is
     delta Angle_Delta
     range 0.0 .. 360.0 - Angle_Delta
   with Small => Angle_Delta;

begin

   Put_Line ("The small    of Angle         is "
             & Angle'Small'Image);
   Put_Line ("The delta    value of Angle   is "
             & Angle'Delta'Image);
   Put_Line ("The minimum  value of Angle   is "
             & Angle'First'Image);
   Put_Line ("The maximum  value of Angle   is "
             & Angle'Last'Image);

   Put_Line ("------------------------------");

   Put_Line ("The small    of Angle_2       is "
             & Angle_2'Small'Image);
   Put_Line ("The delta    value of Angle_2 is "
             & Angle_2'Delta'Image);
   Put_Line ("The minimum  value of Angle_2 is "
             & Angle_2'First'Image);
   Put_Line ("The maximum  value of Angle_2 is "
             & Angle_2'Last'Image);
end Fixed_Point_Op;