package Simple_Recs.Ext is

   type Rec_Derived is new
     Limited_IF with private;

private

   type Rec_Derived is new
     Limited_IF with null record;

end Simple_Recs.Ext;