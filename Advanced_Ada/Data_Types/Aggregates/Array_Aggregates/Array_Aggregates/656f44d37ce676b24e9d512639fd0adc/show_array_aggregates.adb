with Points; use Points;

procedure Show_Array_Aggregates is
   P : Point_3D;
begin
   --  All components have a value of zero.
   P := [1 .. 3 => 0];

   Display (P);

   --  Both first and second components have
   --  a value of three.
   P := [1 .. 2 => 3,
         3      => 4];

   Display (P);

   --  The default value is used for the first
   --  component, and all other components
   --  have a value of five.
   P := [1      => <>,
         2 .. 3 => 5];

   Display (P);
end Show_Array_Aggregates;