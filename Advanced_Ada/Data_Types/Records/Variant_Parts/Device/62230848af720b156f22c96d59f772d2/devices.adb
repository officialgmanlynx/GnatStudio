package body Devices is

   procedure Turn_Off (D : in out Device) is
   begin
      D := Device_Off;
   end Turn_Off;

   procedure Turn_On (D : in out Device) is
   begin
      D := Device_On;
   end Turn_On;

   function Current_Info (D : Device)
                          return Device_Info is
     (D.Info);

end Devices;