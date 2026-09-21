package Int_Arrays is

   type Integer_Arr is
     array (Positive range <>) of Integer;

   function Is_Zero (A : Integer_Arr)
                     return Boolean;

   function Has_Zero (A : Integer_Arr)
                      return Boolean;

   procedure Display_Array (A    : Integer_Arr;
                            Name : String);

end Int_Arrays;