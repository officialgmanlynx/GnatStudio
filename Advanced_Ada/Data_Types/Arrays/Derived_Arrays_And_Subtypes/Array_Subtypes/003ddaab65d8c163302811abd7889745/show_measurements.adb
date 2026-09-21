with Measurement_Defs; use Measurement_Defs;

procedure Show_Measurements is
   M1, M2  : Measurements (1 .. 10)
               := (others => 0.0);
   MS      : Measurements_Sub (1 .. 10);
   MD10    : Measurements_10;
   M_Max20 : Measurements_Max_20 (1 .. 40);
   M_F2    : Measurements_First_Two;
begin
   MS       := M1;
   MD10     := M1;

   M_Max20  := (others => 0.0);  --  ERROR!

   MD10 (1) := 4.0;
   M_F2     := MD10;             --  ERROR!
end Show_Measurements;