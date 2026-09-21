package Recs is

   type TT (L : Positive := 1;
            M : Positive := 2) is
   --       ^^^^^^^^^^^^^^^^^
   --  ERROR: cannot assign default
   --         in discriminant of
   --         nonlimited tagged type.
     tagged private;

   type LTT (L : Positive := 1;
             M : Positive := 2) is
     tagged limited private;

private

   type TT (L : Positive := 1;
            M : Positive := 2) is
     tagged null record;

   type LTT (L : Positive := 1;
             M : Positive := 2) is
     tagged limited null record;

end Recs;