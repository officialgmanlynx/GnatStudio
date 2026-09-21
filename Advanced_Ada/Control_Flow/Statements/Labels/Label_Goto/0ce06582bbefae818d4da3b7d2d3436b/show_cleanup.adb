procedure Show_Cleanup is
   pragma Warnings (Off, "always false");

   Some_Error : Boolean;
begin
   Some_Error := False;

   if Some_Error then
      goto Cleanup;
   end if;

   <<Cleanup>> null;
end Show_Cleanup;