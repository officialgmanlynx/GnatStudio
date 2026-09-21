procedure Main is
   type Grade is range 0 .. 100;

   G1, G2  : Grade;
   N       : Integer;
begin
   --  ...              --  Initialization of N
   G1 := 80;            --  OK
   G1 := N;             --  Illegal (type mismatch)
   G1 := Grade (N);     --  Legal, run-time range check
   G2 := G1 + 10;       --  Legal, run-time range check
   G1 := (G1 + G2) / 2; --  Legal, run-time range check
end Main;