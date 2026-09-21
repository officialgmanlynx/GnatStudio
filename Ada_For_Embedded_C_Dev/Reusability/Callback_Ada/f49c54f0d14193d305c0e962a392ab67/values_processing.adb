package body Values_Processing is

   procedure Process_Values (Values      : in out Integer_Array;
                             Process_One :        Process_One_Callback) is
   begin
      for I in Values'Range loop
         Values (I) := Process_One (Values (I));
      end loop;
   end Process_Values;

end Values_Processing;