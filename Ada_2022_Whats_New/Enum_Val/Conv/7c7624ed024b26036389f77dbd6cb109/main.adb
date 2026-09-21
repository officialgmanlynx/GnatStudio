with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Unchecked_Conversion;

procedure Main is

   type My_Boolean is new Boolean;
   for My_Boolean use (False => 3, True => 6);
   type My_Boolean_Int is range 3 .. 6;
   for My_Boolean_Int'Size use My_Boolean'Size;

   function To_Int is new Ada.Unchecked_Conversion
     (My_Boolean, My_Boolean_Int);

   function From_Int is new Ada.Unchecked_Conversion
     (My_Boolean_Int, My_Boolean);

begin
   Ada.Text_IO.Put ("To_Int(False) =");
   Ada.Integer_Text_IO.Put (Integer (To_Int (False)));
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put ("To_Int(True)  =");
   Ada.Integer_Text_IO.Put (Integer (To_Int (True)));
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put ("From_Int (3)  =");
   Ada.Text_IO.Put_Line (From_Int (3)'Image);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put ("From_Int (6)  =");
   Ada.Text_IO.Put_Line (From_Int (6)'Image);
end Main;