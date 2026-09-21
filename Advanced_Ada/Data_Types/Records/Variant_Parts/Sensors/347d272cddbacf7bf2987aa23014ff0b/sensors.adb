with Ada.Text_IO; use Ada.Text_IO;

package body Sensors is

   function Current_Info (S : Sensor)
                          return Sensor_Info is
   begin
      --  Using dummy info for the information
      --  returned by the function
      case S.Model is
         when Sensor_V1 =>
            return ((Model  => Sensor_V1,
                     Info_1 => 4.0));
         when Sensor_V2 =>
            return ((Model  => Sensor_V2,
                     Info_1 => 8.0,
                     Info_2 => 6.0));
      end case;
   end Current_Info;

   procedure Display (SI : Sensor_Info) is
   begin
      Put_Line ("Model  : "
                & SI.Model'Image);
      Put_Line ("Info_1 : "
                & SI.Info_1'Image);
      if SI.Model = Sensor_V2 then
         Put_Line ("Info_2 : "
                   & SI.Info_2'Image);
      end if;
   end Display;

end Sensors;