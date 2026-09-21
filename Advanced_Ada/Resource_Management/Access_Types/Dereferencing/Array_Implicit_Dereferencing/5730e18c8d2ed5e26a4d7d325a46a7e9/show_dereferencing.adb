with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Dereferencing is

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Integer_Array_Access is
     access Integer_Array;

   Arr : constant Integer_Array_Access :=
                    new Integer_Array (1 .. 6);
begin
   Put_Line
     ("Arr'First: "
      & Integer'Image (Arr'First));
   Put_Line
     ("Arr'Last: "
      & Integer'Image (Arr'Last));

   Put_Line
     ("Arr'Component_Size: "
      & Integer'Image (Arr'Component_Size));
   Put_Line
     ("Arr.all'Component_Size: "
      & Integer'Image (Arr.all'Component_Size));

   Put_Line
     ("Arr'Size: "
      & Integer'Image (Arr'Size));
   Put_Line
     ("Arr.all'Size: "
      & Integer'Image (Arr.all'Size));
end Show_Dereferencing;