with Ada.Text_IO; use Ada.Text_IO;

package body Simple_Recs is

   function Init (S : String;
                  I : Integer)
                  return Integer is
   begin
      Put_Line (S & ": " & I'Image);
      return I;
   end Init;

end Simple_Recs;