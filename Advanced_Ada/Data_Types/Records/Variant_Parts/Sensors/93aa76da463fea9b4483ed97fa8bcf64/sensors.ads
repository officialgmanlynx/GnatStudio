package Sensors is

   type Sensor is private;

   type Sensor_Info is
   record
      Info_1 : Float := 0.0;
   end record;

   function Current_Info (S : Sensor)
                          return Sensor_Info;

   procedure Display (SI : Sensor_Info);

private

   type Sensor is null record;

end Sensors;