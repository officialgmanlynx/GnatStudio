with Ada.Text_IO; use Ada.Text_IO;

package body Transceivers is

   procedure Send (D : in out Transceiver) is
      pragma Unreferenced (D);
   begin
      Put_Line ("Sending data...");
   end Send;

   procedure Receive (D : in out Transceiver) is
      pragma Unreferenced (D);
   begin
      Put_Line ("Receiving data...");
   end Receive;

end Transceivers;