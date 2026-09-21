procedure Show_Index_Check is

   type Integer_Array is
     array (Positive range <>) of Integer;

   function Value_Of (A : Integer_Array;
                      I : Integer)
                      return Integer
   is
      type Half_Integer_Array is new
        Integer_Array (A'First ..
                       A'First + A'Length / 2);

      A_2 : Half_Integer_Array := (others => 0);
   begin
      return A_2 (I);
   end Value_Of;

   Arr_1 : Integer_Array (1 .. 10) :=
             (others => 1);

begin
   Arr_1 (10) := Value_Of (Arr_1, 10);

end Show_Index_Check;