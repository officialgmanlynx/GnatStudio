package Show_Increments is

   type Array_Of_Positives is array (Natural range <>) of Positive;

   Increment : constant Natural := 10;

   procedure Incr_Step_Function (A : in out Array_Of_Positives);

end Show_Increments;