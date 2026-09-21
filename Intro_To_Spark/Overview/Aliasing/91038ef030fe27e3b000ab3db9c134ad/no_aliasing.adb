procedure No_Aliasing is

   Total : Natural := 0;

   procedure Move_To_Total (Source : in out Natural)
     with Post => Total = Total'Old + Source'Old and Source = 0
   is
   begin
      Total  := Total + Source;
      Source := 0;
   end Move_To_Total;

   X : Natural := 3;

begin
   Move_To_Total (X);         -- OK
   pragma Assert (Total = 3); -- OK
   Move_To_Total (Total);     -- flow analysis error
   pragma Assert (Total = 6); -- runtime error
end No_Aliasing;