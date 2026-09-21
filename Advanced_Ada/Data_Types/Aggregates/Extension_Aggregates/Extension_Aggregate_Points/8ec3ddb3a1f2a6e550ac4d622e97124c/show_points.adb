with Points;            use Points;
with Points.Extensions; use Points.Extensions;

procedure Show_Points is
   P_3D     : Point_3D;
   P_3D_Ext : Point_3D_Ext;
begin
   P_3D := (X => 0.0, Y => 0.5, Z => 0.4);

   P_3D_Ext := (P_3D with null record);
   Display (P_3D_Ext);
end Show_Points;