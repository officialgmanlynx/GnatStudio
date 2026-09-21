package body Show_Record_Flow_Analysis is

   procedure Init (R : out Rec) is
   begin
      R.F1 := 0;
      R.F2 := 0;
      --  R is initialized
   end Init;

end Show_Record_Flow_Analysis;