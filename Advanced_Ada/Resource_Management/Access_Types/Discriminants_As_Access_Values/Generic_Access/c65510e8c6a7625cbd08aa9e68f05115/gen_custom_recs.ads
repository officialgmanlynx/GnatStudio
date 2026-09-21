generic
   type T (<>);  --  any type
   type T_Access is access T;
package Gen_Custom_Recs is
   --  Declare a type whose discriminant D can
   --  access any type:
   type T_Rec (D : T_Access) is null record;
end Gen_Custom_Recs;