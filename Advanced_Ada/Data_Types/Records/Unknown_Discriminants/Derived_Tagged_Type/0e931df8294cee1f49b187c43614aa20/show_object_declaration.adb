with Unknown_Discriminants.Children.Grand;
use  Unknown_Discriminants.Children.Grand;

procedure Show_Object_Declaration is
   A : Grand_Rec_Unknown_Discr;
   --  ERROR: unknown discriminants
   --         because of the type's
   --         unknown discriminant part
begin
   null;
end Show_Object_Declaration;