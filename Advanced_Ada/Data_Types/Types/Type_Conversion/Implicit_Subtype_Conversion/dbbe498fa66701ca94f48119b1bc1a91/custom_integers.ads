package Custom_Integers is

   type Int is new Integer
     with Dynamic_Predicate => Int /= 0;

   subtype Sub_Int_1 is Integer
     with Dynamic_Predicate => Sub_Int_1 /= 0;

   subtype Sub_Int_2 is Sub_Int_1
     with Dynamic_Predicate => Sub_Int_2 /= 1;

end Custom_Integers;