with Gen_Custom_Recs;

package Custom_Recs is

    type Incomp;
    --  Incomplete type declaration!

   type Incomp_Access is access Incomp;

   --  Instantiating package using
   --  incomplete type Incomp:
   package Inst is new
     Gen_Custom_Recs
       (T        => Incomp,
        T_Access => Incomp_Access);
   subtype Rec is Inst.T_Rec;

   --  At this point, Rec (Inst.T_Rec) uses
   --  an incomplete type as the designated
   --  subtype of its discriminant type

   procedure Show (R : Rec) is null;

   --  Now, we complete the Incomp type:
   type Incomp (B : Boolean := True) is private;

private
   --  Finally, we have the full view of the
   --  Incomp type:
   type Incomp (B : Boolean := True) is
     null record;

end Custom_Recs;