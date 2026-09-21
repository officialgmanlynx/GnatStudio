package Rec_Per_Object_Expressions is

   type T is private;

   type T_Processor (Selected_T : access T) is
     private;

private

   type T is null record;

   type T_Container (Selected_T : access T) is
     null record;

   type T_Processor (Selected_T : access T) is
   record
      E : T_Container (Selected_T);
      --
      --               Selected_T
      --               ^^^^^^^^^^
      --    Per-object expression
      --
      --              (Selected_T)
      --              ^^^^^^^^^^^^
      --     Per-object constraint
   end record;

end Rec_Per_Object_Expressions;