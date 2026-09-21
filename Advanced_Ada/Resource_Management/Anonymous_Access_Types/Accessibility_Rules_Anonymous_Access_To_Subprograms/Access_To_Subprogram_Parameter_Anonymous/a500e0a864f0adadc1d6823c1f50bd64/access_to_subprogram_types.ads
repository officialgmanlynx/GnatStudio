package Access_To_Subprogram_Types is

   type Integer_Array is
     array (Positive range <>) of Integer;

   procedure Process
     (Arr : in out Integer_Array;
      P   : access procedure
              (Arr : in out Integer_Array));

end Access_To_Subprogram_Types;