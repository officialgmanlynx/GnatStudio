package Recs is

   type LTT (L : Positive := 1;
             M : Positive := 2) is
     limited private;

private

   type LTT (L : Positive := 1;
             M : Positive := 2) is
     limited null record;

end Recs;