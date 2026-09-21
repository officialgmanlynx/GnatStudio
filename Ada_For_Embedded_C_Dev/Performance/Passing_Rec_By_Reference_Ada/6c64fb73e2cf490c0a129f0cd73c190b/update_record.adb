with Ada.Text_IO; use Ada.Text_IO;

procedure Update_Record is

   type Data is record
      Prev : Integer;
      Curr : Integer;
   end record;

   procedure Update (D : in out Data;
                     V :        Integer) is
   begin
      D.Prev := D.Curr;
      D.Curr := V;
   end Update;

   procedure Display (D : Data) is
   begin
      Put_Line ("Prev: " & Integer'Image (D.Prev));
      Put_Line ("Curr: " & Integer'Image (D.Curr));
   end Display;

   D1 : Data := (0, 1);

begin
   Update (D1, 3);
   Display (D1);
end Update_Record;