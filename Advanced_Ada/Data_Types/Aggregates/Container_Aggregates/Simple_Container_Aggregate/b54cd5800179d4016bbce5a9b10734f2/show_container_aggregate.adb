with Ada.Containers.Vectors;

procedure Show_Container_Aggregate is

   package Float_Vec is new
     Ada.Containers.Vectors (Positive, Float);

   V : constant Float_Vec.Vector :=
         [1.0, 2.0, 3.0];

   pragma Unreferenced (V);
begin
   null;
end Show_Container_Aggregate;