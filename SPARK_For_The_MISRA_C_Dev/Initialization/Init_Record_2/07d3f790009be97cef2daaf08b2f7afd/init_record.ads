package Init_Record is
   type Rec is record
      X, Y, Z : Integer;
   end record;
   R : Rec := (X => 1, Y => 1, Z => 1, X => 2);  --  ERROR, X duplicated
end Init_Record;