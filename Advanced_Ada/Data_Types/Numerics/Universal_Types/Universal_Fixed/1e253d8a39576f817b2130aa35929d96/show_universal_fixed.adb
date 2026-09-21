with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use  Custom_Decimal_Types;

procedure Show_Universal_Fixed is
  Val_T3_D3 : T3_D3;
  Val_T3_D6 : T3_D6;
  Val_T6_D6 : T6_D6;
begin
   Val_T3_D3 := 0.65;

   Val_T3_D6 := T3_D6 (Val_T3_D3);
   --           ^^^^^^^^^^^^^^^^^
   --      type conversion using
   --       universal fixed type

   Val_T6_D6 := T6_D6 (Val_T3_D6);
   --           ^^^^^^^^^^^^^^^^^
   --      type conversion using
   --       universal fixed type

   Put_Line ("Val_T3_D3 = "
             & Val_T3_D3'Image);
   Put_Line ("Val_T3_D6 = "
             & Val_T3_D6'Image);
   Put_Line ("Val_T6_D6 = "
             & Val_T3_D6'Image);
   Put_Line ("-----------------");

   Val_T3_D6 := Val_T6_D6 * 2.0;
   --           ^^^^^^^^^^^^^^^^
   --    using universal fixed type for
   --      the multiplication operation
   Put_Line ("Val_T3_D6 = "
             & Val_T3_D6'Image);

   Val_T3_D6 := Val_T6_D6 / Val_T3_D3;
   --           ^^^^^^^^^^^^^^^^^^^^^
   --      different fixed-point types:
   --    using universal fixed type for
   --           the division operation
   Put_Line ("Val_T3_D6 = "
             & Val_T3_D6'Image);

end Show_Universal_Fixed;