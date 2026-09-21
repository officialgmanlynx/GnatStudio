private with P;

package Data is

   --  ERROR: information from P
   --  isn't visible here

   type T2 is new P.T;

end Data;