with Fixed_Types.Wide; use Fixed_Types.Wide;

package body Fixed_Types is

   function "+" (A, B : Sat_Sample)
                return Sat_Sample
   is
      Res : constant Wide_Sample :=
        Wide_Sample (A) +
        Wide_Sample (B);
   begin
      if Res > Wide_Sample (Sample'Last)
      then
         return Sat_Sample (Sample'Last);
      elsif
        Res < Wide_Sample (Sample'First)
      then
         return Sat_Sample (Sample'First);
      else
         return Sat_Sample (Res);
      end if;
   end "+";

   function "-" (A, B : Sat_Sample)
                return Sat_Sample
   is
      Res : constant Wide_Sample :=
        Wide_Sample (A) -
        Wide_Sample (B);
   begin
      if Res > Wide_Sample (Sample'Last)
      then
         return Sat_Sample (Sample'Last);
      elsif
        Res < Wide_Sample (Sample'First)
      then
         return Sat_Sample (Sample'First);
      else
         return Sat_Sample (Res);
      end if;
   end "-";

   function "*" (A, B : Sat_Sample)
                return Sat_Sample
   is
      Res : constant Wide_Product :=
        Wide_Product (A) *
        Wide_Product (B);
   begin
      if Res > Wide_Product (Sample'Last)
      then
         return Sat_Sample (Sample'Last);
      elsif
        Res < Wide_Product (Sample'First)
      then
         return Sat_Sample (Sample'First);
      else
         return Sat_Sample (Res);
      end if;
   end "*";

end Fixed_Types;