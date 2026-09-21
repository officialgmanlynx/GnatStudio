package Bad_Hamlet is
   type Animal is (Ape, Bee, Cat);
   Answer : Boolean := 2 * Bee or not 2 * Bee; -- Illegal
end Bad_Hamlet;