package body Simple_Recs is

   procedure Copy
     (From :        Rec_Limited_Full;
      To   : in out Rec_Limited_Full)
   is
   begin
      To := From;
      --  ERROR: assignment is forbidden because
      --         Rec_Limited_Full is limited in
      --         its full view.
   end Copy;

   procedure Copy
     (From :        Rec_Nonlimited_Full;
      To   : in out Rec_Nonlimited_Full)
   is
   begin
      To := From;
      --  OK: assignment is allowed because
      --      Rec_Nonlimited_Full is
      --      nonlimited in its full view.
   end Copy;

end Simple_Recs;