with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Access_To_Subprogram_Error is

   type PI is access
     procedure (I : in out Integer);

   P : PI;

   I : Integer := 0;
begin
   declare
      procedure Add_One (I : in out Integer) is
      begin
         I := I + 1;
      end Add_One;
   begin
      P := Add_One'Access;
   end;
end Show_Access_To_Subprogram_Error;