with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Machine_Emin_Emax is
begin
   Put_Line
     ("Float'Machine_Emin:               "
      & Float'Machine_Emin'Image);
   Put_Line
     ("Float'Machine_Emax:               "
      & Float'Machine_Emax'Image);
   Put_Line
     ("Long_Float'Machine_Emin:          "
      & Long_Float'Machine_Emin'Image);
   Put_Line
     ("Long_Float'Machine_Emax:          "
      & Long_Float'Machine_Emax'Image);
   Put_Line
     ("Long_Long_Float'Machine_Emin:     "
      & Long_Long_Float'Machine_Emin'Image);
   Put_Line
     ("Long_Long_Float'Machine_Emax:     "
      & Long_Long_Float'Machine_Emax'Image);
end Show_Machine_Emin_Emax;