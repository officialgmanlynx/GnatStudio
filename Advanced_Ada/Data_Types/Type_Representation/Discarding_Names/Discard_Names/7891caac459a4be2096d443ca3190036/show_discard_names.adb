procedure Show_Discard_Names is
   pragma Warnings (Off, "is not referenced");

   type Months is
     (January, February, March, April,
      May, June, July, August, September,
      October, November, December)
     with Discard_Names;

   M : constant Months := January;
begin
   null;
end Show_Discard_Names;