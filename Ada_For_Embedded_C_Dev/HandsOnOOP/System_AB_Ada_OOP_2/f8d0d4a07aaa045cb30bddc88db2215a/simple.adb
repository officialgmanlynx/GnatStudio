package body Simple is

   procedure Activate (E : in out Sys_Base) is
   begin
      --  NOTE: calling "E.Activation_Reset" does NOT dispatch!
      --        We need to use the 'Class attribute:
      Sys_Base'Class (E).Activation_Reset;

      E.Active := True;
   end Activate;

   function Is_Active (E : Sys_Base) return Boolean is
      (E.Active);

   procedure Deactivate (E : in out Sys_Base) is
   begin
      E.Active := False;
   end Deactivate;

end Simple;