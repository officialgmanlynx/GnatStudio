package Simple.System_A is

   type A is new Sys_Base with private;

   overriding procedure Activate (E : in out A);

   overriding function Value (E : A) return Float;

private

   type Val_Array is array (Positive range <>) of Float;

   type A is new Sys_Base with record
      Val : Val_Array (1 .. 2);
   end record;

end Simple.System_A;