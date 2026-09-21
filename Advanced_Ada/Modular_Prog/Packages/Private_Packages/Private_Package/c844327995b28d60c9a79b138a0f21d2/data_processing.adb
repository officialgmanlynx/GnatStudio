with Data_Processing.Calculations;
use  Data_Processing.Calculations;

package body Data_Processing is

   procedure Process (D : in out Data) is
   begin
      Calculate (D);
   end Process;

end Data_Processing;