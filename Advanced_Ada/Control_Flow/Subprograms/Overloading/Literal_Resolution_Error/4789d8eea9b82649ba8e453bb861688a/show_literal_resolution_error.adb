procedure Show_Literal_Resolution_Error is

   type Apple_Count is range 0 .. 100;
   procedure Slice (Count : Apple_Count) is null;

   type Orange_Count is range 0 .. 10_000;
   procedure Slice (Count : Orange_Count) is null;
begin
   Slice (Count => (10_000));  --  Illegal!
end Show_Literal_Resolution_Error;