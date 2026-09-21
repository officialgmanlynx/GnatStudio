package Tagged_Full_View_Example is

   --  Partial view using non-tagged type:
   type R is private;

private

   --  Full view using tagged type:
   type R is tagged record
      I : Integer;
   end record;

end Tagged_Full_View_Example;