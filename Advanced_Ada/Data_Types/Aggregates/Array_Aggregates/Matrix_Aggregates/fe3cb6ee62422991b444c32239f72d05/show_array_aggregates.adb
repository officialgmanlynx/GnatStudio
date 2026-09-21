with Matrices; use Matrices;

procedure Show_Array_Aggregates is
   M : Matrix (1 .. 2, 1 .. 3);
begin
   --  Positional component association
   M := [[0, 1, 2],
         [3, 4, 5]];

   Display (M);

   --  Named component association
   M := [[1 => 3,
          2 => 4,
          3 => 5],
         [1 => 6,
          2 => 7,
          3 => 8]];

   Display (M);

end Show_Array_Aggregates;