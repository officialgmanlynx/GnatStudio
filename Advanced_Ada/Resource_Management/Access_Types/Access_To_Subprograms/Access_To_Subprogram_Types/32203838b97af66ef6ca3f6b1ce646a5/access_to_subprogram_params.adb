package body Access_To_Subprogram_Params is

   procedure Proc (P : Access_To_Procedure) is
      I : Integer := 0;
   begin
      P (I);
      --  P.all (I);
   end Proc;

end Access_To_Subprogram_Params;