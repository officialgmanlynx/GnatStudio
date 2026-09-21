package Devices is

   type Device_Settings is
   record
      Started : Boolean;
   end record;

   type Device (Id : Positive) is
     private;

   function Init (Id : Positive)
                  return Device;

private

   type Device (Id : Positive) is
     null record;

   function Init (Id : Positive)
                  return Device is
      (Device'(Id => Id));

end Devices;