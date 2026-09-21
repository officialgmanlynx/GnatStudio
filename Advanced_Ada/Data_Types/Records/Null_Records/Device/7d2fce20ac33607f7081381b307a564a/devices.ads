package Devices is

   type Device is private;

   function Create
     (Active : Boolean)
      return Device;

   procedure Reset
     (D : out Device) is null;

   procedure Process
     (D : in out Device) is null;

   procedure Activate
     (D : in out Device) is null;

   procedure Deactivate
     (D : in out Device) is null;

private

   type Device is null record;

   function Create (Active : Boolean)
                    return Device is
     (null record);

end Devices;