with Ada.Text_IO; use Ada.Text_IO;

with Sensors;     use Sensors;

procedure Show_Sensors is
   S1 : Sensor;
begin
   Display (Current_Info (S1));
end Show_Sensors;