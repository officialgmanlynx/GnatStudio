with Ada.Text_IO;

with Literal_Binaries; use Literal_Binaries;

procedure Ada_Numeric_Literals is

   Big_Sum : constant := 1         +
                         Kilobyte  +
                         Megabyte  +
                         Gigabyte  +
                         Terabyte  +
                         Petabyte  +
                         Exabyte   +
                         Zettabyte;

   Result : constant := (Yottabyte - 1) /
                        (Kilobyte - 1);

   Nil    : constant := Result - Big_Sum;
   pragma Assert (Nil = 0);

   use Ada.Text_IO;

begin
   Put_Line ("Nil         = "
             & Integer'Image (Nil));
end Ada_Numeric_Literals;