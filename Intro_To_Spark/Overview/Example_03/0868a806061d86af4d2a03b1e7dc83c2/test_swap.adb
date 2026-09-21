with P; use P;

procedure Test_Swap
  with SPARK_Mode => On
is
   A : Integer := 1;
   B : Integer := 2;
begin
   Swap (A, B);
end Test_Swap;