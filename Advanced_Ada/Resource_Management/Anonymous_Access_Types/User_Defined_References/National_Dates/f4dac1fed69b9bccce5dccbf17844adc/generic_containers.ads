generic
   type T is private;
   type T_Access is access T;
   type T_Cmp is private;
   with function Matches (E    : T_Access;
                          Elem : T_Cmp)
                          return Boolean;
package Generic_Containers is

   type Ref_Type (Ref : access T) is
     tagged limited null record
       with Implicit_Dereference => Ref;

   type Container is
     array (Positive range <>) of
       T_Access;

   function Find (Cont : Container;
                  Elem : T_Cmp)
                  return Ref_Type;

end Generic_Containers;