package body System_B is

   procedure B_Activate (E : in out B) is
   begin
      E.Val    := 0.0;
      E.Active := True;
   end B_Activate;

   function B_Is_Active (E : B) return Boolean is
   begin
      return E.Active;
   end B_Is_Active;

   function B_Value (E : B) return Float is
   begin
      return E.Val;
   end B_Value;

   procedure B_Deactivate (E : in out B) is
   begin
      E.Active := False;
   end B_Deactivate;

end System_B;