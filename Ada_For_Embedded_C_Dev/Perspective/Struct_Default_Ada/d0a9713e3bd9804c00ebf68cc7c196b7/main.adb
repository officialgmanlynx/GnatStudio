with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   type R is record
      A, B : Integer := 0;
      C    : Float   := 0.0;
   end record;

   procedure Put_R (V : R; Name : String) is
   begin
      Put_Line (Name & " = ("
                & Integer'Image (V.A) & ", "
                & Integer'Image (V.B) & ", "
                & Float'Image (V.C) & ")");
   end Put_R;

   V1 : constant R := (1, 2, 1.0);
   V2 : constant R := (A => 1, B => 2, C => 1.0);
   V3 : constant R := (C => 1.0, A => 1, B => 2);
   V4 : constant R := (C => 1.0, others => <>);

begin
   Put_R (V1, "V1");
   Put_R (V2, "V2");
   Put_R (V3, "V3");
   Put_R (V4, "V4");
end Main;