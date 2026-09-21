package Inherited_Primitives is

   type T is tagged private;

   procedure Proc (N : access T);
   --  Proc is a primitive of type T.

   type T_Child is new T with private;

private

   type T is tagged null record;

   type T_Child is new T with null record;

end Inherited_Primitives;