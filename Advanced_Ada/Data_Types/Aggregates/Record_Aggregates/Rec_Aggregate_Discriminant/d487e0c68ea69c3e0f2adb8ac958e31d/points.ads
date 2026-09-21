package Points is

   type Point_Dimension is (Dim_1, Dim_2, Dim_3);

   type Point (D : Point_Dimension) is record
      case D is
      when Dim_1 =>
         X1         : Integer;
      when Dim_2 =>
         X2, Y2     : Integer;
      when Dim_3 =>
         X3, Y3, Z3 : Integer;
      end case;
   end record;

   procedure Display (P : Point);

end Points;