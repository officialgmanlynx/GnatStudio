with Ada.Text_IO; use Ada.Text_IO;
with Points;      use Points;

procedure Show_Conversion is
   P_1D : Point_1D;
   P_3D : Point_3D;
begin
   P_3D := (X => 0.1, Y => 0.5, Z => 0.3);
   P_1D := Point_1D (P_3D);

   Put ("P_3D : ");
   Display (P_3D);

   Put ("P_1D : ");
   Display (P_1D);
end Show_Conversion;