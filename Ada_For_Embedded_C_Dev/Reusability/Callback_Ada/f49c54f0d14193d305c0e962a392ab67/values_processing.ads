package Values_Processing is

   type Integer_Array is array (Positive range <>) of Integer;

   type Process_One_Callback is not null access
     function (Value : Integer) return Integer;

   procedure Process_Values (Values      : in out Integer_Array;
                             Process_One :        Process_One_Callback);

end Values_Processing;