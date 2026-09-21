with Ada.Text_IO;

 procedure Ada_Numeric_Literals is
    Pi   : constant :=
      3.14159_26535_89793_23846_26433_83279_50288;

    Pi2  : constant :=
      3.14159265358979323846264338327950288;

    Z    : constant := Pi - Pi2;
    pragma Assert (Z = 0.0);

    use Ada.Text_IO;
 begin
    Put_Line ("Z = " & Float'Image (Z));
 end Ada_Numeric_Literals;