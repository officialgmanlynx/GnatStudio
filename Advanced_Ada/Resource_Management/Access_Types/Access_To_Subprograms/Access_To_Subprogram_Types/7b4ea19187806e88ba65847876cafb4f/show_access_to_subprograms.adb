with Access_To_Subprogram_Types;
use  Access_To_Subprogram_Types;

with Access_To_Subprogram_Params;
use  Access_To_Subprogram_Params;

with Add_Ten;
with Add_Twenty;

procedure Show_Access_To_Subprograms is
   P        : Access_To_Procedure;
   Some_Int : Integer := 0;
begin
   P := Add_Ten'Access;
   --           ^ Getting access to Add_Ten
   --             procedure and assigning it
   --             to P

   Proc (P);
   --    ^ Passing access-to-subprogram as an
   --      actual parameter

   P (Some_Int);
   --  ^ Using access-to-subprogram object in a
   --    subprogram call

   P := Add_Twenty'Access;
   --              ^ Getting access to Add_Twenty
   --                procedure and assigning it
   --                to P

   Proc (P);
   P (Some_Int);
end Show_Access_To_Subprograms;