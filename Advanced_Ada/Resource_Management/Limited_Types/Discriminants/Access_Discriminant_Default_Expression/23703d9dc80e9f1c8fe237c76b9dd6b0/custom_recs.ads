package Custom_Recs is

   --  Specifying a default expression for
   --  an access discriminant:
   type Rec (IA : access Integer :=
                    new Integer'(0)) is limited
   record
      I : Integer := IA.all;
   end record;

end Custom_Recs;