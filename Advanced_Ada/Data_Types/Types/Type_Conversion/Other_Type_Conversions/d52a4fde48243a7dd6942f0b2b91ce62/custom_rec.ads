package Custom_Rec is

   type Rec is record
      X : Integer;
   end record;

   function To_Integer (R : Rec)
                        return Integer is
     (R.X);

end Custom_Rec;