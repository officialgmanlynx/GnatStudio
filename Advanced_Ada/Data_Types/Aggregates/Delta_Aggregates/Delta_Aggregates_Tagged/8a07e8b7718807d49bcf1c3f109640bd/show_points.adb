with Points; use Points;

procedure Show_Points is

   P_3D : Point_3D;

   procedure Reset
     (P_2D : in out Point_2D'Class) is
   begin
      Point_2D (P_2D) := (others => 0.0);
   end Reset;

begin
   P_3D := (X => 0.1, Y => 0.2, Z => 0.3);
   Display (P_3D);

   Reset (P_3D);
   Display (P_3D);

end Show_Points;