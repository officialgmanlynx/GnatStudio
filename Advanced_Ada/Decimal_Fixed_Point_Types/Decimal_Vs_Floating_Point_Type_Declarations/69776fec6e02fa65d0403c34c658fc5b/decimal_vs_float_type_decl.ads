package Decimal_Vs_Float_Type_Decl is

    --
    --  Decimal type declaration
    --
    type Decimal_D3 is
      delta 0.1 digits 3;

    --
    --  Floating-point type declaration
    --
    type Float_D3 is
      digits 3;

end Decimal_Vs_Float_Type_Decl;