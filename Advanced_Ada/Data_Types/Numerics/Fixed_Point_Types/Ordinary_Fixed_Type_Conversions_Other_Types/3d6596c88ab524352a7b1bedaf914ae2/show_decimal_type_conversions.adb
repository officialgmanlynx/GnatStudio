with Ada.Text_IO; use Ada.Text_IO;

with Custom_Types;
use  Custom_Types;

procedure Show_Decimal_Type_Conversions is
   V_2_D6   : T2_D6;
   V_D18    : TD18;
   V_Q15_48 : TQ15_48;
   V_Int15  : Int15;
begin
   V_Q15_48 := 1.0;

   V_2_D6   := T2_D6 (V_Q15_48);
   V_D18    := TD18 (V_Q15_48);
   V_Int15  := Int15 (V_Q15_48);
   --          ^^^^^^^^^^^^^^^^
   --  Conversions from
   --  ordinary fixed-point

   Put_Line ("V_Q15_48 = "
             & V_Q15_48'Image);
   Put_Line ("V_2_D6   = "
             & V_2_D6'Image);
   Put_Line ("V_D18    = "
             & V_D18'Image);
   Put_Line ("V_Int15  = "
             & V_Int15'Image);
   Put_Line ("-----------------------------");

   V_D18    := TD18 (TQ15_48'Last);

   V_Q15_48 := TQ15_48 (V_D18);
   --          ^^^^^^^^^^^^^
   --  Conversion to
   --  ordinary fixed-point

   Put_Line ("V_Q15_48 = "
             & V_Q15_48'Image);
   Put_Line ("V_D18    = "
             & V_D18'Image);
   Put_Line ("-----------------------------");

   V_2_D6   := 2.0;

   V_Q15_48 := TQ15_48 (V_2_D6);
   --          ^^^^^^^^^^^^^^^
   --  Conversion to
   --  ordinary fixed-point

   Put_Line ("V_Q15_48 = "
             & V_Q15_48'Image);
   Put_Line ("V_2_D6   = "
             & V_2_D6'Image);
   Put_Line ("-----------------------------");

   V_Int15  := 4;

   V_Q15_48 := TQ15_48 (V_Int15);
   --          ^^^^^^^^^^^^^^^^^
   --  Conversion to
   --  ordinary fixed-point

   Put_Line ("V_Q15_48 = "
             & V_Q15_48'Image);
   Put_Line ("V_Int15  = "
             & V_Int15'Image);
   Put_Line ("-----------------------------");

end Show_Decimal_Type_Conversions;