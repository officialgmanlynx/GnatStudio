with Ada.Text_IO; use Ada.Text_IO;

package body Drivers_2 is

   procedure Send (Device : Transceiver; Data : Integer) is null;

   procedure Receive (Device : Transceiver; Data : out Integer) is
      pragma Unreferenced (Device);
   begin
      Data := 7;
   end Receive;

   procedure Display (Device : Transceiver) is
      pragma Unreferenced (Device);
   begin
      Put_Line ("Using Drivers_2");
   end Display;

end Drivers_2;