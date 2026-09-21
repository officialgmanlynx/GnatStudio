package Private_Integers is

   --  Partial view of private Integer type:
   type Private_Integer is private;

   function "+" (Left, Right : Private_Integer)
                 return Private_Integer;

private

   --  Full view of private Integer type:
   type Private_Integer is new Integer;

end Private_Integers;