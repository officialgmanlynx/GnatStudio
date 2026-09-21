package Integer_Arrays is

   type Integer_Array is
     array (Positive range <>) of Integer;

   function Sum (Arr : Integer_Array)
                 return Integer;

   --
   --  Expression function using
   --  declare expression:
   --
   function Avg (Arr : Integer_Array)
                 return Float is
     (declare
         A :          Integer_Array renames Arr;
         S : constant Float := Float (Sum (A));
         L : constant Float := Float (A'Length);
      begin
         S / L);

end Integer_Arrays;