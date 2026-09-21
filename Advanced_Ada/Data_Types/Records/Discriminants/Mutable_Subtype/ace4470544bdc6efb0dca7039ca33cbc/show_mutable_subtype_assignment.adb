with Mutability; use Mutability;

procedure Show_Mutable_Subtype_Assignment is
   NM_1 : T_Non_Mutable (5, 6);
   NM_2 : T_Non_Mutable (7, 8);

   M_1  : T_Mutable (7, 8);
   M_2  : T_Mutable;
begin
   NM_2 := NM_1;  --  ERROR!
   M_2  := M_1;   --  OK
end Show_Mutable_Subtype_Assignment;