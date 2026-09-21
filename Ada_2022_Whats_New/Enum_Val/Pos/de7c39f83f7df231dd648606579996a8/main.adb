with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Main is
begin
   Ada.Text_IO.Put ("Pos(False) =");
   Ada.Integer_Text_IO.Put (Boolean'Pos (False));
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put ("Pos(True)  =");
   Ada.Integer_Text_IO.Put (Boolean'Pos (True));
end Main;