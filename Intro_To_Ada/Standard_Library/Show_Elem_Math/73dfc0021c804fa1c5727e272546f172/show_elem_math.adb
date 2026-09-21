with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Numerics; use Ada.Numerics;

with Ada.Numerics.Complex_Types;
use  Ada.Numerics.Complex_Types;

with Ada.Numerics.Complex_Elementary_Functions;
use  Ada.Numerics.Complex_Elementary_Functions;

with Ada.Text_IO.Complex_IO;

procedure Show_Elem_Math is

   package C_IO is new
     Ada.Text_IO.Complex_IO (Complex_Types);
   use C_IO;

   X, Y  : Complex;
   R, Th : Float;
begin
   X := (2.0, -1.0);
   Y := (3.0,  4.0);

   Put (X);
   Put (" * ");
   Put (Y);
   Put (" is ");
   Put (X * Y);
   New_Line;
   New_Line;

   R  := 3.0;
   Th := Pi / 2.0;
   X  := Compose_From_Polar (R, Th);
   --  Alternatively:
   --  X := R * Exp ((0.0, Th));
   --  X := R * e ** Complex'(0.0, Th);

   Put ("Polar form:    "
        & Float'Image (R)  & " * e**(i * "
        & Float'Image (Th) & ")");
   New_Line;

   Put ("Modulus     of ");
   Put (X);
   Put (" is ");
   Put (Float'Image (abs X));
   New_Line;

   Put ("Argument    of ");
   Put (X);
   Put (" is ");
   Put (Float'Image (Argument (X)));
   New_Line;
   New_Line;

   Put ("Sqrt        of ");
   Put (X);
   Put (" is ");
   Put (Sqrt (X));
   New_Line;
end Show_Elem_Math;