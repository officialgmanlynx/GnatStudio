package Integer_Arrays is

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Integer_Sum is limited private;

   type Const_Integer_Access is
     access constant Integer;

   function Sum (Arr : Integer_Array)
                 return Integer;

   function Sum (Arr : Integer_Array)
                 return Integer_Sum;

   --
   --  Expression function using
   --  declare expression:
   --
   function Avg (Arr : Integer_Array)
                 return Float is
     (declare
         A  : Integer_Array renames Arr;

         S1 : aliased constant Integer := Sum (A);
         --  ERROR: aliased constant

         S : Float := Float (S1);
         L : Float := Float (A'Length);
         --  ERROR: declaring variables

         S2 : constant Integer_Sum := Sum (A);
         --  ERROR: declaring constant of
         --         limited type

         A1 : Const_Integer_Access :=
                S1'Unchecked_Access;
         --  ERROR: using 'Unchecked_Access
         --         attribute

         A2 : access Integer := null;
         --  ERROR: declaring object of
         --         anonymous access type
      begin
         S / L);

private

   type Integer_Sum is new Integer;

end Integer_Arrays;