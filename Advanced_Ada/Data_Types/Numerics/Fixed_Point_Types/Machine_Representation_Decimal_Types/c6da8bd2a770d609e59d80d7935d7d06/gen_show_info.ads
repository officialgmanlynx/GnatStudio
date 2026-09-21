generic
   type T_Decimal     is delta <> digits <>;
   type T_Int_Decimal is range <>;
procedure Gen_Show_Info (V     : T_Decimal;
                         V_Str : String);