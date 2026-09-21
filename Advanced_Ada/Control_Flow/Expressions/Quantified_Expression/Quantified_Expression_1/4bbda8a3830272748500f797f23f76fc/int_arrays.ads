package Int_Arrays is

   type Integer_Arr is
     array (Positive range <>) of Integer;

   function Is_Zero (A : Integer_Arr)
                     return Boolean is
      (for all I in A'Range => A (I) = 0);

   function Has_Zero (A : Integer_Arr)
                      return Boolean is
      (for some I in A'Range => A (I) = 0);

   procedure Display_Array (A    : Integer_Arr;
                            Name : String);

end Int_Arrays;