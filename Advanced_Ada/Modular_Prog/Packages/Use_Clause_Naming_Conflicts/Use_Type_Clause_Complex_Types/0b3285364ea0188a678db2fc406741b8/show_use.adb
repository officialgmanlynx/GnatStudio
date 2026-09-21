with Ada.Numerics; use Ada.Numerics;

with Ada.Numerics.Generic_Complex_Types;

with Show_Any_Complex;

procedure Show_Use is
   package Complex_Float_Types is new
     Ada.Numerics.Generic_Complex_Types
       (Real => Float);
   use Complex_Float_Types;

   package Complex_Long_Float_Types is new
     Ada.Numerics.Generic_Complex_Types
       (Real => Long_Float);
   use Complex_Long_Float_Types;

   procedure Show_Complex_Float is new
     Show_Any_Complex (Complex_Float_Types);

   C, D, X : Complex_Float_Types.Complex;
   --        ^ SOLVED: package is now specified.
begin
   C := Compose_From_Polar (3.0, Pi / 2.0);
   D := Compose_From_Polar (5.0, Pi / 2.0);
   X := C + D;

   Show_Complex_Float ("C:", C);
   Show_Complex_Float ("D:", D);
   Show_Complex_Float ("X:", X);
end Show_Use;