with Drivers_Base;

package Drivers_1 is

   type Transceiver is new Drivers_Base.Transceiver with null record;

   procedure Send (Device : Transceiver; Data : Integer);
   procedure Receive (Device : Transceiver; Data : out Integer);
   procedure Display (Device : Transceiver);

end Drivers_1;