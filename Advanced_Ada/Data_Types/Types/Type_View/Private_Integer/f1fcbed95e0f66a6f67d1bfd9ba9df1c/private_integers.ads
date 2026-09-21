package Private_Integers is

   --  Partial view of private Integer type:
   type Private_Integer is private;

private

   --  Full view of private Integer type:
   type Private_Integer is new Integer;

end Private_Integers;