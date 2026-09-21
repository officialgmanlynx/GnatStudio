with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Base_Type_Precision is

   type DT_6 is
     delta 10.0 ** (-2) digits 6;

   type DT_12 is
     delta 10.0 ** (-2) digits 12;

begin
   Put_Line
     ("DT_6'Digits        :"
      & DT_6'Digits'Image
      & " digits");
   Put_Line
     ("DT_6'Base'Digits   :"
      & DT_6'Base'Digits'Image
      & " digits");
   Put_Line
     ("DT_12'Digits       :"
      & DT_12'Digits'Image
      & " digits");
   Put_Line
     ("DT_12'Base'Digits  :"
      & DT_12'Base'Digits'Image
      & " digits");
end Show_Base_Type_Precision;