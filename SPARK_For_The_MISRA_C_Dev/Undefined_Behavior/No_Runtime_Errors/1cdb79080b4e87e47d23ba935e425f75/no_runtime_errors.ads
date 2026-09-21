package No_Runtime_Errors is

   subtype Index_Range is Integer range 0 .. 100;

   type Nat_Array is array (Index_Range range <>) of Natural;

   procedure Update (A    : in out Nat_Array;
                     I, J : Index_Range;
                     P, Q : Positive)
   with
     Pre => I + J in A'Range;

end No_Runtime_Errors;