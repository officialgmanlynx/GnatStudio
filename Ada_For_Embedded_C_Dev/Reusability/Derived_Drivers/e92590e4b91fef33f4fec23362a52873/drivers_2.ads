with Drivers_1;

package Drivers_2 is

   type Transceiver is new Drivers_1.Transceiver;
   procedure Send (Device : Transceiver; Data : Integer);
   procedure Receive (Device : Transceiver; Data : out Integer);

end Drivers_2;