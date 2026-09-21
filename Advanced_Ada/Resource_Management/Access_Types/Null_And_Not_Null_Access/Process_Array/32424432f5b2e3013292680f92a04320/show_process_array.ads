package Show_Process_Array is

   type My_Index is range 1 .. 10;
   type My_Array is array (My_Index) of Integer;

   procedure Process_Array
     (X     : in out My_Array;
      Index :        My_Index);

end Show_Process_Array;