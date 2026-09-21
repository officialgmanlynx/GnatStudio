package Int_Arrays is

   type Integer_Arr is
     array (Positive range <>) of Integer;

   function Is_Zero (A : Integer_Arr)
                     return Boolean is
      (for all E of A => E = 0);

   function Has_Zero (A : Integer_Arr)
                      return Boolean is
      (for some E of A => E = 0);

end Int_Arrays;