package Simple.System_A is

   type A is new Sys_Base with private;

   overriding function Value (E : A) return Float;

private

   type Val_Array is array (Positive range <>) of Float;

   type A is new Sys_Base with record
      Val : Val_Array (1 .. 2);
   end record;

   overriding procedure Activation_Reset (E : in out A);

end Simple.System_A;