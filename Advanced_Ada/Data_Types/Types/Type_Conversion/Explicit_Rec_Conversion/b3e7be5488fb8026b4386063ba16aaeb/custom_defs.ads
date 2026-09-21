package Custom_Defs is

   type T1 is private;

   function Init (X : Float)
                  return T1;

   procedure Display (Obj : T1);

   type T3 is private;

   function Init (X, Y, Z : Float)
                  return T3;

   function To_Float (Obj : T3)
                      return Float;

   function To_T1 (Obj : T3)
                   return T1;

   procedure Display (Obj : T3);

private
   type T1 is record
      X : Float;
   end record;

   function Init (X : Float)
                  return T1 is
     (X => X);

   type T3 is record
      X, Y, Z : Float;
   end record;

   function Init (X, Y, Z : Float)
                  return T3 is
     (X => X, Y => Y, Z => Z);

end Custom_Defs;