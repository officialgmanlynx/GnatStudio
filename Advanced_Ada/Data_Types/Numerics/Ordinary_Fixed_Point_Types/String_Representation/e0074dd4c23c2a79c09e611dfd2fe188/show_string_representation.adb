with Ada.Text_IO; use Ada.Text_IO;

procedure Show_String_Representation is
   D : constant := 2.0 ** (-15);

   type TQ15 is
     delta D
     range -1.0 .. 1.0 - D;

   procedure Show (V : TQ15) is
   begin
      Put_Line ("TQ15'Image  : "
                & V'Image);
      Put_Line ("Float'Image : "
                & Float (V)'Image);
      Put_Line ("----------");
   end Show;
begin
   Show (0.25);
   Show (TQ15'Last);
   Show (0.1);
end Show_String_Representation;