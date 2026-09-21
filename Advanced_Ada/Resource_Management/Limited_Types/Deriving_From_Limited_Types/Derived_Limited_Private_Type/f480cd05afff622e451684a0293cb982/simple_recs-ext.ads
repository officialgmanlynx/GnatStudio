package Simple_Recs.Ext
  with Elaborate_Body is

  --  Rec_Derived is derived from Rec, which is a
  --  limited private type that is nonlimited in
  --  its full view.
  --
  --  Rec_Derived isn't explicitly limited.
  --  Therefore, it's nonlimited in the private
  --  part of Simple_Recs.Ext and its package
  --  body.
  --
  type Rec_Derived is new Rec;

end Simple_Recs.Ext;