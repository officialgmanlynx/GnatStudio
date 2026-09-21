package body Show_Record_Flow_Analysis is

   procedure Init_F2
     (R : in out Rec) is
   begin
      R.F2 := 0;
   end Init_F2;

   procedure Init (R : out Rec) is
   begin
      R.F1 := 0;
      Init_F2 (R); -- R should be initialized before this call
   end Init;

end Show_Record_Flow_Analysis;