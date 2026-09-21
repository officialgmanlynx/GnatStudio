package body Data is

   procedure Process (A : T2) is
   begin
      P.Process (P.T (A));
   end Process;

end Data;