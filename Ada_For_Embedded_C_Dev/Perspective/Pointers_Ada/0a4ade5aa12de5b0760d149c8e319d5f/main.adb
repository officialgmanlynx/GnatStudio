with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   type R is record
      A, B : Integer;
   end record;

   procedure Put_R (V : R; Name : String) is
   begin
      Put_Line (Name & " = ("
                & Integer'Image (V.A) & ", "
                & Integer'Image (V.B) & ")");
   end Put_R;

   V1, V2 : R;

begin
   V1.A := 0;
   V1.B := 0;
   V2 := V1;
   V2.A := 1;

   Put_R (V1, "V1");
   Put_R (V2, "V2");
end Main;