procedure Show_Literal_Resolution is

   type Apple_Count is range 0 .. 100;

   procedure Peel (Count : Apple_Count) is null;
begin
   Peel (20);
end Show_Literal_Resolution;