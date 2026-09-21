procedure Init_Limited_Record is

   type Data is limited record
      Prev : Integer;
      Curr : Integer;
   end record;

   function Init return Data is
   begin
      return D : Data do
         D.Prev := 0;
         D.Curr := 1;
      end return;
   end Init;

   D1 : Data := Init;

   pragma Unreferenced (D1);
begin
   null;
end Init_Limited_Record;