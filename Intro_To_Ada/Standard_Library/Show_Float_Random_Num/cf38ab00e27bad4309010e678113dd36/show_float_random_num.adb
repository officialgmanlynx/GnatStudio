with Ada.Text_IO;  use Ada.Text_IO;

with Ada.Numerics.Float_Random;
use  Ada.Numerics.Float_Random;

procedure Show_Float_Random_Num is
   G : Generator;
   X : Uniformly_Distributed;
begin
   Reset (G);

   Put_Line ("Some random numbers between "
             & Float'Image
                 (Uniformly_Distributed'First)
             & " and "
             & Float'Image
                 (Uniformly_Distributed'Last)
             & ":");
   for I in 1 .. 15 loop
      X := Random (G);
      Put_Line (Float'Image (X));
   end loop;
end Show_Float_Random_Num;