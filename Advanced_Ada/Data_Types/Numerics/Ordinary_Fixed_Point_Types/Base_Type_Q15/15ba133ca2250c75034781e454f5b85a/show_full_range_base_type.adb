with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Full_Range_Base_Type is
   D : constant := 2.0 ** (-15);

   type TQ15 is
     delta D
     range -1.0 .. 1.0 - D;
begin
   Put_Line ("The small          of TQ15      is "
             & TQ15'Small'Image);
   Put_Line ("The delta    value of TQ15      is "
             & TQ15'Delta'Image);
   Put_Line ("The minimum  value of TQ15      is "
             & TQ15'First'Image);
   Put_Line ("The maximum  value of TQ15      is "
             & TQ15'Last'Image);
   Put_Line ("The size           of TQ15      is "
             & TQ15'Size'Image
             & " bits");

   Put_Line ("------------------------------");

   Put_Line ("The small          of TQ15'Base is "
             & TQ15'Base'Small'Image);
   Put_Line ("The delta    value of TQ15'Base is "
             & TQ15'Base'Delta'Image);
   Put_Line ("The minimum  value of TQ15'Base is "
             & TQ15'Base'First'Image);
   Put_Line ("The maximum  value of TQ15'Base is "
             & TQ15'Base'Last'Image);
   Put_Line ("The size           of TQ15'Base is "
             & TQ15'Base'Size'Image
             & " bits");

end Show_Full_Range_Base_Type;