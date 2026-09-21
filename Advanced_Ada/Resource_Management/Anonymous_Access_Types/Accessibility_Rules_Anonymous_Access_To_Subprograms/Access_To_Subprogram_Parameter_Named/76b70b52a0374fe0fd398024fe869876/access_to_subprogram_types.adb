package body Access_To_Subprogram_Types is

   procedure Process
     (Arr : in out Integer_Array;
      P   :        Process_Procedure) is
   begin
      P (Arr);
   end Process;

end Access_To_Subprogram_Types;