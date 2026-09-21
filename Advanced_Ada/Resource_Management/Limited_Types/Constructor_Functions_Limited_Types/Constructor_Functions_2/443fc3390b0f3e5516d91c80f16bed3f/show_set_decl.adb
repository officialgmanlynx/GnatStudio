with Ada.Containers.Ordered_Sets;
with Aux;

procedure Show_Set_Decl is

   package Integer_Sets is new
     Ada.Containers.Ordered_Sets
       (Element_Type => Integer);
   use Integer_Sets;

   function Singleton_Set is new
     Aux.Gen_Singleton_Set
       (OS => Integer_Sets);

   This_Set : Set := Empty_Set;
   That_Set : Set := Singleton_Set
                       (Element => 42);
begin
   null;
end Show_Set_Decl;