package Operations is

   procedure Add_One
    (IA : aliased in out Integer)
       with Import, Convention => C;

end Operations;