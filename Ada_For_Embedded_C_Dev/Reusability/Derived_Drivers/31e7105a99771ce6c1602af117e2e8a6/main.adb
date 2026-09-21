with Ada.Text_IO; use Ada.Text_IO;
with Drivers_2;   use Drivers_2;

procedure Main is
   D : Device_2;
   I : Integer;
begin
   Startup (D);
   Send_Fast (D, 999);
   Receive (D, I);
   Put_Line (Integer'Image (I));
end Main;