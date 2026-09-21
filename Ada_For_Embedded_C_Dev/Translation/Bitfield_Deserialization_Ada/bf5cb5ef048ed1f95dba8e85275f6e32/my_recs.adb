with Ada.Text_IO; use Ada.Text_IO;

package body My_Recs is

   procedure To_Rec (B :     Bit_Field;
                     R : out Rec) is
      B_R : Rec
        with Address => B'Address, Import, Volatile;
   begin
      --  Assigning data from overlayed record B_R to output parameter R.
      R := B_R;
   end To_Rec;

   function To_Rec (B : Bit_Field) return Rec is
      R   : Rec;
      B_R : Rec
        with Address => B'Address, Import, Volatile;
   begin
      --  Assigning data from overlayed record B_R to local record R.
      R := B_R;

      return R;
   end To_Rec;

   procedure Display (R : Rec) is
   begin
      Put ("("  & Integer'Image (R.V) & ", "
           & (R.S) & ")");
   end Display;

end My_Recs;