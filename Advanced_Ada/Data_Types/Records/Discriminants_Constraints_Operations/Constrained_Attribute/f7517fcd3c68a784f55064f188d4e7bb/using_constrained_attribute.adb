with Ada.Text_IO;         use Ada.Text_IO;

with Unconstrained_Types; use Unconstrained_Types;

procedure Using_Constrained_Attribute is
   R1 : Simple_Record;
   R2 : Simple_Record (Extended => False);

   procedure Show_Rs is
   begin
      Put_Line ("R1'Constrained => "
                & R1'Constrained'Image);
      Put_Line ("R1.Extended => "
                & R1.Extended'Image);
      Put_Line ("--");
      Put_Line ("R2'Constrained => "
                & R2'Constrained'Image);
      Put_Line ("R2.Extended => "
                & R2.Extended'Image);
      Put_Line ("----------------");
   end Show_Rs;
begin
   Show_Rs;

   Reset (R1);
   Reset (R2);
   Put_Line ("----------------");

   Show_Rs;
end Using_Constrained_Attribute;