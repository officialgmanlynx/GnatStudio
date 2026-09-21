with Ada.Text_IO; use Ada.Text_IO;
with Drivers;     use Drivers;

procedure Main is
   D : Transceiver;
   I : Integer;
begin
   Send (D, 999);
   Receive (D, I);
   Put_Line (Integer'Image (I));
end Main;