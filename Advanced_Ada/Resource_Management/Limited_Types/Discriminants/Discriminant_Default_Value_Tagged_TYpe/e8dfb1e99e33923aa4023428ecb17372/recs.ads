package Recs is

   type LTT (L : Positive := 1;
             M : Positive := 2) is
     limited null record;

   function Init (L : Positive;
                  M : Positive)
                  return LTT is
     ((L => L, M => M));

   procedure Copy (From :        LTT;
                   To   : in out LTT);

end Recs;