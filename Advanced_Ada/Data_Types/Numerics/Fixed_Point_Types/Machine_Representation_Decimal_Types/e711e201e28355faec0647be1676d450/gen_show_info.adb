with Ada.Text_IO; use Ada.Text_IO;

procedure Gen_Show_Info (V     : T_Decimal;
                         V_Str : String)
is
   V_Int_Overlay : T_Int_Decimal
     with Address => V'Address,
          Import, Volatile;

   pragma Assert
     (T_Int_Decimal'Size = T_Decimal'Size);
   pragma Assert
     (T_Int_Decimal'Alignment =
        T_Decimal'Alignment);

   V_Real        : Float;
begin
   V_Real  := Float (V_Int_Overlay) *
     T_Decimal'Small;

   Put_Line (V_Str
             & " (fixed-point) : "
             & V'Image);
   Put_Line (V_Str
             & " (integer)     : "
             & V_Int_Overlay'Image);
   Put_Line (V_Str
             & " (floating-p.) : "
             & V_Real'Image);
   Put_Line ("----------");
end Gen_Show_Info;