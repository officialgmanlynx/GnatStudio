with Ada.Text_IO; use Ada.Text_IO;

with P;           use P;

procedure Show_Simple_Reg is
   Default : constant Simple_Reg :=
               (S     => Ready,
                Error => False,
                V1    => 0);

   R : Simple_Reg := Default;
begin
   Put_Line ("R.S:  " & R.S'Image);

   R.V1 := 4;

   Put_Line ("R.V1: " & R.V1'Image);
end Show_Simple_Reg;