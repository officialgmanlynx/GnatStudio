procedure Show_Discriminant_Check is

   type Rec (Valid : Boolean) is record
      case Valid is
         when True =>
            Counter : Integer;
         when False =>
            null;
      end case;
   end record;

   R : Rec (Valid => False);
   I : Integer;
begin
   I := R.Counter;
end Show_Discriminant_Check;