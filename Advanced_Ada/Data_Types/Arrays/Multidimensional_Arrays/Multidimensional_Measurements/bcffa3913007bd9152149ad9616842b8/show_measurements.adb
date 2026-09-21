with Measurement_Defs; use Measurement_Defs;

procedure Show_Measurements is
   M : Measurements;
begin
   Reset (M);
   Show_Indices (M);
   Show_Values (M);
end Show_Measurements;