package Float_Arrays is

   type Float_Array is array (Positive range <>) of Float;

   function Average (Data : Float_Array) return Float;

   pragma Inline (Average);

end Float_Arrays;