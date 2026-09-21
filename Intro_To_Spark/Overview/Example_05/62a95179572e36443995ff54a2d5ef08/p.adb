package body P
  with SPARK_Mode => On
is
   procedure Swap (X, Y : in out Positive) is
      Tmp : constant Positive := X;
   begin
      X := Y;
      Y := Tmp;
   end Swap;

   procedure Swap_Indexes (A : in out P_Array; I, J : Natural) is
   begin
      Swap (A (I), A (J));
   end Swap_Indexes;

end P;