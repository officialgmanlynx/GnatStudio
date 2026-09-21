package Fixed_Point_Type_Info is

   generic
      type T_Fixed is delta <>;
   procedure Gen_Show_Fixed_Type_Info
     (T_Fixed_Name : String);

   generic
      type T_Decimal is delta <> digits <>;
   procedure Gen_Show_Decimal_Type_Info
     (T_Decimal_Name : String);

end Fixed_Point_Type_Info;