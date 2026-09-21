package Bad_Genetics is
   type Animal is (Ape, Bee, Cat, Dog);
   Mutant : Animal := Bee xor Dog;  --  ERROR
   pragma Assert (Mutant = Cat);
end Bad_Genetics;