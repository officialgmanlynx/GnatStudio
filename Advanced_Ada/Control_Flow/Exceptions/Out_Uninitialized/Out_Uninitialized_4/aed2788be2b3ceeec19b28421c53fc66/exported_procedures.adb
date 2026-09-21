package body Exported_Procedures is

   procedure Local (A     : in out Integer;
                    Error : Boolean) is
   begin A := 1;
      if Error then
         raise Program_Error;
      end if;
   end Local;

end Exported_Procedures;