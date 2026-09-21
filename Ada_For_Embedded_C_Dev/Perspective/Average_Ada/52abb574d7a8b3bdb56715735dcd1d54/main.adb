with Ada.Text_IO;

procedure Main is
   type Int_Array is array (Natural range <>) of Integer;

   function Average (List : Int_Array) return Integer
   is
      Sum : Integer := 0;
   begin
      for I in List'Range loop
         Sum := Sum + List (I);
      end loop;

      return (Sum / List'Length);
   end Average;

   Vals : constant Int_Array (1 .. 4) := (2, 2, 4, 4);
begin
   Ada.Text_IO.Put_Line ("Average: " & Integer'Image (Average (Vals)));
end Main;