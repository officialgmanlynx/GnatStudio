with Ada.Text_IO; use Ada.Text_IO;

package body Registers is

   procedure Show (WR : Window_Register) is
   begin
      Put_Line ("WR = (Horizontal_Cnt => "
                & WR.Horizontal_Cnt'Image
                & ",");
      Put_Line ("      Vertical_Cnt   => "
                & WR.Vertical_Cnt'Image
                & ",");
      Put_Line ("      Refresh_Needed => "
                & WR.Refresh_Needed'Image
                & ")");
   end Show;

end Registers;