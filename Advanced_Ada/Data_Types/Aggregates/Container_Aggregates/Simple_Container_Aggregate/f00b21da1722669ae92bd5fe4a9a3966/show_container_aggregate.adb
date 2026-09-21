with Ada.Containers.Vectors;

procedure Show_Container_Aggregate is

   package Float_Vec is new
     Ada.Containers.Vectors (Positive, Float);

   --  Null container aggregate
   Null_V  : constant Float_Vec.Vector :=
               [];

   --  Positional container aggregate
   Pos_V   : constant Float_Vec.Vector :=
               [1.0, 2.0, 3.0];

   --  Named container aggregate
   Named_V : constant Float_Vec.Vector :=
               [1 => 1.0,
                2 => 2.0,
                3 => 3.0];

   pragma Unreferenced (Null_V, Pos_V, Named_V);
begin
   null;
end Show_Container_Aggregate;