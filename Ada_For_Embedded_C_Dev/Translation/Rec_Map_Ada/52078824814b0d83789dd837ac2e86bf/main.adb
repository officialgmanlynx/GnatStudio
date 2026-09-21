procedure Main is
   type Value_Rec is record
     V1 : Boolean;
     V2 : Integer range 0 .. 3;
   end record;

   for Value_Rec use record
      V1 at 0 range 0 .. 0;
      V2 at 0 range 1 .. 2;
   end record;

   Value : Value_Rec := (V1 => True, V2 => 2);
begin
   null;
end Main;