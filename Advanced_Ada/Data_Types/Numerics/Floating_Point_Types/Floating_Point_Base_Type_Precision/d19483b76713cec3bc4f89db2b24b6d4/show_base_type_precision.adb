with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Base_Type_Precision is

   type Float_3_Digits is
     digits 3;

begin
   Put_Line
     ("Float_3_Digits'Digits       :"
      & Float_3_Digits'Digits'Image
      & " digits");

   Put_Line
     ("Float_3_Digits'Base'Digits  :"
      & Float_3_Digits'Base'Digits'Image
      & " digits");
end Show_Base_Type_Precision;