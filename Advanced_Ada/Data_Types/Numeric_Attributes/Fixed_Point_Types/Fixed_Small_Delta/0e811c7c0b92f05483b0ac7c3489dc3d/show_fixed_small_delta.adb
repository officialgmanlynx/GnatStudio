with Ada.Text_IO;       use Ada.Text_IO;

with Fixed_Small_Delta; use Fixed_Small_Delta;

procedure Show_Fixed_Small_Delta is
begin
   Put_Line ("T3_D3'Small: "
             & T3_D3'Small'Image);
   Put_Line ("T3_D3'Delta: "
             & T3_D3'Delta'Image);
   Put_Line ("T3_D3'Size: "
             & T3_D3'Size'Image);
   Put_Line ("--------------------");

   Put_Line ("TD3'Small: "
             & TD3'Small'Image);
   Put_Line ("TD3'Delta: "
             & TD3'Delta'Image);
   Put_Line ("TD3'Size: "
             & TD3'Size'Image);
   Put_Line ("--------------------");

   Put_Line ("TQ31'Small: "
             & TQ31'Small'Image);
   Put_Line ("TQ31'Delta: "
             & TQ31'Delta'Image);
   Put_Line ("TQ32'Size: "
             & TQ31'Size'Image);
   Put_Line ("--------------------");

   Put_Line ("TQ15'Small: "
             & TQ15'Small'Image);
   Put_Line ("TQ15'Delta: "
             & TQ15'Delta'Image);
   Put_Line ("TQ15'Size: "
             & TQ15'Size'Image);
end Show_Fixed_Small_Delta;