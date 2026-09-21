package System_A is

   type Val_Array is array (Positive range <>) of Float;

   type A is record
      Val    : Val_Array (1 .. 2);
      Active : Boolean;
   end record;

   procedure A_Activate (E : in out A);

   function A_Is_Active (E : A) return Boolean;

   function A_Value (E : A) return Float;

   procedure A_Deactivate (E : in out A);

end System_A;