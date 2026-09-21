package Some_Tagged_Types is

   type T is tagged record
      A : Integer;
   end record;

   type T_Derived is new T with record
      B : Float;
   end record;

   Obj : T_Derived;

end Some_Tagged_Types;