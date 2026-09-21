generic
   type T is private;
package Custom_Arrays is
   type T_Array is
     array (Positive range <>) of T;
end Custom_Arrays;