package body Simple.System_A is

   procedure Activate (E : in out A) is
   begin
      E.Val    := (others => 0.0);
      E.Active := True;
   end Activate;

   function Is_Active (E : A) return Boolean is
      (E.Active);

   function Value (E : A) return Float is
   begin
      return (E.Val (1) + E.Val (2)) / 2.0;
   end Value;

   procedure Finalize (E : in out A) is
   begin
      E.Active := False;
   end Finalize;

end Simple.System_A;