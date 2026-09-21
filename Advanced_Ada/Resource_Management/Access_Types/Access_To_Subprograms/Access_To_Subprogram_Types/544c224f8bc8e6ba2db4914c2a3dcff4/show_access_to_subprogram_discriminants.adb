with Ada.Text_IO;       use Ada.Text_IO;

with Custom_Processing; use Custom_Processing;

with Add_Ten;
with Mult_Two;

procedure Show_Access_To_Subprogram_Discriminants
is

   R_Add_Ten  : Rec (IP => Add_Ten'Access);
   --                ^^^^^^^^^^^^^^^^^^^^
   --       Using access-to-subprogram as a
   --       discriminant

   R_Mult_Two : Rec (IP => Mult_Two'Access);
   --                ^^^^^^^^^^^^^^^^^^^^^
   --       Using access-to-subprogram as a
   --       discriminant

begin
   Init (R_Add_Ten,  1);
   Init (R_Mult_Two, 2);

   Put_Line ("---- R_Add_Ten ----");
   Show (R_Add_Ten);

   Put_Line ("Calling Process procedure...");
   Process (R_Add_Ten);
   Show (R_Add_Ten);

   Put_Line ("---- R_Mult_Two ----");
   Show (R_Mult_Two);

   Put_Line ("Calling Process procedure...");
   Process (R_Mult_Two);
   Show (R_Mult_Two);
end Show_Access_To_Subprogram_Discriminants;