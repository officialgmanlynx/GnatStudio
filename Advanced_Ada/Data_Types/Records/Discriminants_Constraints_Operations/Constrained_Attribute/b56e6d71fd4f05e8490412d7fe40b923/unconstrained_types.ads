package Unconstrained_Types is

   type Simple_Record
     (Extended : Boolean := False) is
   record
      V : Integer;
      case Extended is
         when False =>
            null;
         when True  =>
            V_Float : Float;
      end case;
   end record;

   procedure Reset (R : in out Simple_Record);

end Unconstrained_Types;