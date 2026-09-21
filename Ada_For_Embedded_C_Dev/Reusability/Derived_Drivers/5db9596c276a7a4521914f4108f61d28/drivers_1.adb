package body Drivers_1 is

   --  NOTE: unimplemented procedures: Startup, Send, Send_Fast
   --        mock-up implementation: Receive

   procedure Startup (Device : Device_1) is null;

   procedure Send (Device : Device_1; Data : Integer) is null;

   procedure Send_Fast (Device : Device_1; Data : Integer) is null;

   procedure Receive (Device : Device_1; Data : out Integer) is
   begin
      Data := 42;
   end Receive;

end Drivers_1;