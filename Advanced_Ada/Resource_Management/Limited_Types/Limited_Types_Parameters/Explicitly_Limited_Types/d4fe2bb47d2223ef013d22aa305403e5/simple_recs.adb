package body Simple_Recs is

   procedure Proc (R : in out Rec;
                   A :    out System.Address) is
   begin
      R.I := 0;
      A   := R'Address;
   end Proc;

end Simple_Recs;