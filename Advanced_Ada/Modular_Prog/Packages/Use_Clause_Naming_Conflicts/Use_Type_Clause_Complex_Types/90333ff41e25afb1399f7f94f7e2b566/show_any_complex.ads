with Ada.Numerics.Generic_Complex_Types;

generic
   with package Complex_Types is new
     Ada.Numerics.Generic_Complex_Types (<>);
procedure Show_Any_Complex
  (Msg : String;
   Val : Complex_Types.Complex);