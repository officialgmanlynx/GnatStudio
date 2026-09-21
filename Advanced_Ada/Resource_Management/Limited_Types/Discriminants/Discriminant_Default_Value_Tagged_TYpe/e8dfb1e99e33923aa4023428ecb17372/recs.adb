package body Recs is

   procedure Copy (From :        LTT;
                   To   : in out LTT) is
   begin
      To := Init (L => From.L,
                  M => From.M);
      --  ERROR: cannot assign to object of
      --         limited type

      To.L := From.L;
      To.M := From.M;
      --  ERROR: cannot change discriminants
   end Copy;

end Recs;