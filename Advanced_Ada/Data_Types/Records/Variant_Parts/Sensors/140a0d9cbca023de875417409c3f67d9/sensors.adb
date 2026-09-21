with Ada.Text_IO; use Ada.Text_IO;

package body Sensors is

   function Current_Info (S : Sensor)
                          return Sensor_Info is
     ((Info_1 => 4.0));
   --            ^^^^
   --  NOTE: we're returning dummy
   --        information!

   procedure Display (SI : Sensor_Info) is
   begin
      Put_Line ("Info_1 : "
                & SI.Info_1'Image);
   end Display;

end Sensors;