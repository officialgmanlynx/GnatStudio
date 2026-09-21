package Unconstrained_Types is

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Simple_Record (Extended : Boolean) is
   record
      V : Integer;
      case Extended is
         when False =>
            null;
         when True  =>
            V_Float : Float;
      end case;
   end record;

end Unconstrained_Types;