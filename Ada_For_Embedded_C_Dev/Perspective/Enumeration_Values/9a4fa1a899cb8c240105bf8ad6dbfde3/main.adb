with Ada.Text_IO;

procedure Main is
   type Day is
     (Monday,
      Tuesday,
      Wednesday,
      Thursday,
      Friday,
      Saturday,
      Sunday);

   --  Representation clause for Day type:
   for Day use
     (Monday    => 10,
      Tuesday   => 11,
      Wednesday => 12,
      Thursday  => 13,
      Friday    => 14,
      Saturday  => 15,
      Sunday    => 16);

   D : Day := Monday;
   V : Integer;
begin
   V := Day'Enum_Rep (D);
   Ada.Text_IO.Put_Line (Integer'Image (V));
end Main;