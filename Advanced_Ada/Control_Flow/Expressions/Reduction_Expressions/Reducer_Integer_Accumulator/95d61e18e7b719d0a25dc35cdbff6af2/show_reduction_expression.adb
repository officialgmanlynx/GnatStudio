with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Reduction_Expression is
   type Integer_Array is
     array (Positive range <>) of Integer;

   A : Integer_Array (1 .. 3);

   type Integer_Accumulator is record
      Value : Long_Integer;
      Count : Integer;
   end record;

   function Accumulate
     (Accumulator : Integer_Accumulator;
      Value       : Integer)
      return Integer_Accumulator is
   begin
      return (Value => Accumulator.Value
                       + Long_Integer (Value),
              Count => Accumulator.Count + 1);
   end Accumulate;

   function Zero return Integer_Accumulator is
     (Value => 0, Count => 0);

   function Average (Acc : Integer_Accumulator)
                     return Float is
     (Float (Acc.Value) / Float (Acc.Count));

   Acc : Integer_Accumulator;

begin
   A := [2, 3, 4];

   Acc := A'Reduce (Accumulate, Zero);
   Put_Line ("Acc = "
             & Acc'Image);
   Put_Line ("Avg = "
             & Average (Acc)'Image);
end Show_Reduction_Expression;