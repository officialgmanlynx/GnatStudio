package Simple.System_B is

   type B is new Sys_Base with private;

   overriding function Value (E : B) return Float;

private

   type B is new Sys_Base with record
      Val : Float;
   end record;

   overriding procedure Activation_Reset (E : in out B);

end Simple.System_B;