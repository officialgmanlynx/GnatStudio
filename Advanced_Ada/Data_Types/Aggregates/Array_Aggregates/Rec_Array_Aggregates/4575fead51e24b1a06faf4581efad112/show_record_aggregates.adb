with Points; use Points;

procedure Show_Record_Aggregates is
   PA : Point_3D_Array (1 .. 2);
begin
   PA := [ (X => 3,
            Y => 4,
            Z => 5),
           (X => 6,
            Y => 7,
            Z => 8) ];
   Display (PA);

   --  Array components are
   --  uninitialized.
   PA := [1 => <>,
          2 => <>];
   Display (PA);
end Show_Record_Aggregates;