with Ada.Text_IO;

procedure Main is
   V : Integer;
begin
   --  this is a while loop
   V := 1;
   while V < 100 loop
      V := V * 2;
   end loop;
   Ada.Text_IO.Put_Line ("V = " & Integer'Image (V));

   --  Ada doesn't have an explicit do while loop
   --  instead you can use the loop and exit keywords
   V := 1;
   loop
      V := V * 2;
      exit when V >= 200;
   end loop;
   Ada.Text_IO.Put_Line ("V = " & Integer'Image (V));

   --  this is a for loop
   V := 0;
   for I in 0 .. 4 loop
      V := V + (I * I);
   end loop;
   Ada.Text_IO.Put_Line ("V = " & Integer'Image (V));

   --  this is a forever loop with a conditional exit
   V := 0;
   loop
      --  do stuff here
      V := V + 1;
      exit when V = 10;
   end loop;
   Ada.Text_IO.Put_Line ("V = " & Integer'Image (V));

   --  this is a loop over an array
   declare
      type Int_Array is array (Natural range 1 .. 10) of Integer;

      Arr : constant Int_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
      Sum : Integer := 0;
   begin
      for I in Arr'Range loop
         Sum := Sum + Arr (I);
      end loop;
      Ada.Text_IO.Put_Line ("Sum = " & Integer'Image (Sum));
   end;
end Main;