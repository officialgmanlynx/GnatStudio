with Ada.Text_IO; use Ada.Text_IO;

with Num_Types;   use Num_Types;

procedure Show_Modular is
   Modulus_Value : constant := Modular'Modulus;
begin
   Put_Line (Modulus_Value'Image);
end Show_Modular;