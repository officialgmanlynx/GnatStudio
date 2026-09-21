package Simple_Integers is

   type Int is new Integer;

   subtype Int_Not_Zero is Int
     with Dynamic_Predicate => Int_Not_Zero /= 0;

end Simple_Integers;