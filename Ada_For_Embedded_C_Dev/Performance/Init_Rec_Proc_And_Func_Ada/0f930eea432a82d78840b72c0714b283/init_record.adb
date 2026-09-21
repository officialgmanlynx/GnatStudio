procedure Init_Record is

   type Data is record
      Prev : Integer;
      Curr : Integer;
   end record;

   procedure Init (D : out Data) is
   begin
      D := (Prev => 0, Curr => 1);
   end Init;

   function Init return Data is
      D : constant Data := (Prev => 0, Curr => 1);
   begin
      return D;
   end Init;

   D1 : Data;

   pragma Unreferenced (D1);
begin
   D1 := Init;

   Init (D1);
end Init_Record;