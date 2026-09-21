package body Drivers_3 is

   overriding
   procedure Startup (Device : Device_3) is
   begin
      Drivers_1.Startup (Device_1 (Device));
   end Startup;

end Drivers_3;