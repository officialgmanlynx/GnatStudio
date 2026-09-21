package Drivers_1 is

   type Device_1 is null record;
   procedure Startup (Device : Device_1);
   procedure Send (Device : Device_1; Data : Integer);
   procedure Send_Fast (Device : Device_1; Data : Integer);
   procedure Receive (Device : Device_1; Data : out Integer);

end Drivers_1;