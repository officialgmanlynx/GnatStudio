with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use  Custom_Decimal_Types;

procedure Total_Price is

   type Quantities_Array is
     array (Positive range <>) of
       Natural;

   Prices        : constant Price_Array :=
                     (8.40, 5.04, 1.68);
   Quantities    : constant Quantities_Array :=
                     (1, 8, 9);
   Total_Item    : Price_Accum;
   Total_Sum     : Price_Accum;
   Tax_Rate      : constant Rate := 1.19;
begin
   Total_Sum := 0.0;

   Put_Line ("Sum Per Item");
   Put_Line ("Item #    Price Quant     Total");
   for I in Prices'Range loop
      Total_Item := Price_Accum (Prices (I) *
                                 Quantities (I));
      Total_Sum  := Total_Sum + Total_Item;
      Put_Line ("    " & I'Image
                & "    " & Prices (I)'Image
                & "    " & Quantities (I)'Image
                & "    "
                & Price (Total_Item)'Image);
   end loop;

   Put_Line ("SUBTOTAL:                "
             & Price (Total_Sum)'Image);
   Put_Line ("TAX RATE (%):            "
             & Rate'Image (
                 (Tax_Rate - 1.0) * 100.0));

   Total_Sum := Total_Sum * Tax_Rate;
   Put_Line ("TOTAL WITH TAX:        "
             & Price (Total_Sum)'Image);
end Total_Price;