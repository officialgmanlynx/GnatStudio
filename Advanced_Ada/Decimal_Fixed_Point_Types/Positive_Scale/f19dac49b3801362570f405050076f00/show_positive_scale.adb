with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Positive_Scale is

   type TP3_D3 is
     delta 10.0 ** 3 digits 2;
     --           ^^^
     --  Scale N is -(-3), i.e.:
     --  TP3_D3'Scale = -3

begin
   Put_Line ("TP3_D3'Range : "
             & TP3_D3'First'Image
             & " .. "
             & TP3_D3'Last'Image);
   Put_Line ("TP3_D3'Delta : "
             & TP3_D3'Delta'Image);
end Show_Positive_Scale;