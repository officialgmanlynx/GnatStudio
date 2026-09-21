package Mutability is

   type T_Non_Mutable
     (L : Positive;
      M : Positive) is
     null record;

   type T_Mutable
     (L : Positive := 1;
      M : Positive := 2) is
     null record;

end Mutability;