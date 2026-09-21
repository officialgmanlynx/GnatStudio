with Ada.Text_IO; use Ada.Text_IO;

with Access_To_Subprogram_Types;
use  Access_To_Subprogram_Types;

with Add_Ten;
with Add_Twenty;

procedure Show_Access_To_Subprograms is
   RA       : Rec_Access_To_Procedure;
   Some_Int : Integer := 0;
begin
   Put_Line ("Some_Int: " & Some_Int'Image);

   RA := (AP => Add_Ten'Access);
   RA.AP (Some_Int);
   Put_Line ("Some_Int: " & Some_Int'Image);

   RA := (AP => Add_Twenty'Access);
   RA.AP (Some_Int);
   Put_Line ("Some_Int: " & Some_Int'Image);
end Show_Access_To_Subprograms;