with Ada.Text_IO; use Ada.Text_IO;

procedure Gen_Show_Info (V     : T_Fixed;
                         V_Str : String)
is
   V_Local       : T_Fixed;

   V_Int_Overlay : T_Int_Fixed
     with Address => V_Local'Address,
          Import, Volatile;

   pragma Assert
     (T_Int_Fixed'Size = T_Fixed'Size);
   pragma Assert
     (T_Int_Fixed'Alignment =
        T_Fixed'Alignment);

   V_Real        : Float;
begin
   V_Local := V;
   V_Real  := Float (V_Int_Overlay) *
     T_Fixed'Small;

   Put_Line (V_Str
             & " (fixed-point) : "
             & Float (V_Local)'Image);
   Put_Line (V_Str
             & " (integer)     : "
             & V_Int_Overlay'Image);
   Put_Line (V_Str
             & " (floating-p.) : "
             & V_Real'Image);
   Put_Line ("----------");
end Gen_Show_Info;