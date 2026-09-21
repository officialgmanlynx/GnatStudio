package Drivers_Base is

   type Transceiver is interface;

   procedure Send (Device : Transceiver; Data : Integer) is abstract;
   procedure Receive (Device : Transceiver; Data : out Integer) is abstract;
   procedure Display (Device : Transceiver) is abstract;

end Drivers_Base;