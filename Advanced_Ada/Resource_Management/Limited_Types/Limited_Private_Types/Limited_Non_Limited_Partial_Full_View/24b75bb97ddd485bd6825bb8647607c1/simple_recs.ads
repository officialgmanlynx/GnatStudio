package Simple_Recs is

   type Rec_Limited_Full is limited private;
   type Rec_Nonlimited_Full is limited private;

   procedure Copy
     (From :        Rec_Limited_Full;
      To   : in out Rec_Limited_Full);
   procedure Copy
     (From :        Rec_Nonlimited_Full;
      To   : in out Rec_Nonlimited_Full);

private

   type Rec_Limited_Full is limited record
      I : Integer;
   end record;

   type Rec_Nonlimited_Full is record
      I : Integer;
   end record;

end Simple_Recs;