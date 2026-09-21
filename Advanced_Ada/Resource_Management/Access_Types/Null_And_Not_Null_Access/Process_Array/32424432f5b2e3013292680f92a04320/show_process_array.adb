package body Show_Process_Array is

   procedure Process_Array
     (X     : in out My_Array;
      Index :        My_Index) is
   begin
      X (Index) := X (Index) + 1;
   end Process_Array;

end Show_Process_Array;