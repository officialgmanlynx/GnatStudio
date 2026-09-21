with Ada.Text_IO; use Ada.Text_IO;
with Drivers_1;   use Drivers_1;

procedure Main is
   D : Device_1;
   I : Integer;
begin
   Startup (D);
   Send_Fast (D, 999);
   Receive (D, I);
   Put_Line (Integer'Image (I));
end Main;