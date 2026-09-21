with Ada.Text_IO; use Ada.Text_IO;

package body Gen_Custom_Processing is

   procedure Init (R     : in out Rec;
                   Value :        T) is
   begin
      R.Comp := Value;
   end Init;

   procedure Process (R : in out Rec) is
   begin
      Proc (R.Comp);
   end Process;

   procedure Show (R : Rec) is
   begin
      Put_Line ("R.Comp = "
                & Image_T (R.Comp));
   end Show;

end Gen_Custom_Processing;