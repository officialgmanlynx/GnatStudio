with Unknown_Discriminants.Children;
use  Unknown_Discriminants.Children;

procedure Show_Object_Declaration is
   A : Derived_Rec_Unknown_Discr;
   --  ERROR: unknown discriminants
   --         because of the type's
   --         unknown discriminant part

   B : Derived_Rec_Known_Discr (1);
   --  OK: known discriminants

   C : Derived_Rec_No_Discr;
   --  ERROR: unknown discriminants
   --         because of parent type's
   --         unknown discriminant part
begin
   null;
end Show_Object_Declaration;