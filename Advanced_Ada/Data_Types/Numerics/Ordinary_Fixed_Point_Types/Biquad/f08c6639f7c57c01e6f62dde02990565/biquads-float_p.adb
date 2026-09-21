package body Biquads.Float_P is

   --  Floating-point coefficients
   --  (for comparison)
   FA0 : constant Float :=  0.00115966796875;
   FA1 : constant Float :=  0.0023193359375;
   FA2 : constant Float :=  0.00115966796875;
   FB1 : constant Float := -1.8319091796875;
   FB2 : constant Float :=  0.836578369140625;

   function Biquad (D    : in out Filter_Delay;
                    X_In : Float)
                    return Float
   is
      X, Y : Float;
   begin
      X    := X_In;
      Y    := FA0 * X + D.Z1;
      D.Z1 := FA1 * X + D.Z2 - FB1 * Y;
      D.Z2 := FA2 * X - FB2 * Y;
      return Y;
   end Biquad;

end Biquads.Float_P;