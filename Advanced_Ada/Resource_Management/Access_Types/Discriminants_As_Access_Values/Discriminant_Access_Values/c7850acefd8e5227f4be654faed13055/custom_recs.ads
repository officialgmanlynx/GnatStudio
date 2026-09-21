package Custom_Recs is

   --  Declaring an access type:
   type Integer_Access is access Integer;

   --  Declaring a discriminant with this
   --  access type:
   type Rec (IA : Integer_Access) is record

      I : Integer := IA.all;
      --          ^^^^^^^^^
      --  Setting I's default to use the
      --  designated value of IA:
   end record;

   procedure Show (R : Rec);

end Custom_Recs;