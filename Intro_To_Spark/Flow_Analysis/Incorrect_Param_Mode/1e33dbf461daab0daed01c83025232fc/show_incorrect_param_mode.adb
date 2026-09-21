package body Show_Incorrect_Param_Mode is

   procedure Swap (X, Y : in out T) is
      Tmp : T := X;
   begin
      Y := X;   -- The initial value of Y is not used
      X := Tmp; -- Y is computed to be an out parameter
   end Swap;

end Show_Incorrect_Param_Mode;