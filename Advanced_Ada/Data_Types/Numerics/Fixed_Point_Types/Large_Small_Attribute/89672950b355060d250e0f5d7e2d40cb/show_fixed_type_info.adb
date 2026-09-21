with Fixed_Point_Defs; use Fixed_Point_Defs;
with Ada.Text_IO;      use Ada.Text_IO;

procedure Show_Fixed_Type_Info is
begin
   Put_Line ("Size : "
             & Fixed'Size'Image);
   Put_Line ("Small : "
             & Fixed'Small'Image);
   Put_Line ("Delta : "
             & Fixed'Delta'Image);
   Put_Line ("First : "
             & Fixed'First'Image);
   Put_Line ("Last : "
             & Fixed'Last'Image);
end Show_Fixed_Type_Info;