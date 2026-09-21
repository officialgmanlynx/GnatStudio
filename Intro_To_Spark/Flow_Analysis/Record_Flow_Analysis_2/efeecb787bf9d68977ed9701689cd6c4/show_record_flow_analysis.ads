package Show_Record_Flow_Analysis is

   type Rec is record
      F1 : Natural;
      F2 : Natural;
   end record;

   procedure Init (R : out Rec);
   procedure Init_F2 (R : in out Rec);

end Show_Record_Flow_Analysis;