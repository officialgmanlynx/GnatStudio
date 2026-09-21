with Ada.Decimal;
with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use  Custom_Decimal_Types;

procedure Show_Divide_Procedure is

   procedure Div is new
     Ada.Decimal.Divide
       (Dividend_Type  => T0_D4,
        Divisor_Type   => T0_D4,
        Quotient_Type  => T0_D4,
        Remainder_Type => T0_D4);

   Dividend  : T0_D4;
   Divisor   : T0_D4;
   Quotient  : T0_D4;
   Remainder : T0_D4;
begin
   Dividend := 501.0;
   Divisor  := 2.0;

   Div (Dividend, Divisor, Quotient, Remainder);

   Put_Line ("Dividend  : "
             & Dividend'Image);
   Put_Line ("Divisor   : "
             & Divisor'Image);
   Put_Line ("Quotient  : "
             & Quotient'Image);
   Put_Line ("Remainder : "
             & Remainder'Image);
end Show_Divide_Procedure;