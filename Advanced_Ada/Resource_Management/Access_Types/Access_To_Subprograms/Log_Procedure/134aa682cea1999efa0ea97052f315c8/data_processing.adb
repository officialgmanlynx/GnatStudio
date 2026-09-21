package body Data_Processing is

   procedure Process
     (D        : in out Data_Container;
      Log_Proc :        Log_Procedure := null) is
   begin
      --  missing processing part...

      if Log_Proc /= null then
         Log_Proc (D);
      end if;
   end Process;

end Data_Processing;