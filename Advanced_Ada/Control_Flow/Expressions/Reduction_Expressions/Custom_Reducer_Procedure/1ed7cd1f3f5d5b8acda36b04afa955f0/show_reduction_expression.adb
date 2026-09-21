with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Reduction_Expression is
   type Integer_Array is
     array (Positive range <>) of Integer;

   A : Integer_Array (1 .. 3);
   I : Long_Integer;

   procedure Accumulate
     (Accumulator : in out Long_Integer;
      Value       : Integer) is
   begin
      Accumulator := Accumulator
                     + Long_Integer (Value);
   end Accumulate;

begin
   A := [2, 3, 4];
   I := A'Reduce (Accumulate, 0);

   Put_Line ("A = "
             & A'Image);
   Put_Line ("I = "
             & I'Image);
end Show_Reduction_Expression;