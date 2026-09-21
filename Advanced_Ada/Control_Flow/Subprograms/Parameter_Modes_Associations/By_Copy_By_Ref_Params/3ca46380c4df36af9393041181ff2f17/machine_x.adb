with Check_Param_Passing;

package body Machine_X is

   procedure Update_Value
     (R  : in out Rec;
      AR :        System.Address)
   is
   begin
      R.A := R.A + 1;
      Check_Param_Passing (Formal => R'Address,
                           Actual => AR);
   end Update_Value;

   procedure Update_Value
     (RA  : in out Rec_Array;
      ARA :        System.Address)
   is
   begin
      RA.A := RA.A + 1;
      Check_Param_Passing (Formal => RA'Address,
                           Actual => ARA);
   end Update_Value;

   procedure Update_Value
     (R  : in out Tagged_Rec;
      AR :        System.Address)
   is
   begin
      R.A := R.A + 1;
      Check_Param_Passing (Formal => R'Address,
                           Actual => AR);
   end Update_Value;

end Machine_X;