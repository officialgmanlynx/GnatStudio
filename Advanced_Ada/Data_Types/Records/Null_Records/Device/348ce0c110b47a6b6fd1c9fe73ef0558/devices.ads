package Devices is

   type Device is private;

   function Create (Active : Boolean)
                    return Device;

   procedure Reset (D : out Device);

   procedure Process (D : in out Device);

   procedure Activate (D : in out Device);

   procedure Deactivate (D : in out Device);

private

   type Device is record
      Active : Boolean;
   end record;

end Devices;