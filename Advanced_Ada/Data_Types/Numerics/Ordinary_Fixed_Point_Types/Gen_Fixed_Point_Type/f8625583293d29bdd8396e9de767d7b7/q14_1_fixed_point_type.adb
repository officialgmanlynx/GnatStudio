with Ada.Text_IO; use Ada.Text_IO;

procedure Q14_1_Fixed_Point_Type is

   --
   --  Values for Q14.1
   --
   Int_Bits  : constant := 14;
   Frac_Bits : constant := 1;

   --
   --  Generalized definition of a
   --  fixed-point type
   --
   D : constant := 2.0 ** (-Frac_Bits);

   type Fixed is
     delta D
     range -2.0 ** Int_Bits ..
            2.0 ** Int_Bits - D;

   --
   --  Declaring Q14.1 fixed-point type
   --  as a subtype of the "template"
   --  declared above.
   --
   subtype TQ14_1 is
     Fixed;
begin
   Put_Line ("TQ14_1 requires "
             & TQ14_1'Size'Image
             & " bits");
   Put_Line ("The delta    value of TQ14_1 is "
             & TQ14_1'Delta'Image);
   Put_Line ("The minimum  value of TQ14_1 is "
             & TQ14_1'First'Image);
   Put_Line ("The maximum  value of TQ14_1 is "
             & TQ14_1'Last'Image);
end Q14_1_Fixed_Point_Type;