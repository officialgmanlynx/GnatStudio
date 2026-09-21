with Ada.Text_IO; use Ada.Text_IO;

 procedure Main is
    X : Positive := 10;
 begin
    X := X * 5;
    pragma Assert (X > 99);
    X := X - 99;
    Put_Line (Integer'Image (X));
 end Main;