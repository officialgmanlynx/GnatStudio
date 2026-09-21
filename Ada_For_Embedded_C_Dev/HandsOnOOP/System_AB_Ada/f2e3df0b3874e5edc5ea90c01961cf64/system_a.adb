package body System_A is

   procedure A_Activate (E : in out A) is
   begin
      E.Val    := (others => 0.0);
      E.Active := True;
   end A_Activate;

   function A_Is_Active (E : A) return Boolean is
   begin
      return E.Active;
   end A_Is_Active;

   function A_Value (E : A) return Float is
   begin
      return (E.Val (1) + E.Val (2)) / 2.0;
   end A_Value;

   procedure A_Deactivate (E : in out A) is
   begin
      E.Active := False;
   end A_Deactivate;

end System_A;