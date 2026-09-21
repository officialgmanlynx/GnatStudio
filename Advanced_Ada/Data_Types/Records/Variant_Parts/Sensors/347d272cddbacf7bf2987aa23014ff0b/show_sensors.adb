with Ada.Text_IO; use Ada.Text_IO;

with Sensors;     use Sensors;

procedure Show_Sensors is
   S1 : Sensor;
   S2 : Sensor (Sensor_V2);
begin
   Display (Current_Info (S1));
   Display (Current_Info (S2));
end Show_Sensors;