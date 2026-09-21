with Data_Processing.Advanced_Calculations;
use  Data_Processing.Advanced_Calculations;

package body Data_Processing is

   procedure Process (D : in out Data) is
   begin
      Advanced_Calculate (D);
   end Process;

end Data_Processing;