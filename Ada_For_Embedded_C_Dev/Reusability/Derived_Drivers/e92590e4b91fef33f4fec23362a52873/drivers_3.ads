with Drivers_1; use Drivers_1;

package Drivers_3 is

   type Device_3 is new Device_1;

   overriding
   procedure Startup (Device : Device_3);

   procedure Send_Fast (Device : Device_3; Data : Integer)
   is abstract;

end Drivers_3;