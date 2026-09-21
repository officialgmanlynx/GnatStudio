package Simple_Recs is

   type Rec is null record;

   type Rec_Derived is limited new Rec;

end Simple_Recs;