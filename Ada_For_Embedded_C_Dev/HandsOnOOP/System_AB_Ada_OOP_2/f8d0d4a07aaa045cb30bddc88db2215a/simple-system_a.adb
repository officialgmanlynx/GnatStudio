package body Simple.System_A is

   procedure Activation_Reset (E : in out A) is
   begin
      E.Val := (others => 0.0);
   end Activation_Reset;

   function Value (E : A) return Float is
      pragma Assert (E.Val'Length = 2);
   begin
      return (E.Val (1) + E.Val (2)) / 2.0;
   end Value;

end Simple.System_A;