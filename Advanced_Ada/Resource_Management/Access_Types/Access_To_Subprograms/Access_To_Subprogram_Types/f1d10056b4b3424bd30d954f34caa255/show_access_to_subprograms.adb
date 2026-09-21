with Ada.Text_IO; use Ada.Text_IO;

with Access_To_Subprogram_Types;
use  Access_To_Subprogram_Types;

with Add_Ten;
with Add_Twenty;

procedure Show_Access_To_Subprograms is
   PA : constant
          Access_To_Procedure_Array (1 .. 2) :=
            (Add_Ten'Access,
             Add_Twenty'Access);

   Some_Int : Integer := 0;
begin
   Put_Line ("Some_Int: " & Some_Int'Image);

   for I in PA'Range loop
      PA (I) (Some_Int);
      Put_Line ("Some_Int: " & Some_Int'Image);
   end loop;
end Show_Access_To_Subprograms;