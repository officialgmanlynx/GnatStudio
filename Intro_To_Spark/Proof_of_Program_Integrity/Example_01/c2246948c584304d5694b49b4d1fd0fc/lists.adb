package body Lists with SPARK_Mode is

   function Goes_To (I, J : Index) return Boolean is
   begin
      if Memory (I).Is_Set then
         return Memory (I).Next = J;
      end if;
      return False;
   end Goes_To;

   procedure Link (I, J : Index) is
   begin
      Memory (I) := (Is_Set => True, Next => J);
   end Link;

end Lists;