package Simple.System_A is

   type A is private;

   procedure Activate (E : in out A);

   function Is_Active (E : A) return Boolean;

   function Value (E : A) return Float;

   procedure Finalize (E : in out A);

private

   type Val_Array is array (Positive range <>) of Float;

   type A is record
      Val    : Val_Array (1 .. 2);
      Active : Boolean;
   end record;

end Simple.System_A;