generic
   type T is private;
   X : in out T;
   --  X can be used in the Set procedure
procedure Set (E : T);