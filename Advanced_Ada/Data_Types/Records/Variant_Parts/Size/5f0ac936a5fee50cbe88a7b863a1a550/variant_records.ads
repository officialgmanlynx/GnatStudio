package Variant_Records is

   type Simple_Record
     (Extended   : Boolean := False;
      Extended_2 : Boolean := False) is
   record
      V : Integer;
      case Extended is
         when False =>
            case Extended_2 is
               when False =>
                  null;
               when True  =>
                  V_Int_2 : Integer;
                  V_Int_3 : Integer;
            end case;
         when True  =>
            V_Float : Float;
            case Extended_2 is
               when False =>
                  null;
               when True  =>
                  V_Float_2 : Float;
            end case;
      end case;
   end record;

end Variant_Records;