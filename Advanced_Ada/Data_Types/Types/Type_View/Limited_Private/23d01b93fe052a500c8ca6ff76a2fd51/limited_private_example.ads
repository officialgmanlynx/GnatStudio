package Limited_Private_Example is

   --  Partial view must be limited,
   --  since the full view is limited.
   type R is limited private;

private

   type R is limited record
      I : Integer;
   end record;

end Limited_Private_Example;