with Ada.Text_IO;  use Ada.Text_IO;
with Interfaces.C;

procedure Use_My_Struct is

   type my_struct is record
     A : Interfaces.C.int;
     B : Interfaces.C.int;
   end record;
   pragma Convention (C, my_struct);

   V : my_struct := (A => 1, B => 2);
begin
   Put_Line ("V = ("
             & Interfaces.C.int'Image (V.A)
             & Interfaces.C.int'Image (V.B)
             & ")");
end Use_My_Struct;