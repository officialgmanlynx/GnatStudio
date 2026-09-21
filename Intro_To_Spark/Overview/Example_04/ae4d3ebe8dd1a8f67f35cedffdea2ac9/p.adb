package body P
  with SPARK_Mode => On
is
   procedure Swap (X, Y : in out Positive) is
      Tmp : constant Positive := X;
   begin
      X := Y;
      Y := Tmp;
   end Swap;

   procedure Swap_Fields (R : in out Rec) is
   begin
      Swap (R.F1, R.F2);
   end Swap_Fields;

end P;