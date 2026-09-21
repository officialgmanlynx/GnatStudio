with Ada.Text_IO; use Ada.Text_IO;

package body Unconstrained_Types is

   procedure Reset (R : in out Simple_Record) is
      Zero_Not_Extended : constant
        Simple_Record := (Extended => False,
                          V        => 0);

      Zero_Extended : constant
        Simple_Record := (Extended => True,
                          V        => 0,
                          V_Float  => 0.0);
   begin
      Put_Line ("---- Reset: R'Constrained => "
                & R'Constrained'Image);

      if not R'Constrained then
         R := Zero_Extended;
      else
         if R.Extended then
            R := Zero_Extended;
         else
            R := Zero_Not_Extended;
         end if;
      end if;
   end Reset;

end Unconstrained_Types;