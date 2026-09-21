package Simple_Recs.Child
is
   type Rec_Derived is new Rec;
   --  As for its parent, the
   --  partial view of Rec_Derived
   --  is limited, but the full view
   --  is nonlimited.

end Simple_Recs.Child;