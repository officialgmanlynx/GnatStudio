with Array_Representation;
use  Array_Representation;

procedure Using_Array_For_IO is
   Input_Data  : External_Arr;
   Work_Data   : Arr;
   Output_Data : External_Arr;
begin
   --  (read data into Input_Data)

   --  Now convert to internal form
   Work_Data := Arr (Input_Data);

   --  (computations using efficient
   --   Work_Data form)

   --  Convert back to external form
   Output_Data := External_Arr (Work_Data);

end Using_Array_For_IO;