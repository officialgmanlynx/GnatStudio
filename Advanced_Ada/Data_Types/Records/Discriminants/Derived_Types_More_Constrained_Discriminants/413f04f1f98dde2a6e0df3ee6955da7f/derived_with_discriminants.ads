package Derived_With_Discriminants is

   type T
     (L : Integer;
      M : Integer) is
     null record;

   type T_Derived_2
     (X : Natural;
      Y : Positive) is
     new T (L => X, M => Y);

end Derived_With_Discriminants;