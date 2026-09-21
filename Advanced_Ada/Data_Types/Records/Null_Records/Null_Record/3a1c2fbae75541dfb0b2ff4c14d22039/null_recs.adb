package body Null_Recs is

   function "+" (A, B : Null_Record)
                 return Null_Record
   is
      pragma Unreferenced (A, B);
   begin
      return (null record);
   end "+";

end Null_Recs;