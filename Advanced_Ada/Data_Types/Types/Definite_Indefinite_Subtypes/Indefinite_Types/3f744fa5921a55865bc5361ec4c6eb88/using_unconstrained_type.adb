with Unconstrained_Types; use Unconstrained_Types;
with Show_Integer_Array;

procedure Using_Unconstrained_Type is
   A_5  : constant Integer_Array (1 .. 5)  :=
            (1, 2, 3, 4, 5);
   A_10 : constant Integer_Array (1 .. 10) :=
            (1, 2, 3, 4, 5, others => 99);
begin
   Show_Integer_Array (A_5);
   Show_Integer_Array (A_10);
end Using_Unconstrained_Type;