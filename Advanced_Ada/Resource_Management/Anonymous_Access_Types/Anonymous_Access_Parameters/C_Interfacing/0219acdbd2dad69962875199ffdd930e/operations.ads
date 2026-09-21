package Operations is

   procedure Add_One (IA : access Integer)
     with Import, Convention => C;

end Operations;