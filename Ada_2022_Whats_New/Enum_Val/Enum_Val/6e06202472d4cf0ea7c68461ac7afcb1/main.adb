with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Main is
   type My_Boolean is new Boolean;
   for My_Boolean use (False => 3, True => 6);
begin
   Ada.Text_IO.Put_Line (My_Boolean'Enum_Val (3)'Image);
   Ada.Text_IO.Put_Line (My_Boolean'Enum_Val (6)'Image);

   Ada.Text_IO.Put ("Pos(False) =");
   Ada.Integer_Text_IO.Put (My_Boolean'Pos (False));
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put ("Pos(True)  =");
   Ada.Integer_Text_IO.Put (My_Boolean'Pos (True));
end Main;