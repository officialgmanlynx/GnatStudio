package body Show_Ghost_Proc is

   procedure Increase_A is
   begin
      for I in A'Range loop
         A (I) := A (I) + 1;
      end loop;
   end Increase_A;

end Show_Ghost_Proc;