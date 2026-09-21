package Init_Record is
   type Rec is record
      X, Y, Z : Integer;
   end record;
   R : Rec := (X => 1, others => <>);  --  ERROR, Y and Z not specified
end Init_Record;