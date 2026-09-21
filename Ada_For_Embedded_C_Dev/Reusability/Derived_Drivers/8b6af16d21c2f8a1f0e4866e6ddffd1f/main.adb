with Ada.Text_IO; use Ada.Text_IO;
with Drivers_3;   use Drivers_3;

procedure Main is
   D : Device_3;
   I : Integer;
begin
   Startup (D);
   Send_Fast (D, 999);
   Receive (D, I);
   Put_Line (Integer'Image (I));
end Main;