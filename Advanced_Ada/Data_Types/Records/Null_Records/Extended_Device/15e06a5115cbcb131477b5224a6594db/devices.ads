package Devices is

   type Device is private;

   function Create (Active : Boolean)
                    return Device;

   type Derived_Device is private;

private

   type Device is tagged null record;

   function Create (Active : Boolean)
                    return Device is
     (null record);

   type Derived_Device is new Device with record
      Active : Boolean;
   end record;

   function Create (Active : Boolean)
                    return Derived_Device is
     (Active => Active);

end Devices;