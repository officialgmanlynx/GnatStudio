with Devices; use Devices;

procedure Show_Device is
   D     : Device;
   D_Off : Device (Off);
   D_On  : Device (On);
begin
   D := D_Off;
   --  OK!

   D := D_On;
   --  OK!

   D_Off := D_On;
   --       ^^^^
   --  CONSTRAINT_ERROR!

   D_On  := D_Off;
   --       ^^^^^
   --  CONSTRAINT_ERROR!
end Show_Device;