package Recs is

   type Priv_Info is private;

   type Priv_Rec (Info : Priv_Info) is
     private;
   --             ^^^^^^^^^^^^^^^^
   --  ERROR: cannot use private type
   --         in discriminant.

private

   type Priv_Info is record
     A : Positive;
     B : Positive;
   end record;

   type Priv_Rec (Info  : Priv_Info) is
     null record;

end Recs;