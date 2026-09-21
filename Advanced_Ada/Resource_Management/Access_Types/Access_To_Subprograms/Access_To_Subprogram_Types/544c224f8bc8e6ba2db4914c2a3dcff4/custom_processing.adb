with Ada.Text_IO; use Ada.Text_IO;

package body Custom_Processing is

   procedure Init (R     : in out Rec;
                   Value :        Integer) is
   begin
      R.I := Value;
   end Init;

   procedure Process (R : in out Rec) is
   begin
      R.IP (R.I);
      --  ^^^^^^
      --  Calling procedure that we specified as
      --  the record's discriminant
   end Process;

   procedure Show (R : Rec) is
   begin
      Put_Line ("R.I = "
                & Integer'Image (R.I));
   end Show;

end Custom_Processing;