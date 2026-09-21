procedure Main is

   type Rec is record
      V : Integer;
   end record;

   --  We cannot declare this:
   --
   --  type Ext_Rec is new Rec with record
   --     V : Integer;
   --  end record;

   type Tagged_Rec is tagged record
      V : Integer;
   end record;

   --  But we can declare this:
   --
   type Ext_Tagged_Rec is new Tagged_Rec with record
      V2 : Integer;
   end record;

   R1 : Rec;
   R2 : Tagged_Rec;
   R3 : Ext_Tagged_Rec;

   pragma Unreferenced (R1, R2, R3);
begin
   R1 := (V => 0);
   R2 := (V => 0);
   R3 := (V => 0, V2 => 0);
end Main;