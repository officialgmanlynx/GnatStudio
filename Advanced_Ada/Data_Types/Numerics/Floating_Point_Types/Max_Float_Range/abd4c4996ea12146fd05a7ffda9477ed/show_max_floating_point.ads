with System;

package Show_Max_Floating_Point is

   type Max_Float_Normalized is
     digits System.Max_Base_Digits
       range -1.0 .. 1.0;

end Show_Max_Floating_Point;