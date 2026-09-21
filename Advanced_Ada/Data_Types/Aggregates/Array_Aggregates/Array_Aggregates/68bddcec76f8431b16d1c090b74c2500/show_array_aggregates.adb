with Points; use Points;

procedure Show_Array_Aggregates is
   P : Point_3D;
begin
   --  All components have a value of zero
   P := [for I in 1 .. 3 => 0];

   Display (P);

   --  Both first and second components have
   --  a value of three
   P := [for I in 1 .. 3 =>
           (if I = 1 or I = 2
            then 3
            else 4)];

   Display (P);

   --  The first component has a value of 99
   --  and all other components have a value
   --  that corresponds to its index
   P := [1 => 99,
         for I in 2 .. 3 => I];

   Display (P);
end Show_Array_Aggregates;