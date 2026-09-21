with Ada.Containers.Vectors;
with Ada.Containers.Indefinite_Hashed_Maps;
with Ada.Strings.Hash;

procedure Show_Named_Container_Aggregate is

   package Float_Vec is new
     Ada.Containers.Vectors (Positive, Float);

   package Float_Hashed_Maps is new
     Ada.Containers.Indefinite_Hashed_Maps
       (Key_Type        => String,
        Element_Type    => Float,
        Hash            => Ada.Strings.Hash,
        Equivalent_Keys => "=");

   --  Named container aggregate
   --  using an index
   Indexed_Named_V : constant Float_Vec.Vector :=
                       [1 => 1.0,
                        2 => 2.0,
                        3 => 3.0];

   --  Named container aggregate
   --  using a key
   Keyed_Named_V : constant
     Float_Hashed_Maps.Map :=
       ["Key_1" => 1.0,
        "Key_2" => 2.0,
        "Key_3" => 3.0];

   pragma Unreferenced (Indexed_Named_V,
                        Keyed_Named_V);
begin
   null;
end Show_Named_Container_Aggregate;