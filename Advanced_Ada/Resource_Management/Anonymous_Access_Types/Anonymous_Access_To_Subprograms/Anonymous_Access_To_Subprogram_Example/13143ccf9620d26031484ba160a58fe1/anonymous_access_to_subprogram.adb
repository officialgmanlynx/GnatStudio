package body Anonymous_Access_To_Subprogram is

   procedure Proc
     (P : access procedure (I : in out Integer))
   is
      I : Integer := 0;
   begin
      P (I);
   end Proc;

end Anonymous_Access_To_Subprogram;