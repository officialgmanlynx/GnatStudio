package body Private_Arrays is

   function Init
     (L : Positive)
      return Private_Constrained_Array
   is
      PCA : Private_Constrained_Array (1 .. L);
   begin
      return PCA;
   end Init;

end Private_Arrays;