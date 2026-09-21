with Ada.Text_IO;      use Ada.Text_IO;
with Nonlimited_Types; use Nonlimited_Types;

procedure Show_Wrong_Assignment_Equality is
   A, B : Simple_Rec := Init (0);

   procedure Show_Compare is
   begin
      if A = B then
         Put_Line ("A = B");
      else
         Put_Line ("A /= B");
      end if;
   end Show_Compare;
begin

   Put_Line ("A := Init (0); A := Init (0);");
   Show (A, "A");
   Show (B, "B");
   Show_Compare;
   Put_Line ("--------");

   Put_Line ("Set (A, 2); Set (B, 3);");
   Set (A, 2);
   Set (B, 3);

   Show (A, "A");
   Show (B, "B");
   Put_Line ("--------");

   Put_Line ("B := A");
   B := A;

   Show (A, "A");
   Show (B, "B");
   Show_Compare;
   Put_Line ("--------");

   Put_Line ("Set (B, 7);");
   Set (B, 7);

   Show (A, "A");
   Show (B, "B");
   Show_Compare;
   Put_Line ("--------");

end Show_Wrong_Assignment_Equality;