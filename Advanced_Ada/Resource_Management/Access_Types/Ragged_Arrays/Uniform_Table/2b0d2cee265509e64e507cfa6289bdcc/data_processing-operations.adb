package body Data_Processing.Operations is

   procedure Process (D : in out Data;
                      Q :        Quality_Level) is
   begin
      for I in D'Range loop
         for J in 1 .. Calc_Table (Q).Last loop
           --  ... * Calc_Table (Q).Coef (J)
           null;
         end loop;
         --  D (I) := ...
         null;
      end loop;
   end Process;

end Data_Processing.Operations;