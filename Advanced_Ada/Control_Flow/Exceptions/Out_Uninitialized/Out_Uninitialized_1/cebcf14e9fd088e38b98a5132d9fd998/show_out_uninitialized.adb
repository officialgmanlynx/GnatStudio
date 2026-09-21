with Ada.Text_IO;  use Ada.Text_IO;
procedure Show_Out_Uninitialized is

   procedure Local (A     : in out Integer;
                    Error : Boolean) is
   begin
      A := 1;

      if Error then
         raise Program_Error;
      end if;
   end Local;

   B : Integer := 0;

begin
   Local (B, Error => True);
exception
   when Program_Error =>
      Put_Line ("Value for B is"
                & Integer'Image (B));  --  "0"
end Show_Out_Uninitialized;