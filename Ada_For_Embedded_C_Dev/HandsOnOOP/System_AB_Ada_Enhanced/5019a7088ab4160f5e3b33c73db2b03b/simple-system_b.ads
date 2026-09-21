package Simple.System_B is

   type B is private;

   procedure Activate (E : in out B);

   function Is_Active (E : B) return Boolean;

   function Value (E : B) return Float;

   procedure Finalize (E : in out B);

private

   type B is record
      Val    : Float;
      Active : Boolean;
   end record;

end Simple.System_B;