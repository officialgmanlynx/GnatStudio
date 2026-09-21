with Ada.Text_IO; use Ada.Text_IO;

with System_AB;   use System_AB;

procedure Main is

   procedure Display_Active (E : AB) is
   begin
      if AB_Is_Active (E) then
         Put_Line ("System AB is active");
      else
         Put_Line ("System AB is not active");
      end if;
   end Display_Active;

   procedure Display_Check (E : AB) is
   begin
      if AB_Check (E) then
         Put_Line ("System AB check: PASSED");
      else
         Put_Line ("System AB check: FAILED");
      end if;
   end Display_Check;

   S : AB;
begin
   Put_Line ("Activating system AB...");
   AB_Activate (S);

   Display_Active (S);
   Display_Check (S);

   Put_Line ("Deactivating system AB...");
   AB_Deactivate (S);

   Display_Active (S);
end Main;