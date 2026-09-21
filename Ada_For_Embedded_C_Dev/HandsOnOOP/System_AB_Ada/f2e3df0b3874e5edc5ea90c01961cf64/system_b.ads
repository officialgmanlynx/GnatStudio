package System_B is

   type B is record
      Val    : Float;
      Active : Boolean;
   end record;

   procedure B_Activate (E : in out B);

   function B_Is_Active (E : B) return Boolean;

   function B_Value (E : B) return Float;

   procedure B_Deactivate (E : in out B);

end System_B;