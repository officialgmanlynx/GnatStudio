with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Floating_Point_Base_Range is

   type Float_6D is
     digits 6;

   type Float_6D_Norm is
     digits 6
       range -1.0 .. 1.0;

begin

   Put_Line
     ("Float_6D'First           = "
      & Float_6D'First'Image);
   Put_Line
     ("Float_6D'Last            = "
      & Float_6D'Last'Image);

   Put_Line
     ("--------------------------");

   Put_Line
     ("Float_6D_Norm'First      = "
      & Float_6D_Norm'First'Image);
   Put_Line
     ("Float_6D_Norm'Last       = "
      & Float_6D_Norm'Last'Image);

   Put_Line
     ("Float_6D_Norm'Base'First = "
      & Float_6D_Norm'Base'First'Image);
   Put_Line
     ("Float_6D_Norm'Base'Last  = "
      & Float_6D_Norm'Base'Last'Image);

end Show_Floating_Point_Base_Range;