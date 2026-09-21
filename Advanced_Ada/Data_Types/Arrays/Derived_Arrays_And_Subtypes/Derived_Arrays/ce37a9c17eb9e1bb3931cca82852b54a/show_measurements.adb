with Measurement_Defs; use Measurement_Defs;

procedure Show_Measurements is
   M1, M2  : Measurements (1 .. 10)
               := (others => 0.0);

   MD      : Measurements_Derived (1 .. 10);
   MD2     : Measurements_Derived (1 .. 40);
   MD10    : Measurements_10;
begin
   M1   := M2;
   --  ^^^^^^
   --  Assignment of arrays of
   --  same type.

   MD   := Measurements_Derived (M1);
   --      ^^^^^^^^^^^^^^^^^^^^^^^^^
   --  Conversion to derived type for
   --  the assignment.

   MD10 := Measurements_10 (M1);
   --      ^^^^^^^^^^^^^^^^^^^^
   --  Conversion to derived type for
   --  the assignment.

   MD10 := Measurements_10 (MD);
   MD10 := Measurements_10 (MD2 (1 .. 10));
end Show_Measurements;