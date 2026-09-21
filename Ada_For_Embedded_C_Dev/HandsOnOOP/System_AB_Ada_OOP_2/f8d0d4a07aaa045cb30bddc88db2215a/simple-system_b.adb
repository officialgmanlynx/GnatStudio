package body Simple.System_B is

   procedure Activation_Reset (E : in out B) is
   begin
      E.Val := 0.0;
   end Activation_Reset;

   function Value (E : B) return Float is
     (E.Val);

end Simple.System_B;