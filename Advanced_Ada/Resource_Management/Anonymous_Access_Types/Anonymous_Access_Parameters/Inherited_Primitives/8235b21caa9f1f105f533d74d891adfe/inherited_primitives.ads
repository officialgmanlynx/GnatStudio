package Inherited_Primitives is

   type T is tagged private;

   type T_Access is access all T;

   procedure Proc (N : T_Access);
   --  Proc is not a primitive of type T.

   type T_Child is new T with private;

   type T_Child_Access is access all T_Child;

private

   type T is tagged null record;

   type T_Child is new T with null record;

end Inherited_Primitives;