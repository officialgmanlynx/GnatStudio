package Access_To_Subprogram_Types is

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Process_Procedure is
     access
       procedure (Arr : in out Integer_Array);

   procedure Process
     (Arr : in out Integer_Array;
      P   :        Process_Procedure);

end Access_To_Subprogram_Types;