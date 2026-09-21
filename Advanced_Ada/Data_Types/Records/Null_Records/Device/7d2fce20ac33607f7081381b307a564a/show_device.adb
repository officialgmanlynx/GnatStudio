with Ada.Text_IO; use Ada.Text_IO;
with Devices;     use Devices;

procedure Show_Device is
   A : Device;
begin
   Put_Line ("Creating device...");
   A := Create (Active => True);

   Put_Line ("Processing on device...");
   Process (A);

   Put_Line ("Deactivating device...");
   Deactivate (A);

   Put_Line ("Activating device...");
   Activate (A);

   Put_Line ("Resetting device...");
   Reset (A);
end Show_Device;