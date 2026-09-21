with Ada.Text_IO;

procedure Ada_Numeric_Literals is
   One_Third : constant := 3#1.0#e-1;
   --  same as 1.0/3.0

   Zero      : constant := 1.0 - 3.0 * One_Third;
   pragma Assert (Zero = 0.0);

   One_Third_Approx : constant :=
     0.33333333333333333333333333333;
   Zero_Approx      : constant :=
     1.0 - 3.0 * One_Third_Approx;

   use Ada.Text_IO;

begin
   Put_Line ("Zero        = "
             & Float'Image (Zero));
   Put_Line ("Zero_Approx = "
             & Float'Image (Zero_Approx));
end Ada_Numeric_Literals;