with Angles;      use  Angles;

with Gen_Show_Type_Info;

procedure Show_Ordinary_Fixed_Machine_Repr is
   procedure Show_Angle_Type_Info is new
     Gen_Show_Type_Info (T_Fixed => Angle);
   procedure Show_Angle_Adj_Type_Info is new
     Gen_Show_Type_Info (T_Fixed => Angle_Adj);
begin
   Show_Angle_Type_Info ("Angle     ");
   Show_Angle_Adj_Type_Info ("Angle_Adj ");
end Show_Ordinary_Fixed_Machine_Repr;