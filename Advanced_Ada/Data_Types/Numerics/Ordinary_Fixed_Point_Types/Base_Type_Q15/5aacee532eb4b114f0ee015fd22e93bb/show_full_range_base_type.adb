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
   Put_Line ("------------------------------");

   Put_Line ("The small          of TQ15'Base is "
             & TQ15'Base'Small'Image);
   Put_Line ("The delta    value of TQ15'Base is "
             & TQ15'Base'Delta'Image);

end Show_Full_Range_Base_Type;