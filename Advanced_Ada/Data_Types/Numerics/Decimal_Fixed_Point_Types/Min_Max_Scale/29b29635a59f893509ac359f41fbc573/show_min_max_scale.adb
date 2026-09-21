with Ada.Text_IO; use Ada.Text_IO;
with Ada.Decimal; use Ada.Decimal;

procedure Show_Min_Max_Scale is
begin
   Put_Line ("Min_Scale : "
             & Min_Scale'Image);
   Put_Line ("Max_Scale : "
             & Max_Scale'Image);
   Put_Line ("--------------------");
   Put_Line ("Min_Delta : "
             & Min_Delta'Image);
   Put_Line ("Max_Delta : "
             & Max_Delta'Image);
end Show_Min_Max_Scale;