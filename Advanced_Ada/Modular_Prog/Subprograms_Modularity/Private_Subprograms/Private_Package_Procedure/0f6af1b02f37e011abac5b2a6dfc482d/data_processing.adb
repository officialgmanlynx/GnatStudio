with Data_Processing.Calculate;

package body Data_Processing is

   procedure Process (D : in out Data) is
   begin
      Calculate (D);
   end Process;

end Data_Processing;