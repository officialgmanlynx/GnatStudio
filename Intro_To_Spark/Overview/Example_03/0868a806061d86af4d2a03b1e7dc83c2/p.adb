package body P
  with SPARK_Mode => On
is
   procedure Permute (X, Y, Z : in out Positive) is
      Tmp : constant Positive := X;
   begin
      X := Y;
      Y := Z;
      Z := Tmp;
   end Permute;

   procedure Swap (X, Y : in out Positive) is
   begin
      Permute (X, Y, Y);
   end Swap;
end P;