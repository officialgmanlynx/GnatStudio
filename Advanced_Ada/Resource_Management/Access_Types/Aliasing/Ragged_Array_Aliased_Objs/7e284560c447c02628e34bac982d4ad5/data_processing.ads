package Data_Processing is

   type Integer_Array is
     array (Positive range <>) of Integer;

private

   type Integer_Array_Access is
     access constant Integer_Array;

   Tab_1 : aliased constant Integer_Array
             := (1 => 15);
   Tab_2 : aliased constant Integer_Array
             := (12, 15, 20);
   Tab_3 : aliased constant Integer_Array
             := (12, 15, 20,
                 20, 25, 30);

   Table : constant array (1 .. 3) of
             Integer_Array_Access :=
     (1 => Tab_1'Access,
      2 => Tab_2'Access,
      3 => Tab_3'Access);

end Data_Processing;