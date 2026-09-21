with Ada.Containers.Ordered_Sets;

procedure Show_Set_Decl is

   package Integer_Sets is new
     Ada.Containers.Ordered_Sets
       (Element_Type => Integer);
   use Integer_Sets;

   This_Set : Set;
begin
   null;
end Show_Set_Decl;