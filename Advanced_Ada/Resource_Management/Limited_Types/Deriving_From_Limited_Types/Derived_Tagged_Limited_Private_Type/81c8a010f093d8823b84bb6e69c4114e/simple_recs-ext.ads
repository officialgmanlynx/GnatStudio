package Simple_Recs.Ext is

   type Rec_Derived is new
     Tagged_Rec with private;

private

   type Rec_Derived is new
     Tagged_Rec with null record;

end Simple_Recs.Ext;