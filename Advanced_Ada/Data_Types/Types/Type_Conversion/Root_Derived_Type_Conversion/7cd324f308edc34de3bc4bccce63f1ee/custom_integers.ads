package Custom_Integers is

   type Int is new Integer
     with Dynamic_Predicate => Int /= 0;

   function Double (I : Integer)
                    return Integer is
     (I * 2);

end Custom_Integers;