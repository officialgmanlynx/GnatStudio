with Points; use Points;

procedure Show_Rec_Aggregate_Discriminant is
   --  Positional component association
   P1 : constant Point := (Dim_1, 0);

   --  Named component association
   P2 : constant Point := (D  => Dim_2,
                           X2 => 3,
                           Y2 => 4);

   --  Positional / named component association
   P3 : constant Point := (Dim_3,
                           X3 => 3,
                           Y3 => 4,
                           Z3 => 5);
begin
   Display (P1);
   Display (P2);
   Display (P3);
end Show_Rec_Aggregate_Discriminant;