procedure Main is
   --  ID card number type,
   --  incompatible with Integer.
   type Social_Security_Number is new Integer
     range 0 .. 999_99_9999;
   --      ^ Since a SSN has 9 digits
   --        max., and cannot be
   --        negative, we enforce
   --        a validity constraint.

   SSN : Social_Security_Number :=
     555_55_5555;
   --   ^ You can put underscores as
   --     formatting in any number.

   I   : Integer;

   --  The value -1 below will cause a
   --  runtime error and a compile time
   --  warning with GNAT.
   Invalid : Social_Security_Number := -1;
begin
   --  Illegal, they have different types:
   I := SSN;

   --  Likewise illegal:
   SSN := I;

   --  OK with explicit conversion:
   I := Integer (SSN);

   --  Likewise OK:
   SSN := Social_Security_Number (I);
end Main;