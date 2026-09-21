package Custom_Recs is

   type Integer_Access is access Integer;

   type Rec (IA : Integer_Access
                    := new Integer'(0)) is
      --               ^^^^^^^^^^^^^^^
      --                default value
   record
      I : Integer := IA.all;
   end record;

   procedure Show (R : Rec);

end Custom_Recs;