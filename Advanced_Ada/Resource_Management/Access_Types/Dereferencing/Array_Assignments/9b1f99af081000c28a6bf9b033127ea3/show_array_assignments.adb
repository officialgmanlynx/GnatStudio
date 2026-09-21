with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Array_Assignments is

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Integer_Array_Access is
     access Integer_Array;

   procedure Show_Array
     (Name : String;
      Arr  : Integer_Array_Access) is
   begin
      Put (Name);
      for E of Arr.all loop
         Put (Integer'Image (E));
      end loop;
      New_Line;
   end Show_Array;

   Arr_1 : constant Integer_Array_Access :=
                      new Integer_Array (1 .. 6);
   Arr_2 :          Integer_Array_Access :=
                      new Integer_Array (1 .. 6);
begin
   Arr_1.all := (1,   2,  3,  5,   8,  13);
   Arr_2.all := (21, 34, 55, 89, 144, 233);

   --  Array assignment
   Arr_2.all := Arr_1.all;

   Show_Array ("Arr_2", Arr_2);

   --  Access value assignment
   Arr_2 := Arr_1;

   Arr_1.all := (377, 610, 987, 1597, 2584, 4181);

   Show_Array ("Arr_2", Arr_2);
end Show_Array_Assignments;