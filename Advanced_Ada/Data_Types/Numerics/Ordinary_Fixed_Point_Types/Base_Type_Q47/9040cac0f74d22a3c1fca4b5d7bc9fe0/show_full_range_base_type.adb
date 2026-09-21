with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Full_Range_Base_Type is
   D : constant := 2.0 ** (-47);

   type TQ47 is
     delta D
     range -1.0 .. 1.0 - D;
begin
   Put_Line ("The small          of TQ47      is "
             & TQ47'Small'Image);
   Put_Line ("The delta    value of TQ47      is "
             & TQ47'Delta'Image);
   Put_Line ("The minimum  value of TQ47      is "
             & TQ47'First'Image);
   Put_Line ("The maximum  value of TQ47      is "
             & TQ47'Last'Image);
   Put_Line ("The size           of TQ47      is "
             & TQ47'Size'Image
             & " bits");

   Put_Line ("------------------------------");

   Put_Line ("The small          of TQ47'Base is "
             & TQ47'Base'Small'Image);
   Put_Line ("The delta    value of TQ47'Base is "
             & TQ47'Base'Delta'Image);
   Put_Line ("The minimum  value of TQ47'Base is "
             & TQ47'Base'First'Image);
   Put_Line ("The maximum  value of TQ47'Base is "
             & TQ47'Base'Last'Image);
   Put_Line ("The size           of TQ47'Base is "
             & TQ47'Base'Size'Image
             & " bits");

end Show_Full_Range_Base_Type;