package P
  with SPARK_Mode => On
is
   type Rec is record
      F1 : Positive;
      F2 : Positive;
   end record;

   procedure Swap_Fields (R : in out Rec);
   procedure Swap (X, Y : in out Positive);
end P;