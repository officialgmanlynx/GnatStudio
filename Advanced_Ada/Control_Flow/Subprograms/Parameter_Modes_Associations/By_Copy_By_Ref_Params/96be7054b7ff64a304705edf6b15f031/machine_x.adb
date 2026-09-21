with Ada.Text_IO;         use Ada.Text_IO;

with Check_Param_Passing;

package body Machine_X is

   procedure Update_Value
     (R  : in out Rec;
      AR :        System.Address)
   is
      procedure Show_Vars is
      begin
         Put_Line ("Global_R.A: "
                   & Integer'Image (Global_R.A));
         Put_Line ("R.A:        "
                   & Integer'Image (R.A));
      end Show_Vars;
   begin
      Check_Param_Passing (Formal => R'Address,
                           Actual => AR);

      Put_Line ("Incrementing Global_R.A...");
      Global_R.A := Global_R.A + 1;
      Show_Vars;

      Put_Line ("Incrementing R.A...");
      R.A := R.A + 5;
      Show_Vars;
   end Update_Value;

end Machine_X;