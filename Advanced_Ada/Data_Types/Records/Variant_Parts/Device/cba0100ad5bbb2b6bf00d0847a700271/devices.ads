package Devices is

   type Device_State is
     (Off, On);

   type Device
     (State : Device_State := Off) is
       private;

   procedure Turn_Off (D : in out Device);

   procedure Turn_On (D : in out Device);

   type Device_Info is
   record
      V : Float;
   end record;

   function Current_Info (D : Device)
                          return Device_Info;

private

   type Device (State : Device_State := Off) is
   record
      case State is
         when Off =>
            null;
         when On =>
            Info : Device_Info;
      end case;
   end record;

   Device_Off : constant Device :=
                  (State => Off);

   Device_On  : constant Device :=
                  (State => On,
                   others => <>);

end Devices;