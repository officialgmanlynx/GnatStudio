package Simple_Recs is

   function Init (S : String;
                  I : Integer)
                  return Integer;

   type Rec is record
      A : Integer := Init ("A", 1);
      B : Integer := Init ("B", 2);
   end record;

end Simple_Recs;