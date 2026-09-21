with Ada.Numerics; use Ada.Numerics;

with Ada.Numerics.Generic_Complex_Types;

with Show_Any_Complex;

procedure Show_Use is
   package Complex_Float_Types is new
     Ada.Numerics.Generic_Complex_Types
       (Real => Float);
   use all type Complex_Float_Types.Complex;

   package Complex_Long_Float_Types is new
     Ada.Numerics.Generic_Complex_Types
       (Real => Long_Float);
   use all type Complex_Long_Float_Types.Complex;

   procedure Show_Complex_Float is new
     Show_Any_Complex (Complex_Float_Types);

   procedure Show_Complex_Long_Float is new
     Show_Any_Complex (Complex_Long_Float_Types);

   C, D, X : Complex_Float_Types.Complex;
   E, F, Y : Complex_Long_Float_Types.Complex;
begin
   C := Compose_From_Polar (3.0, Pi / 2.0);
   D := Compose_From_Polar (5.0, Pi / 2.0);
   X := C + D;

   Show_Complex_Float ("C:", C);
   Show_Complex_Float ("D:", D);
   Show_Complex_Float ("X:", X);

   E := Compose_From_Polar (3.0, Pi / 2.0);
   F := Compose_From_Polar (5.0, Pi / 2.0);
   Y := E + F;

   Show_Complex_Long_Float ("E:", E);
   Show_Complex_Long_Float ("F:", F);
   Show_Complex_Long_Float ("Y:", Y);
end Show_Use;