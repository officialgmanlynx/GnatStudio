package Operations is

   function Alloc_Integer return access Integer
     with Import, Convention => C;

   procedure Dealloc_Integer (IA : access Integer)
     with Import, Convention => C;

   procedure Add_One
    (IA : aliased in out Integer)
       with Import, Convention => C;

end Operations;