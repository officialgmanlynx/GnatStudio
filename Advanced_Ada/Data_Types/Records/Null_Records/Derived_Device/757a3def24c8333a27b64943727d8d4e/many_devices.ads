package Many_Devices is

   type Device is null record;

   type Device_Config is null record;

   function Create (Config : Device_Config)
                    return Device is
     (null record);

   type Derived_Device is new Device;

   procedure Process (D : Derived_Device) is null;

end Many_Devices;