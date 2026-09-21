package P
  with SPARK_Mode => On
is
   type P_Array is array (Natural range <>) of Positive;

   procedure Swap_Indexes (A : in out P_Array; I, J : Natural);
   procedure Swap (X, Y : in out Positive);
end P;