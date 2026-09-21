package Custom_Recs is

   --  Declaring a discriminant with an anonymous
   --  access type:
   type Rec (IA : access Integer) is record
      I : Integer := IA.all;
   end record;

   procedure Show (R : Rec);

end Custom_Recs;