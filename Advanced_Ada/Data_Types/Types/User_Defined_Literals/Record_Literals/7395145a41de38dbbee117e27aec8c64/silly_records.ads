package Silly_Records is

   type Silly is record
      X : Integer;
      Y : Float;
   end record
     with String_Literal => To_Silly;

   function To_Silly (S : Wide_Wide_String)
                      return Silly;
end Silly_Records;