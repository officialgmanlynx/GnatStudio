with Interfaces; use Interfaces;
package Unethical_Genetics is
   type Animal is (Ape, Bee, Cat, Dog);
   A      : constant array (Animal) of Unsigned_8 :=
              (Animal'Pos (Ape), Animal'Pos (Bee),
               Animal'Pos (Cat), Animal'Pos (Dog));
   Mutant : Animal := Animal'Val (A (Bee) xor A (Dog));
   pragma Assert (Mutant = Cat);
end Unethical_Genetics;