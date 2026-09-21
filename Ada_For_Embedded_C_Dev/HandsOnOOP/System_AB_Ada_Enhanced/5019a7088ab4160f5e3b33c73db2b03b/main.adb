with Ada.Text_IO;      use Ada.Text_IO;

with Simple.System_AB; use Simple.System_AB;

procedure Main is

   procedure Display_Active (E : AB) is
   begin
      if Is_Active (E) then
         Put_Line ("System AB is active");
      else
         Put_Line ("System AB is not active");
      end if;
   end Display_Active;

   procedure Display_Check (E : AB) is
   begin
      if Check (E) then
         Put_Line ("System AB check: PASSED");
      else
         Put_Line ("System AB check: FAILED");
      end if;
   end Display_Check;

   S : AB;
begin
   Put_Line ("Activating system AB...");
   Activate (S);

   Display_Active (S);
   Display_Check (S);

   Put_Line ("Deactivating system AB...");
   Finalize (S);

   Display_Active (S);
end Main;