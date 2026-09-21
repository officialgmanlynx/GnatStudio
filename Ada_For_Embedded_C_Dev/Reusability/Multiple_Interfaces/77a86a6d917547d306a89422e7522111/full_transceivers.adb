with Ada.Text_IO; use Ada.Text_IO;

package body Full_Transceivers is

   procedure Receive (D : in out Full_Transceiver) is
      pragma Unreferenced (D);
   begin
      Put_Line ("Receiving data...");
   end Receive;

end Full_Transceivers;