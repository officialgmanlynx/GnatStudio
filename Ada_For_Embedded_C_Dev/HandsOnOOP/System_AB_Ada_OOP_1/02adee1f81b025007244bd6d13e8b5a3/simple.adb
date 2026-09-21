package body Simple is

   overriding procedure Activate (E : in out Sys_Base) is
   begin
      E.Active := True;
   end Activate;

   overriding function Is_Active (E : Sys_Base) return Boolean is
      (E.Active);

   overriding procedure Deactivate (E : in out Sys_Base) is
   begin
      E.Active := False;
   end Deactivate;

end Simple;