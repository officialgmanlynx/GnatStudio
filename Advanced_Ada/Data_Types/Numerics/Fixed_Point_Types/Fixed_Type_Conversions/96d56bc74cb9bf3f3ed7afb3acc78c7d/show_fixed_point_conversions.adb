with Custom_Fixed_Point;
use  Custom_Fixed_Point;

with Fixed_Point_Type_Info;
use  Fixed_Point_Type_Info;

procedure Show_Fixed_Point_Conversions is
   procedure Show_Fixed_Point_Type_Info is new
     Gen_Show_Fixed_Type_Info
       (T_Fixed => Fixed_Point);

   procedure Show_Decimal_Type_Info is new
     Gen_Show_Decimal_Type_Info
       (T_Decimal => Decimal);
begin
   Show_Decimal_Type_Info ("Decimal     ");
   Show_Fixed_Point_Type_Info ("Fixed_Point ");
end Show_Fixed_Point_Conversions;