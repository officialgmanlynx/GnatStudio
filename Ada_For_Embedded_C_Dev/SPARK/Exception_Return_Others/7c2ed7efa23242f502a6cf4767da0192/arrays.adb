package body Arrays is

   function Value (A : List; X, Y : Integer) return Integer is
   begin
      return A (X + Y * 10);
   exception
      when Constraint_Error =>
         return 0;
      when others =>
         return -1;
   end Value;

end Arrays;