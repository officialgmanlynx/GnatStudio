with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Scaling is

   D : constant := 2.0 ** (-15);

   type Sample is
     delta D
     range -1.0 .. 1.0 - D;

   --  Integer representation of Sample
   type Sample_Int is
     range -2 ** 15 .. 2 ** 15 - 1;

   V   : Sample := 0.25;
   V_I : Sample_Int
     with Address  => V'Address,
          Import,
          Volatile;
begin
   Put_Line ("start : " & V'Image
             & " | int " & V_I'Image);

   --  Downscale (attenuate) by two
   V := V / 2;
   Put_Line ("/ 2   : " & V'Image
             & " | int " & V_I'Image);

   --  Upscale (gain) by two
   V := V * 2;
   Put_Line ("* 2   : " & V'Image
             & " | int " & V_I'Image);
end Show_Scaling;