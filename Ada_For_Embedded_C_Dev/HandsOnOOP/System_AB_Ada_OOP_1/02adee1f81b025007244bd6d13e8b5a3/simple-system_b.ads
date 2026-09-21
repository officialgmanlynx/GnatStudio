package Simple.System_B is

   type B is new Sys_Base with private;

   overriding procedure Activate (E : in out B);

   overriding function Value (E : B) return Float;

private

   type B is new Sys_Base with record
      Val : Float;
   end record;

end Simple.System_B;