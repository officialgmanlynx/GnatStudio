package Devices is

   type Device_State is
     (Off, On);

   type Device_Info is
   record
      V : Float;
   end record;

   type Device (State : Device_State;
                Boost : Boolean) is
   record
      case State is
         when Off =>
            null;
         when On =>
            Info : Device_Info;
            case Boost is
               when False =>
                  null;
               when True =>
                  Factor : Float;
            end case;
      end case;
   end record;

end Devices;