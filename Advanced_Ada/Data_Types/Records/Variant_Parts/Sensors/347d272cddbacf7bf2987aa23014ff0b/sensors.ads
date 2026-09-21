package Sensors is

   type Sensor_Model is (Sensor_V1,
                         Sensor_V2);

   type Sensor
     (Model : Sensor_Model := Sensor_V1) is
       private;

   type Sensor_Info
     (Model : Sensor_Model := Sensor_V1) is
   record
      Info_1 : Float := 0.0;
      case Model is
         when Sensor_V1 =>
            null;
         when Sensor_V2 =>
            Info_2 : Float := 0.0;
      end case;
   end record;

   function Current_Info (S : Sensor)
                          return Sensor_Info;

   procedure Display (SI : Sensor_Info);

private

   type Sensor
     (Model : Sensor_Model := Sensor_V1) is
       null record;

end Sensors;