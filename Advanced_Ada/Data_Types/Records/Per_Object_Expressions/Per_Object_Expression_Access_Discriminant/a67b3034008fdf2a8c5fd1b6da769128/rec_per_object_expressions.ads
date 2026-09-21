package Rec_Per_Object_Expressions is

   type T is limited private;

private

   type T_Processor (Selected_T : access T) is
     null record;

   type T is limited record
      E : T_Processor (T'Access);
      --
      --               T'Access
      --               ^^^^^^^^
      --  Per-object expression
      --
      --              (T'Access)
      --              ^^^^^^^^^^
      --   Per-object constraint
   end record;

end Rec_Per_Object_Expressions;