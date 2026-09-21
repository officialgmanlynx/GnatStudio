with System;

package Custom_Int_Out_Of_Range is

   type Custom_Int is
     range System.Min_Int - 1 ..
           System.Max_Int + 1;

end Custom_Int_Out_Of_Range;