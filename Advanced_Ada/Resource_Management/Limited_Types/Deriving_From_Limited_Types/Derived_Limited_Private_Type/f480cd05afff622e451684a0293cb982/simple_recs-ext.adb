package body Simple_Recs.Ext is

   procedure Test_Child_Limitedness is
      Dummy_1, Dummy_2 : Rec_Derived;
   begin
      --  Here, Rec_Derived is a nonlimited
      --  type because Rec is nonlimited in
      --  its full view.

      Dummy_2 := Dummy_1;
   end Test_Child_Limitedness;

end Simple_Recs.Ext;