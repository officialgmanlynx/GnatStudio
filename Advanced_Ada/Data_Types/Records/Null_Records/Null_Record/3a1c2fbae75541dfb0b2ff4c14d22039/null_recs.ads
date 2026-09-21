package Null_Recs is

   type Null_Record is null record;

   function "+" (A, B : Null_Record)
                 return Null_Record;

end Null_Recs;