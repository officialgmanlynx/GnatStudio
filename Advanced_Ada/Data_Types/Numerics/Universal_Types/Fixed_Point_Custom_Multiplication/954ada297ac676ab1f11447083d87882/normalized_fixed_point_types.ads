package Normalized_Fixed_Point_Types is

   type TQ63 is
     delta 2.0 ** (-63)
     range -1.0 .. 1.0 - 2.0 ** (-63);

   type TQ31 is
     delta 2.0 ** (-31)
     range -1.0 .. 1.0 - 2.0 ** (-31);

   overriding
   --  ^^^^^^
   --  "+" operator is overriding!
   function "+" (L, R : TQ31)
                 return TQ31;

   not overriding
   --  ^^^^^^^^^^
   --  "*" operator is NOT overriding!
   function "*" (L, R : TQ31)
                 return TQ31;

   type TQ15 is
     delta 2.0 ** (-15)
     range -1.0 .. 1.0 - 2.0 ** (-15);

end Normalized_Fixed_Point_Types;