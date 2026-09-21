procedure Main is

   type Rec is record
      V : Integer;
   end record;

   type Tagged_Rec is tagged record
      V : Integer;
   end record;

   R1 : Rec;
   R2 : Tagged_Rec;

   pragma Unreferenced (R1, R2);
begin
   R1 := (V => 0);
   R2 := (V => 0);
end Main;