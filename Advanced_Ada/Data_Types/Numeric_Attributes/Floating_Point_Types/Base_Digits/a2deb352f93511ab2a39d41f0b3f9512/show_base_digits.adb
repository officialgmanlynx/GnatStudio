with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Base_Digits is
   type Float_D3 is new Float digits 3;
begin
   Put_Line ("Float_D3'Digits:           "
             & Float_D3'Digits'Image);
   Put_Line ("Float_D3'Base'Digits:      "
             & Float_D3'Base'Digits'Image);
end Show_Base_Digits;