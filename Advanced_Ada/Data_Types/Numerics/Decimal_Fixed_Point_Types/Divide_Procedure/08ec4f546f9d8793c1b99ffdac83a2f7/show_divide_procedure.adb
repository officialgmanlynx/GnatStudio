with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use  Custom_Decimal_Types;

procedure Show_Divide_Procedure is

   Dividend  : T0_D4;
   Divisor   : T0_D4;
   Result    : T0_D4;
begin
   Dividend := 501.0;
   Divisor  := 2.0;

   Result   := Dividend / Divisor;

   Put_Line ("Dividend           : "
             & Dividend'Image);
   Put_Line ("Divisor            : "
             & Divisor'Image);
   Put_Line ("Dividend / Divisor : "
             & Result'Image);
end Show_Divide_Procedure;