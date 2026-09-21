package Show_Search_Array is

   type Array_Of_Positives is array (Natural range <>) of Positive;

   procedure Search_Array
     (A      :     Array_Of_Positives;
      E      :     Positive;
      Result : out Integer;
      Found  : out Boolean);

end Show_Search_Array;