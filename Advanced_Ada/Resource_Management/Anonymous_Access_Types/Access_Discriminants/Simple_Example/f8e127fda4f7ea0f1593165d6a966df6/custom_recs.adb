with Ada.Text_IO; use Ada.Text_IO;

package body Custom_Recs is

   procedure Show (R : Rec) is
   begin
      Put_Line ("R.IA = "
                & Integer'Image (R.IA.all));
      Put_Line ("R.I  = "
                & Integer'Image (R.I));
   end Show;

end Custom_Recs;