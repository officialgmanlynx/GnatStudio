package body Simple.System_B is

   procedure Activate (E : in out B) is
   begin
      E.Val    := 0.0;
      E.Active := True;
   end Activate;

   function Is_Active (E : B) return Boolean is
   begin
      return E.Active;
   end Is_Active;

   function Value (E : B) return Float is
     (E.Val);

   procedure Finalize (E : in out B) is
   begin
      E.Active := False;
   end Finalize;

end Simple.System_B;