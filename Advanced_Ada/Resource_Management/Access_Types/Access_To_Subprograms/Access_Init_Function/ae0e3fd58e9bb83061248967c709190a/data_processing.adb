package body Data_Processing is

   procedure Process
     (D         : in out Data_Container;
      Init_Func :        Init_Function) is
   begin
      for I in D'Range loop
         D (I) := Init_Func.all;
      end loop;
   end Process;

end Data_Processing;