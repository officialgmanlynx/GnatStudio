package body Arrays is

   function Value (A : List; X, Y : Integer) return Integer is
      pragma Suppress (All_Checks);
   begin
      return A (X + Y * 10);
   end Value;

end Arrays;