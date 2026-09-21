package body Integer_Arrays is

   function "+" (Left, Right : Integer_Array)
                 return Integer_Array
   is
      R : Integer_Array (Left'Range);
   begin
      for I in Left'Range loop
         R (I) := Left (I) + Right (I);
      end loop;

      return R;
   end "+";

end Integer_Arrays;