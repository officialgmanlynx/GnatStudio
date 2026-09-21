with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Dereferencing is

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Integer_Array_Access is
     access Integer_Array;

   Arr : constant Integer_Array_Access :=
                    new Integer_Array (1 .. 6);
begin
   Arr.all := (1, 2, 3, 5, 8, 13);

   Arr (1 .. 6) := (1, 2, 3, 5, 8, 13);

   for I in Arr'Range loop
      Put_Line
        ("Arr (: "
         & Integer'Image (I) & "): "
         & Integer'Image (Arr (I)));
      --                     ^ .all is implicit.
   end loop;
end Show_Dereferencing;