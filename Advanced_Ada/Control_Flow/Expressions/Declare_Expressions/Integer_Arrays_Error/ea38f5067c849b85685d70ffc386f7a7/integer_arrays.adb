package body Integer_Arrays is

   function Sum (Arr : Integer_Array)
                 return Integer is
   begin
      return Acc : Integer := 0 do
         for V of Arr loop
            Acc := Acc + V;
         end loop;
      end return;
   end Sum;

   function Sum (Arr : Integer_Array)
                 return Integer_Sum is
     (Integer_Sum (Integer'(Sum (Arr))));

end Integer_Arrays;