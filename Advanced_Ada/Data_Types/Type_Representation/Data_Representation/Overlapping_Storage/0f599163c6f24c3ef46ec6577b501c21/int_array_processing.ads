package Int_Array_Processing is

   type Int_Array is
     array (Positive range <>) of Integer;

   procedure Show_Storage (X : Int_Array;
                           Y : Int_Array);

   procedure Process (X :     Int_Array;
                      Y : out Int_Array);

end Int_Array_Processing;