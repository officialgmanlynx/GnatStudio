package Custom_Recs is

   --  Declaring a discriminant with an anonymous
   --  access type and a default value:
   type Rec (IA : access Integer :=
                    new Integer'(0)) is
   record
      I : Integer := IA.all;
   end record;

end Custom_Recs;