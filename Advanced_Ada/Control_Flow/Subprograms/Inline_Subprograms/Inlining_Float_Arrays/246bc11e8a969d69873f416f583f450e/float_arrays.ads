package Float_Arrays is

   type Float_Array is
     array (Positive range <>) of Float;

   function Average (Data : Float_Array)
                     return Float
     with Inline;

end Float_Arrays;