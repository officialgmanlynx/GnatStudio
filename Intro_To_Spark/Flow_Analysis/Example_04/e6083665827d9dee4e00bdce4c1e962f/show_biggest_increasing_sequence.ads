package Show_Biggest_Increasing_Sequence is

   type Array_Of_Positives is array (Integer range <>) of Positive;

   function Size_Of_Biggest_Increasing_Sequence (A : Array_Of_Positives)
      return Natural;

end Show_Biggest_Increasing_Sequence;