with System;

package Fg is

   type Arr is array (Integer range <>) of Integer;

   function F_Arr return System.Address;
   pragma Import (C, F_Arr, "f_arr");

   function F_Size return Integer;
   pragma Import (C, F_Size, "f_size");

   F : Arr (0 .. F_Size - 1) with Address => F_Arr;

   G_Size : Integer;
   pragma Import (C, G_Size, "g_size");

   G_Arr : Arr (0 .. G_Size - 1);
   pragma Import (C, G_Arr, "g_arr");

end Fg;