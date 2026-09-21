with Unconstrained_Types; use Unconstrained_Types;

with Show_Integer_Array_Header;

procedure Using_Unconstrained_Type is
   A_5  : constant Integer_Array (1 .. 5)  :=
            (1, 2, 3, 4, 5);
   A_10 : constant Integer_Array (1 .. 10) :=
            (1, 2, 3, 4, 5, others => 99);
begin
   Show_Integer_Array_Header (A_5,
                              "First example");
   Show_Integer_Array_Header (A_10,
                              "Second example");
end Using_Unconstrained_Type;